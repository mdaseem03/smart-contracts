## Loops

In Solidity, loops are essential control structures that allow developers to repeat a block of code multiple times based on certain conditions. The three types of loops supported are `for`, `while`, and `do-while`.

### 1. **For Loop**

```solidity
for (initialization; condition; increment/decrement) {
    // code to be executed repeatedly
}
```
- **Initialization**: Initializes a variable before the loop begins.
- **Condition**: Specifies the condition that must be true for the loop to continue executing.
- **Increment/Decrement**: Updates the loop control variable after each iteration.

**Example**:
```solidity
for(uint _i = 0; _i <= 10; _i = _i + 2) {
    // Code inside the loop
}
```

### 2. **While Loop**

```solidity
while (condition) {
    // code to be executed repeatedly
}
```
**Condition**: Similar to `for` loop, specifies the condition that must be true for the loop to continue.

### 3. **Do-While Loop**

```solidity
do {
    // code to be executed repeatedly
} while (condition);
```
Unlike the `while` loop, the `do-while` loop executes the code block first and then checks the condition.

**Example**:
```solidity
uint _i = 0;
do {
    // Code inside the loop
    _i = _i + 2;
} while (_i <= 10);
```
The loop body is executed at least once, even if the condition is initially false.



### Considerations:

- **Gas Consumption**: Be cautious with loops as they can potentially consume a lot of gas, especially if the number of iterations is high or variable.
- **Infinite Loops**: Always ensure there's a mechanism (like a break condition or gas limit) to prevent infinite loops.
- **Array Operations**: Ensure array operations inside loops are efficient, especially when dealing with large arrays or loops with high iteration counts.

### Example Code
```solidity
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
```
