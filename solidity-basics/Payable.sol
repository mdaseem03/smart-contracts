// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* 
- payable is used in address and functions to send and recieve Ether
- You can send Ether to other contracts by: 
    - transfer (2300 gas, throws error)
    - send (2300 gas, returns bool)
    - call (forward all gas or set gas, returns bool)

- A contract receiving Ether must have at least one of the functions below
    receive() external payable (or)
    fallback() external payable
*/
contract RecieveEther{
    /*
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
    receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */

    // Function to receive Ether. msg.data must be empty
    receive() external payable{ }

    // Fallback function is called when msg.data is not empty
    fallback() external payable { }
    function getBalance() public view  returns (uint){
        return address(this).balance;
    }
}
 
    
contract SendEther{

    constructor () payable{} 
    

    function sendViaTransfer(address payable _to) public payable {
        require(msg.value > 0,"Can't send 0 Ether");
        _to.transfer(msg.value); // // This function is no longer recommended for sending Ether
    }

    function sendViaSend(address payable _to) public payable{
        require(msg.value > 0,"Can't send 0 Ether");
        // Send returns a boolean value indicating success or failure.
        // This function is not recommended for sending Ether.
        bool sent = _to.send(msg.value);
        require (sent, "Failed to send Ether");
    }

    function sendViaCall(address payable _to) public payable{
        require(msg.value > 0,"Can't send 0 Ether");
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }

    

}