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