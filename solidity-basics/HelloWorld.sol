// SPDX-License-Identifier: MIT 
//Above statement is to provide License information of our contract
// For more about Licenses : Visit https://spdx.org/licenses/

pragma solidity ^0.8.0; // This line is to mention the compiler version. ^0.8.0 states that it can work in compiler 0.8.0 and above versions
// we can also use >, >=, <, <= to define the version. 
//For Eg: pragma solidity >0.5.0 <=0.6.0 --> is written to define that it work in compiler above 0.5.0 and less than or equal to 0.6.0

contract HelloWorld{

  string public welcome = "Hello Wolrd";

  uint public count;
  //Takes input from user for count variable
  function get(uint _count) public {
    count = _count;
  }

  //Increments the count value by the given number
  function inc(uint _num) public returns(uint){
    count += _num;
    return count;
  }

  //Decrements the count value by the given number
  function dec(uint _num) public returns (uint){
    count -= _num;
    return count;
  }
}
 
  