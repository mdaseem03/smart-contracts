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