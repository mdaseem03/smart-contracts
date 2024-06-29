## Variables

In Solidity, variables can be categorized into three main types based on their scope and behavior:

1. **Local Variables**:
   - Local variables are declared inside functions and are only accessible within the function they are declared in.
   - They are not stored on the blockchain and exist only during the execution of the function.
   - Example:
     ```solidity
     function random() public pure returns(uint) { 
         uint var2 = 34; // Local Variable
         return var2;
     }
     ```

2. **State Variables**:
   - State variables are declared outside any function and are stored permanently on the blockchain.
   - They represent the state of the contract and its persistent storage.
   - State variables can be accessed by all functions within the contract and retain their values between function calls.
   - Example:
     ```solidity
     uint public var1 = 126; // State variable
     ```

3. **Global Variables**:
   - Global variables provide information about the blockchain and the current transaction.
   - They are predefined by Solidity and can be accessed within any function.
   - Some common global variables include:
     - `block`: Provides information about the current block.
       - `block.timestamp`: Current timestamp in seconds since the Unix epoch.
       - `block.number`: Current block number.
       - `blockhash(blockNumber)`: Hash of a specific block.
       - `block.coinbase`: Current miner's address.
       - `block.gaslimit`: Current block's gas limit.
       - `gasleft()`: Remaining gas available for the current transaction.
     - `msg`: Information about the current message (call) sent to the contract.
       - `msg.sender`: Address of the caller.
       - `msg.value`: Amount of wei sent with the message.
     - `tx`: Information about the current transaction.
       - `tx.gasprice`: Gas price specified by the sender of the transaction.
       - `tx.origin`: Address of the sender of the transaction.
   - Example:
     ```solidity
     uint public timestamp = block.timestamp;
     address public sender = msg.sender;
     uint public gaslimit = block.gaslimit;
     uint public gas_left = gasleft();
     ```

4. **Constants**:
   - Constants are variables whose values cannot be changed after initialization.
   - They are declared using the `constant` keyword (though in newer versions of Solidity, `constant` is implied and optional).
   - Constants are often named using uppercase letters for convention, but it's not mandatory.
   - They are useful for values that should not change during the contract's execution to save gas costs.
   - Example:
     ```solidity
     uint public constant VALUE = 123;
     ```

5. **Immutable Variables**:
   - Immutable variables are similar to constants but are initialized only once, typically in the contract constructor.
   - Once assigned a value, they cannot be changed.
   - They are also useful for values that should be set once and remain constant throughout the contract's lifetime.
   - Example:
     ```solidity
     uint public immutable IMM_VALUE;

     constructor(uint _imm_value) {
         IMM_VALUE = _imm_value;
     }
     ```

### Example Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


/* Variables are three types
- local --> declared inside a function and not stored on the blockchain
- state --> declared outside a function and stored on the blockchain
- global --> provides information about the blockchain
*/

contract Variables_Constants_Immutable{
    uint public var1 = 126; //State variable

    function random() public pure returns(uint){ 
        uint var2 = 34; //Local Variable
        return var2;

        }

        //List of Global Variables in Solidity
        uint public timestamp = block.timestamp; //Current timestamp in seconds since uinx epoch
        address public sender = msg.sender; // Current caller of the contract
        uint public block_number = block.number; // Current Block Number
        bytes32 public block_hash = blockhash(block_number);//Hash of the given block number
        address public current_miner = block.coinbase; //Currrent Miner of the block
        uint public gaslimit = block.gaslimit; // Current Gaslimit of the block
        uint public gas_left = gasleft(); //Remaining gas in block
        uint value = msg.value; //Number of wei sent with the message
        uint gasprice = tx.gasprice; // Gas price of the transaction
        address origin = tx.origin; // Sender of the transaction

        //Docs: https://docs.soliditylang.org/en/v0.8.19/units-and-global-variables.html#block-and-transaction-properties

        // Constants are variables that cannot be modified
        // Its a conventional way to declare constant variables using UPPERCASE but not compulsory
        //Using constant variables saves gas cost
        uint public constant VALUE = 123;

        //Immutable variables are like constants. They can be initialized in a constructor() and cannot be modified afterwards
        uint public immutable IMM_VALUE;

        constructor(uint _imm_value){
            IMM_VALUE = _imm_value;
        }

        
}
```
