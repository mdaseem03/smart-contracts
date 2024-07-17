// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
- Interfaces are the same as abstract contracts created by using an interface keyword
- Interfaces define a standard set of functions that any implementing contract must provide. 
- By instantiating the contract that directly implements the interface, 
- you ensure that the deployed contract conforms to these expected function signatures

Interface
* cannot have any functions implemented
* can inherit from other interfaces
* all declared functions must be external
* cannot declare a constructor
* cannot declare state variables

- Conventional way of naming intface is to have prefix I in it
*/

interface IArithmetic{
    function add(uint _a, uint _b) external returns(uint);
    function sub(uint _a, uint _b) external returns(uint);
    function mul(uint _a, uint _b) external returns(uint);
    function div(uint _a, uint _b) external returns(uint);
    function mod(uint _a, uint _b) external returns(uint);   
}

contract Call{
    
    IArithmetic public obj;

    // Provide the address of the contract that implements the IArithmetic interface. [REFER Arithmetic.sol]
    // Deploy Arithmetic.sol, copy its contract address, and give it as _contract_address while deploying Call.

    constructor(address _contract_address) {
    
        obj = IArithmetic(_contract_address);
    }
    uint public sum;
    uint public diff;
    uint public prod;
    uint public quo;
    uint public rem;

    function getSum() external returns (uint) {
        sum = obj.add(10, 20);
        return sum;
    }
    
    function getDiff() external returns (uint) {
        diff = obj.sub(20, 10);
        return diff;
    }
    
    function getProd() external returns (uint) {
        prod = obj.mul(10, 20);
        return prod;
    }
    
    function getQuo() external returns (uint) {
        quo = obj.div(20, 10);
        return quo;
    }
    
    function getRem() external  returns (uint) {
        rem = obj.mod(10, 20);
        return rem;
    }
    
}

