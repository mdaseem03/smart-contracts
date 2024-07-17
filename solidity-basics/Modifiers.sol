// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* 
- Additional to public, private, external and internal modifiers,
- We can create our own custom modifiers to restrict the access

| Visibility Specifier | Same Contract | Within Inherited Contracts | Within Other Contracts |
|----------------------|---------------|----------------------------|------------------------|
| public               | Yes           | Yes                        | Yes                    |
| private              | Yes           | -                          | -                      |
| internal             | Yes           | Yes                        | -                      |
| external             | -             | -                          | Yes                    |

- Syntax:
modifier <modifier name>(){
    // Code
    _; 
}

*/

contract School{
    // Assume function where only principal can assign teachers
    // So that function should be executed only by the teachers and not anyone else
    address public principal;
    constructor(){
        principal = msg.sender;
    }

    modifier onlyPrincipal {
        require(principal == msg.sender, "You are not the principal"); // Here, principal should be msg.sender and no one else could be the principal
        _;
    }

    address public teacher;
    function changeTeacher(address _teacher) public onlyPrincipal /* Custom Modifier */ {
        teacher = _teacher;
    }

}