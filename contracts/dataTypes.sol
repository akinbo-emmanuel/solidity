//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DataTypes{
    // bool public hey; //default is false
    // bool public no = true;

    //UINT stands for unsigned integer. Non negative integers. Different sies are available.
    // uint8; // ranges 0 - 2 ** 8 - 1 // 255
    // uint16; // ranges 0 - 2 ** 16 - 1 // 65535
    // uint256 // ranges 0 - 2 ** 256 - 1 // 1.1579209e+77
    // uint8 public u8 = 1;
    // uint public u256 = 456;
    // uint public u = 123; //uint is an alias from uint256

    // //NEGATIVE NUMBER
    // //Negative numbers are allowed from int types.
    // int8 public i8 = -1;
    // int public i256 = 456;
    // int public i = -1234;

    //Now you can add min and max int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    //ARRAY
    
    //In solidity, byte represents a sequence of bytes
    //-- fixed-sized bytes arrays
    //-- dynamic-sied bytes arrays
}