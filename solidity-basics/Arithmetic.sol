// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// REFERENCE FILE FOR Interface.sol

contract Arithmetic{
     function add(uint _a, uint _b) public pure returns(uint){
        return _a + _b;
     }
    function sub(uint _a, uint _b) external pure returns(uint){
        return _a - _b;
    }
    function mul(uint _a, uint _b) external pure returns(uint){
        return _a * _b;
    }
    function div(uint _a, uint _b) external pure returns(uint){
        return _a / _b;
    }
    function mod(uint _a, uint _b) external pure returns(uint){
        return _a % _b;
    }
}