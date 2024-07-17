// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import {Strings} from "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/483fc3f1f89ef6eb0803d578a4a17346d94359f7/contracts/utils/Strings.sol";

/*  Solidity supports conditional statements like
- if
- else if
- else

It also supports ternary operator (?:)
*/

contract IfElse{
    
    string public largest_num;

    //Example to find largest number using if, else if and else
    function largest(uint _a, uint _b, uint _c) public returns(string memory) {
        
        if(_a > _b && _a > _c){
            largest_num = string.concat(Strings.toString(_a), " is the largest");
            return largest_num;
        }
        else if(_b > _a && _b > _c){
            largest_num = string.concat(Strings.toString(_b), " is the largest");
            return largest_num;
        }
        else{
            largest_num = string.concat(Strings.toString(_c), " is the largest");
            return largest_num;
        }

}
    // Example to find largest number using ternary operator
    function ternary(uint _a, uint _b) public returns(string memory) {
        uint large = (_a > _b ) ? _a : _b;
        largest_num = string.concat(Strings.toString(large), " is the largest");
        return largest_num;
}
}
