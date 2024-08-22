Here is the formatted version of the README file with proper markdown syntax. You can copy and paste it directly into your `README.md` file.

# AWAS Escrow DApp

This project is a decentralized escrow application built on Ethereum using Solidity smart contracts. It allows users to securely deposit funds, which are held in escrow until a predefined release date. The application uses the Truffle framework for development and testing, and integrates OpenZeppelin contracts for security.

## Features

- **Escrow Smart Contract**: Allows users to deposit funds securely until a specified release time.
- **Payee Controlled Release**: Only the designated payee can release the funds after the specified time has passed.
- **Security**: Built with OpenZeppelin's ReentrancyGuard and Ownable contracts to ensure secure and owner-managed funds.
- **Truffle Development Framework**: Uses Truffle for easy smart contract development, testing, and deployment.
- **Ganache for Local Development**: Simulate a blockchain environment locally using Ganache.

## Technologies Used

- **Solidity**: Smart contract programming language.
- **Truffle**: Development environment for Ethereum.
- **Ganache**: Personal blockchain for Ethereum development.
- **OpenZeppelin**: Library for secure smart contract development.
- **JavaScript**: For testing and frontend interaction.

## Getting Started

### Prerequisites

To run this project, you'll need:

- [Node.js](https://nodejs.org/) (v20.11.1 or later)
- [Truffle](https://www.trufflesuite.com/truffle)
- [Ganache](https://www.trufflesuite.com/ganache) (CLI or UI)
- [MetaMask](https://metamask.io/) or another Ethereum wallet for interacting with the DApp

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/awas-escrow-dapp.git
   cd awas-escrow-dapp
   ```

2. **Install dependencies:**

   ```bash
   npm install
   ```

3. **Compile the smart contracts:**

   ```bash
   truffle compile
   ```

4. **Start Ganache:**

   Run Ganache either through the CLI:

   ```bash
   npx ganache-cli
   ```

   Or through the Ganache UI.

5. **Migrate the smart contracts to Ganache:**

   ```bash
   truffle migrate
   ```

6. **Run tests:**

   ```bash
   truffle test
   ```

### Project Structure

- **contracts/**: Contains the Solidity smart contracts.
- **migrations/**: Contains migration scripts for deploying the contracts.
- **test/**: Contains JavaScript tests for the smart contracts.
- **truffle-config.js**: Configuration file for Truffle.

### Using the DApp

1. After deploying the contracts, interact with the escrow contract using the Truffle console or a frontend interface.
2. To interact with the smart contract via the console:

   ```bash
   truffle console
   ```

   Then, use JavaScript commands to interact with the deployed contract. For example:

   ```javascript
   const escrow = await Escrow.deployed();
   await escrow.createDeposit("payee_address", releaseTime, { value: web3.utils.toWei("1", "ether"), from: "payer_address" });
   ```

3. Optionally, build a frontend UI to interact with the contract. You can use tools like React, Web3.js, and MetaMask for integration.

### Security

This project uses OpenZeppelin's security libraries:

- **ReentrancyGuard**: Prevents reentrancy attacks on functions that deal with transferring funds.
- **Ownable**: Ensures that only the contract owner can perform certain sensitive actions.

### Contributions

Contributions to this project are welcome. If you encounter any issues or have ideas for improvement, please feel free to open an issue or submit a pull request.

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

### Acknowledgments

- Thanks to the OpenZeppelin team for their security libraries.
- The Truffle team for providing a robust development environment.
- The Ethereum community for ongoing support and development resources.
