// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

contract MyContract {
    struct Person {
        uint id;
        string name;
        mapping(uint => string) phoneNumbers;
        string city;
    }

    mapping(uint => Person) public people;

    function addPerson(uint _id, string memory _name, string memory _city) public {
        Person storage person = people[_id]; //get a reference to the Person struct
        person.id = _id; //assign values to the struct instance, not the mapping
        person.name = _name;
    }

    function addPhoneNumber(uint _id, uint _phoneNumberId, string memory _phoneNumber) public {
        people[_id].phoneNumbers[_phoneNumberId] = _phoneNumber;

    function getCity(uint _id) public view returns (string memory) {
        return people[_id].city;
    }
}
