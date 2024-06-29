## If - Else Condition

In Solidity, as in many programming languages, you can use conditional statements (`if`, `else if`, `else`) and the ternary operator (`?:`) to control the flow of your smart contract logic based on conditions.

### Conditional Statements (`if`, `else if`, `else`)

#### Syntax and Usage:
- **if statement**: The `if` statement evaluates a condition and executes a block of code if the condition is true.
  
  ```solidity
  if (condition) {
      // code to execute if condition is true
  }
  ```

- **else if statement**: The `else if` statement allows you to check multiple conditions sequentially. If the preceding `if` condition is false, it checks the next condition.
  
  ```solidity
  if (condition1) {
      // code to execute if condition1 is true
  } else if (condition2) {
      // code to execute if condition2 is true and condition1 is false
  }
  ```

- **else statement**: The `else` statement is optional and provides a default block of code to execute when none of the preceding conditions are true.
  
  ```solidity
  if (condition1) {
      // code to execute if condition1 is true
  } else if (condition2) {
      // code to execute if condition2 is true and condition1 is false
  } else {
      // code to execute if neither condition1 nor condition2 is true
  }
  ```

#### Example:
```solidity
function largest(uint _a, uint _b, uint _c) public returns (string memory) {
    if (_a > _b && _a > _c) {
        largest_num = string.concat(Strings.toString(_a), " is the largest");
    } else if (_b > _a && _b > _c) {
        largest_num = string.concat(Strings.toString(_b), " is the largest");
    } else {
        largest_num = string.concat(Strings.toString(_c), " is the largest");
    }
    return largest_num;
}
```

### Ternary Operator (`?:`)

#### Syntax and Usage:
The ternary operator in Solidity (and in many programming languages) is a concise way to write conditional expressions with three operands: a condition followed by a question mark (`?`), an expression to execute if the condition is true, a colon (`:`), and an expression to execute if the condition is false.

```solidity
condition ? expression_if_true : expression_if_false
```

- `condition`: The boolean expression that determines which of the other two expressions is executed.
- `expression_if_true`: The expression evaluated if the condition is true.
- `expression_if_false`: The expression evaluated if the condition is false.

#### Example:
```solidity
function ternary(uint _a, uint _b) public returns (string memory) {
    uint large = (_a > _b) ? _a : _b;
    largest_num = string.concat(Strings.toString(large), " is the largest");
    return largest_num;
}
```

In this example:
- `(_a > _b) ? _a : _b` checks if `_a` is greater than `_b`. If true, `_a` is assigned to `large`; otherwise, `_b` is assigned to `large`.

Both conditional statements and the ternary operator are essential tools for controlling program flow in Solidity contracts, allowing you to write logic that responds dynamically to different conditions and inputs.

### Example Code
```solidity
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
```
