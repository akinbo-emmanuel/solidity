//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MyContract {
    //State Variables
    int256 public myInt = 1;
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 =1;

    string public myString = "Hello World!";
    bytes32 public myBytes32 = "Hello World!";

    // address public myAddress = ;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello World!");

    //Local Variables
    function getValue() public pure returns(uint){
        uint value = 1;
        return value;
    }
}