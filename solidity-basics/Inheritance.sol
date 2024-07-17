// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
- Inheritance is a way to extend functionality of a contract.
- Solidity supports single, multiple, hierarcical and multilevel inheritance.
- A derived contract can access all non-private members including internal methods and state variables. 
- We can call a super contract's function using super keyword or using super contract name.
- Function in parent contract that is going to be overridden by a child contract must be declared as virtual.
- Function in child contract that is going to override a parent function must use the keyword override.
- Order of inheritance is important.
- You have to list the parent contracts in the order from “most base-like” to “most derived”
*/

/* Graph of inheritance for below example
    A
   / \
  B   C
 / \ /
F  D,E

*/

contract A{
    function foo(uint _a) public pure virtual returns (uint) {
        return _a + 1;
    }
}

// Contracts inherit other contracts by using the keyword 'is'.
contract B is A {
    // Override A.foo()
    function foo(uint _b) public pure virtual override returns (uint) {
        return _b + 2;
    }
}

contract C is A {
    // Override A.foo()
    function foo(uint _c) public pure virtual override returns (uint) {
        return _c + 3;
    }
}

// Contracts can inherit from multiple parent contracts.
// When a function is called that is defined multiple times in
// different contracts, parent contracts are searched from
// right to left, and in depth-first manner.

contract D is B, C {
    // D.foo() returns _d + 3
    // since C is the right most parent contract with function foo()
    function foo(uint _d) public pure override(B, C) returns (uint) {
        return super.foo(_d);
    }
}

contract E is C, B {
    // E.foo() returns _e + 2
    // since B is the right most parent contract with function foo()
    function foo(uint _e) public pure override(C, B) returns (uint) {
        return super.foo(_e);
    }
}

contract F is A, B {
    function foo(uint _f) public pure override(B, A) returns (uint) {
        return super.foo(_f);
    }
}


//Function overriding is allowed provided function signature remains same.
// In case of difference of output parameters, compilation will fail.
/* 
Example: 
contract F is A, B {
    function foo(string memory _f) public pure override(B, A) returns (uint) {
        return super.foo(_f); // Here base class accepts only uint, not string
    }
}
*/

// - Unlike functions, state variables cannot be overridden by re-declaring it in the child contract.
// Let's learn how to correctly override inherited state variables.

contract Base{
    string public name = "Contract Base";

    function getName() public view returns (string memory) {
        return name;
    }
}

// Shadowing is disallowed in Solidity 0.6
// This will not compile
// contract Invalid is Base {
//     string public name = "Contract Invalid";
// }

contract Derived is Base {
    // This is the correct way to override inherited state variables.
    constructor() {
        name = "Contract Derived";
    }

    // Dervied.getName returns "Contract Derived"
}