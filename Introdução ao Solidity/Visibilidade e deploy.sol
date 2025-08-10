// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Soma{
    uint x;
    uint y;

    function Colocar_Valores(uint Numero_1, uint Numero_2) public {
        x = Numero_1;
        y = Numero_2;
    }

    function SomaDosNumeros() public view returns(uint){
        return x+y;
    }
}