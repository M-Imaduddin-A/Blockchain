//SPDX-License-Identifier: MIT

pragma solidity 0.8.23;
// Konstruktor untuk penerimaan gas
contract PaymentReceived {
    address public from;
    uint public amount;
// deklarasi data
    constructor(address _from, uint _amount) {
        from = _from;
        amount = _amount;
    }
}

contract Wallet {
    PaymentReceived public payment;
// Fungsi untuk membayar kontrak
    function payContract() public payable {
        payment = new PaymentReceived(msg.sender, msg.value);
    }
}