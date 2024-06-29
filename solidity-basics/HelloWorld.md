## Hello World

### SPDX-License-Identifier

The SPDX-License-Identifier is a special comment placed at the beginning of a Solidity file to indicate the licensing terms under which the contract is distributed. SPDX (Software Package Data Exchange) is a standard format for communicating licenses and other metadata about software packages.

(For more about Licenses : Visit https://spdx.org/licenses/)


```solidity
// SPDX-License-Identifier: MIT
```
- This line states that the contract is licensed under the MIT license. 
- The `MIT` license is a permissive open-source license that allows software to be freely used, modified, and distributed.

### Pragma Solidity

The `pragma solidity` statement is used to specify the version of the Solidity compiler that should be used to compile the contract. It's placed immediately after the SPDX-License-Identifier comment.


```solidity
pragma solidity ^0.8.0;
```
- `pragma solidity` is followed by a version identifier (`^0.8.0` in this case).
- The `^` symbol indicates that the contract is compatible with version 0.8.0 and any higher compatible version up to (but not including) 0.9.0.
- You can also use other operators (`>`, `>=`, `<`, `<=`) to specify exact or range-based compiler versions. For example:
  - `pragma solidity >=0.5.0 <0.6.0;` specifies compatibility with versions greater than or equal to 0.5.0 and less than 0.6.0.

### Example Code
```solidity
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
```

 
  
