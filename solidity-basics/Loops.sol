// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Solidity supports following Loops:
- for
- while
- do while
*/

contract Loops{

uint[] public a;

//for loop
function for_loop() public returns (uint[] memory) {  

    for(uint _i=0; _i<=10; _i=_i+2){ //for(intitalizing variable; checks condition; incrementing value)
        a.push(_i);
    }
    return a;
}

function while_loop() public returns (uint[] memory) {
    uint _i = 0;
    while(_i<=10) {
        a.push(_i);
        _i = _i+2;
    }
    return a;
}

function do_while_loop() public returns (uint[] memory) {
    uint _i = 0;
    do { 
        a.push(_i); 
        _i = _i+2; 
    } 
    while(_i<=10); 
    return a;
}
}
