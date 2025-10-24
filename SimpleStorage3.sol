//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Structs and Arrays <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

contract simpleStorage{
    //MARK: let's create a struct in Solidity 
    //MARK: Empty structs are not allowed in solidity
    struct People{
        uint256 favoriteNumber;
        string name;
    }

    //MARK: let's create an object of our struct called "mark"
    People public mark = People({name: "mark", favoriteNumber: 18});
    //MARK: Passing the parameters of the object this way allows us to shuffle the order of the variables inside the struct 
    //People public mark = People("Mark",18);
    //MARK: This is the normal way of creating an object of the contruct

    //MARK: What if we have many records and we want to create a list/array of them 
    //MARK: Let's create an array of the struct 
    People[] public section1; //MARK: Note that this is a dynamic size array
    //People[5] public section2; //MARK: Note that this is a fixed-size array

    //MARK: It's important to note that solidity allows array mods through functions only and no direct manipulation is allowed
    //MARK: Note this array and it's modifications: 
    /*
        int[5] public models;
        function addModel (int _model) public {
            models[1] = _model;
        }
    */
    //MARK: Deploy now and see how the buttons differ in deployment

    //lets create a function to fill this array for us 
    function addPerson(string memory _name, uint256 _favoriteNumber)public{
        //MARK: Note the memory keyword used here
        //MARK: memory & calldata 
        /*
            calldata
                A read-only, temporary area where function arguments are stored
                Exists only for the duration of the external function call
                Cheapest option for function parameters (saves gas)

            memory
                A read-write, temporary storage area
                Data persists only during the current function execution
                More expensive than calldata but cheaper than storage
        */
        
        section1.push(People(_favoriteNumber,_name));
        //MARK: Note how the creation of the object is different this time
        
        //MARK: Another way is to create the objext first then we can push this object 
            //People memory newPerson = People({name: _name, favoriteNumber: _favoriteNumber});
            //section1.push(newPerson);
        
        //MARK: Deploy this contract and interact with the array of structs and add many objects to it 
        //MARK: Deploy this to Sepolia using your metamask injection
    }
    



    
}
