//Access Modifiers and Functions
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract SimpleStorage{
        uint public favoriteNumber;
        //MARK: Access modifiers 
        /*
        1. public
            Accessible from anywhere: inside the contract, derived contracts, and externally.
            Functions marked public can be called by other contracts or users.
            State variables marked public automatically get a getter function.

        2. private
            Accessible only within the contract where it's defined.
            Not accessible by derived contracts or external callers.

        3. internal
            Accessible within the contract and in derived contracts.
            Not accessible externally.

        4. external
            Can be called only from outside the contract (e.g., by other contracts or users).
            Cannot be called internally unless using this.functionName().
        */

        //MARK: Notice how the gas consumtion increases when you extend your function computation
    function store (uint256 _favoriteNumber) public { 
        favoriteNumber = _favoriteNumber;
        favoriteNumber = favoriteNumber * 2; //This lines increases the gas consumption
        //uint256 favoriteNumberInternal = 4;  //For testing purposes to check accessibility (Internal)
    }        

    //Try to access an internal variable from another function and see whether it will work or not
    // function retrieve() public view returns (uint256) {
    //     return favoriteNumberInternal;
    // }

        //MARK: Note the difference in color between store and retreive 
        //      The reason is the view keyword which indicates that this is not consuming any gas 
        //      The two keywords that doesn't consume gas as view, pure 
        //      The view allows us to only see the state and doesn't allow modification 
        //      The pure allows us to do math calculation or return a specific value based on parameters

        // Note that calling a view function is chargable if you are calling it inside a gas consuming function

        //MARK: Let's try and see the gas consumption difference with the view function being called inside store function

}
