//SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

struct Course {
    string name;
    string description;
    address instructor;
    uint256 startDate;
    uint256 endDate;
    uint256 enrollmentFee;
}