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