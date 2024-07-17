//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* 
- Getter functions can be declared view or pure.
- View function declares that no state will be changed.
- Pure function declares that no state variable will be changed or read.
- Let's understand by looking the examples
*/

contract Sample{

    uint num; //State variable

    function viewFunction(uint _num) public view returns (uint) {
        return num + _num; 
        // In this function we haven't changed the state variable
        // We have only read the state variable 
        // Incase if we add,
        // num = _num (THIS WILL THROW ERROR)
    }

    function pureFunction(uint _num) public pure returns (uint){
        // return num + _num; (THIS WILL THROW ERROR)
        // Since pure function can't read and change state variables
        // We can only change and modify the local variables
        _num = 2;
        return _num;

    }
}