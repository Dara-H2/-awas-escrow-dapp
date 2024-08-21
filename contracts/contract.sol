// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;git 

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Escrow is Ownable, ReentrancyGuard {
    struct Deposit {
        uint256 amount;
        address payer;
        address payee;
        uint256 releaseTime;
    }

    mapping(uint256 => Deposit) public deposits;
    uint256 public depositCount;

    function createDeposit(address _payee, uint256 _releaseTime) external payable nonReentrant {
        require(msg.value > 0, "Deposit value must be greater than zero");
        require(_releaseTime > block.timestamp, "Release time must be in the future");

        deposits[depositCount] = Deposit({
            amount: msg.value,
            payer: msg.sender,
            payee: _payee,
            releaseTime: _releaseTime
        });

        depositCount++;
    }

    function releaseFunds(uint256 _depositId) external nonReentrant {
        Deposit storage deposit = deposits[_depositId];
        require(block.timestamp >= deposit.releaseTime, "Funds cannot be released yet");
        require(msg.sender == deposit.payee, "Only the payee can release the funds");

        uint256 amount = deposit.amount;
        deposit.amount = 0;
        payable(deposit.payee).transfer(amount);
    }
}
