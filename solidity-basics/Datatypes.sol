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
