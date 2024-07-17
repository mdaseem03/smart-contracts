// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
- An error will undo all changes made to the state during a transaction.
- You can throw an error by calling require, revert or assert.
- require is used to validate inputs and conditions before execution. [Syntax: require(bool condition) [or] require(bool condition, string memory reason)]
- revert is similar to require. See the code below for details. [Syntax: revert(string reason) [or] revert()]
- assert is used to check for code that should never be false. Failing assertion probably means that there is a bug. [Syntax: assert(bool condition)]
*/

contract Errors{
    
    uint balance = 10;

    function using_revert() public view{
        uint _minbalance = 50;
        if (balance < _minbalance){
            revert("Minimum Balance Required for Transactions is: 50 wei");// 1 ether = 10^18 wei
        }
    }

    function using_require() public view{
        // for require(), we don't need if condition. We can directly check the condition inside require()
        uint _minbalance = 50;
        require(balance > _minbalance, "Minimum Balance Required for Transactions is: 50 wei");
        // If condition inside require is false, then the message is printed
    }

    function using_assert() public view {
        // assert is also similar to require but won't display any messages or reason for error
        uint _minbalance = 50;
        assert(balance > _minbalance);
    }
}