// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Heranca{

    mapping (string => uint) Valor_a_Receber;

    function Escreva_Valor(string memory _nome, uint _valor) public {
        Valor_a_Receber[_nome] = _valor;
    }

    //Visibilidade: public, private, internal, external

    function Pegar_Valor(string memory _nome) public view returns (uint){
    
        return Valor_a_Receber[_nome];
    }
}