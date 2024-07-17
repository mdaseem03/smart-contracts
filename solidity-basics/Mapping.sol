// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* 
- Mapping is similar to arrays but stores values to its corresponding key and not to index number like arrays
- Syntax: mapping(key => value) <access specifier> <name>;
- The key can be any built-in value type, bytes, string, or any contract.
- value can be any type including another mapping or an array.
- Mappings are not iterable
- Keys are case sensitive
*/

contract Mapping { 
    mapping(string => uint) public favourites; // Mapping to store favourite numbers of persons
    //Note: You can't initialize values to Mapping outside function
    // So let's create set() to initialize values

    function set(string memory _name, uint _favNum) public {
        favourites[_name] = _favNum;
    }

    function retrieve(string memory _name) public view returns (uint){
        return favourites[_name];
    }
}

contract NestedMapping{
    // Nested mappings are used to store mappings within mappings.
    // The first level key refers to the first level key of the first level mapping, 
    // while the second level key refers to the second level key of the second level mapping.
    mapping(string => mapping (string => string)) public India;

    function setCountry(string memory _state, string memory _city, string memory _landmark) public {
        India[_state][_city] = _landmark;
    }

    function getCountry(string memory _state, string memory _city) public view returns (string memory){
        return India[_state][_city];
     }
}


