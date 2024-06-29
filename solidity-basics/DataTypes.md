## Data Types

### 1. bool

`bool` stores a boolean value, which can either be `true` or `false`.
  ```solidity
  bool public boo = true;
  ```
  Here, `boo` is a public state variable initialized to `true`.

### 2. uint 
 `uint` stands for unsigned integer. It is a non-negative integer (zero and positive numbers) that doesn't include a sign bit, meaning it cannot represent negative numbers.
 ```solidity  
 uint public a = 15;
```
`uint8`, `uint16`, `uint32`, `uint64`, `uint128`, `uint256`: These variations specify the number of bits each variable can use to store data. 

For example, `uint8` can store values from 0 to 255 (2^8 - 1), `uint256` can store values from 0 to 2^256 - 1, and so on.

### 3. int 
`int` stands for signed integer. It can store both positive and negative numbers, including zero.
```solidity
int public b = -30;
```

`int8`, `int16`, `int32`, `int64`, `int128`, `int256`: Similar to `uint`, these variations specify the number of bits available to store data. 

For example, `int8` can store values from -128 to 127, `int256` can store values from -2^255 to 2^255 - 1.

### 4. bytes
 `bytes` is used for storing byte arrays or raw byte data. It is similar to `byte[]` but more optimized for arbitrary-length byte arrays.
 ```solidity
bytes1 public bytedata = 0xff;
```
 
`bytes1`, `bytes2`, `bytes3`, ..., `bytes32`: These variations represent fixed-size byte arrays where the number indicates the number of bytes (not bits). 

For example, `bytes1` can store a single byte (8 bits), `bytes32` can store up to 32 bytes (256 bits).


### 5. address

 `address` stores a 20-byte Ethereum address. 
  ```solidity
  address public account = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
  ```
  Here, `account` is a public state variable storing the Ethereum address `0x5B38Da6a701c568545dCfcB03FcB875f56beddC4`.




### Example Code
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

