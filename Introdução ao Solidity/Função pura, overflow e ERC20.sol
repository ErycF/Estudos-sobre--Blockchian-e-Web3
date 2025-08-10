// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Matematica{

    // uint8 = bytes1
    // 1 byte = 8 bits = 2^8 = 256 (0 - 255)

    function Soma(uint8 _x, uint _y) public pure returns (uint){
        return _x + _y;
    }
    
    /* Quando uma função tem a pure, ele nãoo ler nada da blockchain,
    pois também, nem variãvel de estado esse contrato tem. */
}