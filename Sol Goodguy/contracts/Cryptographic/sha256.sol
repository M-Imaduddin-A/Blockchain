// SPDX-License-Identifier: MIT

pragma solidity 0.8.23;

contract HashExample {
    function getHash(bytes memory data) public pure returns (bytes32) {
        return sha256(data);
    }
}