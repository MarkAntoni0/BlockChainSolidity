    //MARK: Always start your code with the following line, this is the license of your code (optional, and some compilers would give a warning if not written)

// SPDX-License-Identifier: MIT

    //MARK: Always check the compiler version you are using 
    //MARK: The ^ symbols allows the code to accept any compiler higher than the one sepcified in the code 
    //MARK: You can specifify range of compilers to run your code >=0.8.0 <0.9.0

//pragma solidity 0.8.3;
//pragma solidity >=0.8.0 <0.9.0;
pragma solidity ^0.8.3;

    //MARK: This is the basic structure of a contract
contract SimpleStorage{
    //Mark: in the contract you can define variables and function
    //MARK: The basic data types in solidity are:
        //uint / int: Unsigned and signed integers. You can specify sizes like uint8, uint256, int32, etc. uint and int are aliases for uint256 and int256, respectively.
        //bool: Boolean type, either true or false.
        //address: Holds a 20-byte Ethereum address.
        //bytes1 to bytes32: Fixed-size byte arrays.
        //enum: Custom enumerated types.
        //address payable: A special type of address that can receive Ether.

        //string: UTF-8 encoded text.
        // bytes: Dynamically sized byte array.
        // array: Fixed or dynamic arrays, e.g., uint[], string[5].
        // struct: Custom data structures.
        // mapping: Key-value store, e.g., mapping(address => uint).

        //function: Can be used to store references to functions.
        //tuple: Used for returning multiple values from functions.

        //Examples: 
            /*
            bool hasCar = true;
            uint256 carModel = 2008;
            string carMake = "BMW";
            int256 carMilage = -100;
            address myAddress = 0x6D3CF671A91725cd69353CA1141CbbEb59F856BC;
            bytes32 nextCar = "Mercedes";
            */

        uint favoriteNumber; //Implicitly assigning 0 value (Solidity defaults)
        
    function store (uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
}
