# Solidity Basics

### Why Solidity is Used for Smart Contracts

| Reason                             | Description                                                                                                     |
|------------------------------------|-----------------------------------------------------------------------------------------------------------------|
| **Turing-Complete Language**       | Solidity is a Turing-complete language, meaning it can perform any computation given enough resources, making it versatile for various smart contract applications. |
| **Designed for Ethereum**          | Solidity is specifically designed for the Ethereum Virtual Machine (EVM), ensuring seamless integration and optimal performance on the Ethereum blockchain. |
| **Statically Typed**               | Being statically typed, Solidity allows for early detection of errors during compilation, improving code reliability and reducing runtime errors. |
| **High-Level Syntax**              | The syntax of Solidity is similar to JavaScript, which makes it relatively easy for developers to learn and use. |
| **Extensive Support and Libraries**| Solidity has extensive libraries and developer tools that facilitate the creation, testing, and deployment of smart contracts. |
| **Active Community**               | Solidity has a large and active community, providing a wealth of resources, tutorials, and support for developers. |
| **Security Features**              | Solidity includes various security features like modifiers and built-in functions to help developers write secure code. |
## Ether, Wei, and Gas in Ethereum


#### Ether and Wei

In the Ethereum network, transactions are paid with a currency called **ether**. Ether is divisible into smaller units, with the smallest unit being called **wei**. The conversion between ether and wei is as follows:

- **1 ether = 1e18 wei** (10^18 wei)

This is similar to the relationship between rupees and paisa in the Indian currency system:

- **1 rupee = 100 paisa** (1e2 paisa)

#### Gas

Gas is a unit that measures the amount of computational work required to perform operations on the Ethereum network. Each transaction in Ethereum incurs a gas cost, which is paid in ether. The key aspects of gas are:

- **Gas Price**: The amount of ether you are willing to pay per unit of gas.
- **Gas Spent**: The total amount of gas used by a transaction.

The total cost of a transaction in ether is calculated as:

- **Total Cost = Gas Spent * Gas Price**

Transactions with higher gas prices have higher priority for inclusion in a block. Any unspent gas is refunded.

There are two upper bounds on the amount of gas you can spend:

- **Gas Limit**: The maximum amount of gas you are willing to use for your transaction, set by you.
- **Block Gas Limit**: The maximum amount of gas allowed in a block, set by the network.



## IDE Used for Solidity
Remix is an integrated development environment (IDE) for Ethereum smart contract development. It supports writing, testing, and deploying smart contracts using the Solidity language. Accessible via a web browser, Remix offers debugging, compilation, and deployment tools for Ethereum developers.
<br>Link for Remix ([Click Here](https://remix.ethereum.org/))

## Coding Contents

- [Hello World](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/HelloWorld.sol)
- [Data Types](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Datatypes.sol)
- [Variables](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Variables.sol)
- [Reading and Writing to a State Variable](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/ReadWrite.sol)
- [If-Else Conditions](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/IfElse.sol)
- [Looping Statements](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Loops.sol)
- [Mapping](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Mapping.sol)
- [Array](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Arrays.sol)
- [Enumeration](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Enumeration.sol)
- [Structures](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Struct.sol)
- [Functions](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Functions.sol)
- [View and Pure Functions](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/ViewAndPure.sol)
- [Error](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Errors.sol)
- [Modifiers](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Modifiers.sol)
- [Constructors](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Constructors.sol)
- [Inheritance](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Inheritance.sol)
- [Interface](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Interface.sol)
- [Payable](https://github.com/mdaseem03/smart-contracts/blob/main/solidity-basics/Payable.sol)
- Additional Topics will be added soon ...


## Other Resources
[Official Documentation](https://docs.soliditylang.org/en/v0.8.26/) <br>
[Solidity-By-Example](https://solidity-by-example.org/)

### Profile Views 
![](https://komarev.com/ghpvc/?username=mdaseem03&color=lightgrey&style=flat-square&label=VIEWS+COUNT)



## Author 👤
[@mdaseem03](https://github.com/mdaseem03)

## Connect at 💬
<a href="https://www.linkedin.com/in/mohammed-aseem%F0%9F%8E%96-11baa6217/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="cyberspartan" height="30" width="40" /></a>
<a href="https://www.instagram.com/mdaseem_03" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg" alt="karthithehacker" height="30" width="40" /></a>
