## Array

In Solidity, arrays are a fundamental data structure used to store collections of elements of the same type. They can be categorized into two main types based on their size:

### 1. Fixed-size Arrays
Fixed-size arrays have a predefined length that cannot be changed after initialization. Here's how you declare and use them:

```solidity
uint[4] fixedArray;  // Declaration of a fixed-size array of type uint with length 4

// Initializing a fixed-size array
uint[4] fixedArray = [10, 20, 30, 40];

// Accessing elements
uint element = fixedArray[index];

// Returning a fixed-size array from a function (using memory keyword)
function getFixedArray() public view returns (uint[4] memory) {
    return fixedArray;
}
```

Key points:
- Elements are accessed using zero-based indexing (`fixedArray[0]` to `fixedArray[3]` in the example above).
- You can return a fixed-size array from a function by specifying `memory` in the return type.

### 2. Dynamic Arrays
Dynamic arrays can grow or shrink in size during execution. They are initialized without a predefined size and can change length as elements are added or removed:

```solidity
uint[] dynamicArray;  // Declaration of a dynamic array of type uint

// Initializing a dynamic array
uint[] dynamicArray = [10, 20, 30];

// Accessing elements
uint element = dynamicArray[index];

// Adding elements
dynamicArray.push(40);

// Returning a dynamic array from a function
function getDynamicArray() public view returns (uint[] memory) {
    return dynamicArray;
}

// Removing elements
dynamicArray.pop();  // Removes the last element
delete dynamicArray[index];  // Deletes the element at index
delete dynamicArray;  // Deletes the entire array
```

Key points:
- Elements are accessed and modified similarly to fixed-size arrays.
- Dynamic arrays use `push()` to add elements and `pop()` to remove the last element.
- You can delete individual elements with `delete dynamicArray[index]` or the entire array with `delete dynamicArray`.

### Memory Arrays
Arrays can also be declared in memory, which means they are temporary and exist only during the execution of a function. This is useful for managing arrays without storing them permanently on the blockchain:

```solidity
function memoryArray() public pure {
    uint[] memory tempArray = new uint[](5);  // Declaration of a memory array
    // Operations on tempArray
}
```

Key points:
- Memory arrays can only be dynamic (not fixed-size).
- They are used for temporary storage within functions marked `pure` or `view`.


### Full Example Code
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
- Array can have a compile-time fixed size or a dynamic size
- Fixed Szie Arrays: The size of the array should be predefined. The total number of elements should not exceed the size of the array
- Dynamic Size Arrays: The size of the array is not predefined when it is declared. As the elements are added the size of array changes and at the runtime, the size of the array will be determined.
*/
contract Arrays{
    uint[4] fix = [10, 20, 30, 40];
    uint[] dynamic ;

    function retrieve() public view returns (uint[4] memory){
        // We can use return statement to return an array
        // This can be performed only in fixed arrays and not in Dynamic arrays
        return fix;
    }

    function addElement(uint _val) public {
        //push() appends value to array
        // And increases the length of array by 1
        dynamic.push(_val); 
    }

    function lengtOfArray() public view returns (uint){
        //array.length will give the length of the array
        return dynamic.length;
    }

    function getArray(uint _index) public view returns (uint){
        // We can use this function to get the element at some index 
        return dynamic[_index];
    }

    function removeLastElement() public {
        dynamic.pop(); 
        //pop() deletes the last element of array
        // And decreases the length by 1 
    }

    function deleteElementAt(uint _index) public {
        delete dynamic[_index];
        //delete removes element at _index from the array 
         // And decreases the length by 1 
    }

    function deleteArray() public{
        delete dynamic ;
        // Delete the array
    }

    function memoryArray() public pure{
        // In memory, only fixed arrays can be created
        uint[] memory arr = new uint[](5);
    }   

}
```
