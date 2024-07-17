// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
- Structs in Solidity allows you to create more complicated data types that have multiple properties. 
- You can define your own type by creating a struct.
- They are useful for grouping together related data.
- Structs can be declared outside of a contract and imported in another contract. 
- Syntax:

struct <structure_name> {  
   <data type> variable_1;  
   <data type> variable_2; 
}

*/

// A simple smart contract which has struct to have informations about books in a library

contract Library{
    struct Book{
        string name;
        string author;
        uint id;
        bool available;
    }
    // Ways to initialize a struct

    // 1. Create a structure object and initalize seperately
    Book public book;
    
    function initialize_seperately(string memory _name, string memory _author, uint _id, bool _available) public{
        book.name = _name;
        book.author = _author;
        book.id = _id;
        book.available = _available;
    }

    //2. Initialize at same time
    function initialize_at_same_time(string memory _name, string memory _author, uint _id, bool _available) public{
        book = Book(_name, _author, _id, _available);
        // You need to add values in the same order as how you declared in the struct for this method
    }

    //3. Key-Value Mapping
    function key_value_mapping(string memory _name, string memory _author, uint _id, bool _available) public{
        book = Book({author: _author, id : _id, name : _name, available : _available}); 
        // In key-value mapping, you can add value in any order
        // It is not necessary to be in the order of how you declared in the struct
        // This is the best way to initialize
    }
    //Array of structs - You can also create array of structs
    Book[] public array_of_book;
    
    function set(string memory _name, string memory _author, uint _id, bool _available) public{
        array_of_book.push(Book({author: _author, id : _id, name : _name, available : _available})); 
    }

    function get() public view returns (string memory, string memory, uint, bool){
        return (book.name, book.author, book.id, book.available);
    }

    // We can retrieve struct data from array of structs using index number
    function getArray(uint index) public view returns (string memory, string memory, uint, bool){
        Book storage book_details = array_of_book[index];
        return (book_details.name, book_details.author, book_details.id, book_details.available);
    }


}