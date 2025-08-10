// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract comeco{

    string public nome = "Colocar seu nome de usuario";
    uint public numero;

    function Nome_do_Usuario(string memory nomedousuario) public {
        nome = nomedousuario;
    }

    function SeuNumero(uint seunumero) public {
        numero = seunumero;
    } 
}