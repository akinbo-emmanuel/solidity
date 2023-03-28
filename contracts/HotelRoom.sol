//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract HotelRoom {
    // Vacant
    // Occupied
    enum Status {
        Vacant,
        Occupied
    }
    Status public currentStatus;

    address payable public owner;

    event Occupy(address _Occupant, uint _value);

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Status.Vacant;
    }

    modifier onlyWhileVacant {
        require(currentStatus == Status.Vacant, "Currently occupied.");
        _;
    }

    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }

    function book() public payable onlyWhileVacant costs(2 ether){
        currentStatus = Status.Occupied;
        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);
    }
}