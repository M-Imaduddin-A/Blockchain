//SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract ExampleViewPure {

//Deklarasi tipe data
    uint public myStorageVariable;
//fungsi menulis
    function setMyStorageVariable(uint _newVar) public returns(uint) {
        myStorageVariable = _newVar;
        return _newVar;
    }


}