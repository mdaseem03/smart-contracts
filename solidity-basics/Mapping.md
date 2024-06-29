## Mapping

In Solidity, a mapping is a data structure that associates keys of a certain type with values of another type. It is somewhat analogous to hash tables or dictionaries in other programming languages. Let's break down the key aspects and usage of mappings in Solidity based on the provided example and additional explanations.

### Syntax and Declaration
Mappings are declared using the following syntax:
```solidity
mapping(keyType => valueType) public myMapping;
```
- `keyType`: Type of the keys used to access the mapping (can be any elementary type or bytes/string).
- `valueType`: Type of the values stored in the mapping (can be any type, including other mappings or arrays).

### Key Points about Mappings

1. **Initialization**: Mappings cannot be initialized directly outside of a function. Unlike arrays, you cannot assign initial values at the point of declaration.

2. **Access Specifier**: Mappings are typically declared with `public` visibility so that their values can be read from outside the contract.

3. **Storage Mechanism**: Mappings store data in a key-value pair format where each key is unique within the mapping. If a value is not explicitly set, accessing it returns a default value (zero for numeric types, empty for strings or arrays).

4. **Iteration Limitation**: Unlike arrays, mappings are not iterable in Solidity. This means you cannot loop through all keys or values directly within a mapping.

5. **Key Sensitivity**: Keys in mappings are case-sensitive. For example, "Key" and "key" are considered different keys.

### Example Contracts

Let's consider the provided Solidity contracts as examples:

#### Example 1: Simple Mapping
```solidity
contract Mapping { 
    mapping(string => uint) public favourites;

    function set(string memory _name, uint _favNum) public {
        favourites[_name] = _favNum;
    }

    function retrieve(string memory _name) public view returns (uint){
        return favourites[_name];
    }
}
```
Here, `favourites` is a mapping where each `string` key (person's name) is associated with a `uint` value (their favorite number).
- **Functions**:
  - `set(string memory _name, uint _favNum)`: Sets the favorite number for a given name.
  - `retrieve(string memory _name)`: Retrieves the favorite number associated with a name.

#### Example 2: Nested Mapping
```solidity
contract NestedMapping {
    mapping(string => mapping (string => string)) public India;

    function setCountry(string memory _state, string memory _city, string memory _landmark) public {
        India[_state][_city] = _landmark;
    }

    function getCountry(string memory _state, string memory _city) public view returns (string memory){
        return India[_state][_city];
    }
}
```
`India` is a nested mapping where:
  - The outer mapping uses `string` keys representing states in India.
  - The inner mapping uses `string` keys representing cities within each state, with each city mapped to a `string` value (a landmark in this case).

- **Functions**:
  - `setCountry(string memory _state, string memory _city, string memory _landmark)`: Sets a landmark for a city within a state.
  - `getCountry(string memory _state, string memory _city)`: Retrieves the landmark associated with a city in a state.


### Full Example Code
```solidity
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
```
