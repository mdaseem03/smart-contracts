// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
- Events play a crucial role in the interaction between smart contracts and external systems. 
- They allow contracts to communicate information to external entities or other contracts about specific occurrences or state changes within the contract. 
- Events are defined within the contracts as global and called within their functions.
- Syntax:

event <eventName>(parameters) ;    

*/
contract Events{
    // Let's create an event which triggers when a transfer of token happens in our contract
    event Transfer(address indexed _from, address indexed _to, uint _value);

    mapping (address => uint) balanceOf;
    
     function transfer(address _to, uint _value) public returns (bool){

        balanceOf[msg.sender] = msg.sender.balance; //.balance is used to store the balance amount of the address

        require(balanceOf[msg.sender] >= _value, "Insufficient Balance"); //Check whether msg.sender has sufficient balance

        balanceOf[msg.sender] -= _value; // Withdraw the amount from _from account
        balanceOf[_to] += _value; // Transfer to _to account

        emit Transfer(msg.sender, _to, _value); // emit is used to trigger the event

        return true;
        
    }


    
}

