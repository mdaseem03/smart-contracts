## Read and Write State Variables

### Reading State Variables
Reading state variables is straightforward and does not require a transaction. In Solidity, functions marked with view or pure are designated as read-only functions. These functions do not modify the state of the contract and are executed locally without sending any transactions to the blockchain. The `get()` function in the example is marked with `view`, indicating that it does not modify the state and only reads the value of `val`.

### Writing State Variables
Writing (or updating) state variables involves changing the data stored on the blockchain, which requires sending a transaction. Transactions in Ethereum are transactions that modify the blockchain state, such as transferring tokens, deploying contracts, or updating state variables in a contract. The `set()` function in the example above modifies the state variable `val` by assigning it a new value `_val`. This function is not marked `view`or `pure`, indicating that it changes the state and requires a transaction to be executed.

### Transaction Fees
When you write (update) a state variable like `val`, you incur a transaction fee, which is paid in gas. Gas is a measure of computational effort required to execute operations on the Ethereum Virtual Machine (EVM). The complexity and cost of the transaction depend on factors such as the amount of data being stored or updated, the computational steps involved, and the current gas price set by the user.


### Example Code
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*  To write or update a state variable you need to send a transaction.
    Whereas, you can read state variables, for free, without any transaction fee.
*/
contract ReadWrtie{

uint val; // state variable

function set(uint _val) public {
    val = _val; // This function takes a transaction fee since you are writing to a state variable
}

function get() public view returns(uint){
    return val; // This function dont take any transaction fee since you are only reading a state variable
}

}
```
