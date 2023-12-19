// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;
contract MyContract {

    string public myString = "HelloWorld";

    function updateOurString(string memory _myString) public { 
        myString = _myString;
    }
}