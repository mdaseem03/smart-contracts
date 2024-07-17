// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
- In Solidity a function is generally defined by using the function keyword, 
- followed by the name of the function which is unique and does not match with any of the reserved keywords. 
- A function can also have a list of parameters containing the name and data type of the parameter.
- The return value of a function is optional but in solidity, 
- the return type of the function is defined at the time of declaration.
- Function in solidity cannot have map as arguement or as a return type
- Syntax: 

function function_name(parameter_list) scope returns(return_type) {
       // block of code
}
*/

contract Functions{
    // Functions can return multiple values.
    function returnMany() public pure returns (uint256, bool, uint256) {
        return (1, true, 2);
    }

    // Return values can be named.
    function named() public pure returns (uint256 x, bool b, uint256 y) {
        return (1, true, 2);
    }

    // Return values can be assigned to their name.
    // In this case the return statement can be omitted.
    function assigned() public pure returns (uint256 x, bool b, uint256 y) {
        x = 1;
        b = true;
        y = 2;
    }
    // Can use array for output
    uint256[] public arr;

    function arrayOutput() public view returns (uint256[] memory) {
        return arr;
    }
    // We can also use parameters and take it as inputs to use it inside functions
    // Types like string, arrays, struct needs to defined as memory while using in functions
    // It's conventional way to name parameter by prefinxing it with an _
    string name;
    function yourname(string memory _name) public {
        name = _name;
    }
}