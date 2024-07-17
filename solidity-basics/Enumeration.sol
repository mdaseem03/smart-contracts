// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
-  Enums are useful when you have a variable that can only take on one of a few discrete values, such as states or categories.

- Syntax: 
enum <enumerator_name> { 
            element 1, element 2,....,element n
} 

- For better understanding, let's look at the example
*/

contract JuiceShop{
    enum GlassSize{
        MEDIUM,
        SMALL,
        LARGE
    }

    GlassSize glass;

    // Default value is the first element listed in
    // definition of the type, in this case "MEDIUM"
    // Returns uint
    // MEDIUM - 0
    // SMALL - 1
    // LARGE - 2

    function get() public view returns(GlassSize){
        return glass;
    }

    function setGlass(GlassSize _glass) public{
        glass = _glass;
    }

    function setLarge() public{
        glass = GlassSize.LARGE;
    }

}