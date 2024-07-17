// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
- A constructor is an optional function that is executed upon contract creation.
- A constructor can be either public or internal.
- A internal constructor marks the contract as abstract.
- In case, no constructor is defined, a default constructor is present in the contract.
*/

contract Constructor{
address owner;
constructor() /*Constructor*/ {
    owner = msg.sender;
}

}

//Constructors can also have parameters

contract Test{
    uint num;
    constructor(uint _num) {
        num = _num;
    }
}

// In case, base contract have constructor with arguments, each derived contract have to pass them.
// Base constructor can be initialized directly using following way 

contract Base{
    uint num;
    constructor(uint _num){
        num = _num;
    }
    function get() public view returns(uint){
        return num;
    }
}

contract Derived is Base (10) {
    constructor(){}
}

// Or else Base can be derived indirectly like this
contract Derived2 is Base{
    constructor(uint _val) Base(_val){}
}

// If derived contract is not passing argument(s) to base contract constructor then derived contract will become abstract.
// Abstract Contract is one which contains at least one function without any implementation. 
