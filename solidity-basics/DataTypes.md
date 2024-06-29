## Data Types

### 1. bool

`bool` stores a boolean value, which can either be `true` or `false`.
  ```solidity
  bool public boo = true;
  ```
  Here, `boo` is a public state variable initialized to `true`.

### 2. uint

 `uint` (unsigned integer) stores positive integers including zero.
```solidity
  uint public a = 15;
  ```
  Here, `a` is a public state variable of type `uint` initialized to `15`.

### 3. int

 `int` stores signed integers, which can be positive or negative numbers. 
  ```solidity
  int public b = -30;
  ```
  Here, `b` is a public state variable of type `int` initialized to `-30`.

### 4. address

 `address` stores a 20-byte Ethereum address. 
  ```solidity
  address public account = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
  ```
  Here, `account` is a public state variable storing the Ethereum address `0x5B38Da6a701c568545dCfcB03FcB875f56beddC4`.

### 5. bytes

 `bytes` types are dynamic arrays of bytes, where each byte can hold values from `0x00` to `0xff`. 
  ```solidity
  bytes1 public bytedata = 0xff; // stores a single byte, 0xff
  bytes4 public number = 0x12345678; // stores 4 bytes: [0x12, 0x34, 0x56, 0x78]
  ```
  - `bytedata` is a public state variable of type `bytes1` initialized to `0xff`.
  - `number` is a public state variable of type `bytes4` initialized to `0x12345678`, representing four bytes `[0x12, 0x34, 0x56, 0x78]`.

  These types are useful for working with raw byte data, often used in cryptographic operations or when interfacing with systems that communicate in byte-level format.

### 6. int256

- **Purpose**: `int256` is a specific width signed integer type (256 bits wide).
- **Examples**: 
  ```solidity
  int256 public maximum = type(int256).max; // maximum value that can be stored in int256
  int256 public minimum = type(int256).min; // minimum value that can be stored in int256
  ```
  - `maximum` stores the maximum value that can be represented in `int256`.
  - `minimum` stores the minimum value that can be represented in `int256`.

  These variables demonstrate the extreme values (`max` and `min`) that can be stored using the `int256` data type in Solidity.

- **Bytes slicing**: In Solidity, you can access individual bytes (`bytes1`, `bytes2`, etc.) from a larger `bytes` variable using indexing (`number[0]`, `number[1]`, etc.). This allows for fine-grained manipulation of byte-level data within smart contracts.



```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Let's learn about datatypes
contract DataTypes{

  bool public boo = true ;//stores true or false
  uint public a = 15; // stores positive numbers
  int public b = -30; //stores signed integers
  address public account =  0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;// stores address in hex
  bytes1 public bytedata = 0xff; //stores data in bytes
  int256 public maximum = type(int256).max; //Stores maximum value that can be stroed in int256
  int256 public minimum = type(int256).min; // Stores minimum value that can be stored in int256

  //Uderstanding different bytes 
  // Bytes are nothing but dynamic array of byte[]
  // Remember 2 hex digits = 1 byte
  bytes4 public number = 0x12345678; //This will have 4 values in byte[] and will be stored like [0x12, 0x34, 0x56, 0x78]
  bytes1 public n0 = number[0]; // 0x12
  bytes1 public n1 = number[1]; // 0x34
  bytes1 public n2 = number[2]; // 0x56
  bytes1 public n3 = number[3]; // 0x78


  bytes1 public byte1 = bytes1(number); //This can store only one byte, so byte1 = 0x12
  bytes2 public byte2 = bytes2(number); //This can store only two bytes, so byte2 = 0x1234
  bytes3 public byte3 = bytes3(number); //This can store only three bytes, so byte3 = 0x123456

}
```

