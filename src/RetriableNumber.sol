// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";

contract RetriableNumber is Ownable {
    uint256 private s_number;

    event NumberChanged(uint256 number);
    
    constructor() Ownable(msg.sender) {}


    function store(uint256 newNumber) public onlyOwner {
        s_number = newNumber;
        emit NumberChanged(newNumber);
    }

    function returnNumber() external view returns(uint256) {
        return s_number;
    }

}
