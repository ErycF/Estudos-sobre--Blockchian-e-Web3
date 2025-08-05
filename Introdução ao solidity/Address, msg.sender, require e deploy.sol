// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Heranca_2{

    mapping (string => uint) private Nome_Idade;

    //address é um tipo de variável.
    //0x165e3dac16275d3aeb862fb27a127ed0e612193b address-contract
    address public owner = msg.sender; // Aquele que envocou o contrato, quem chamou esse contrato. 

    function Coloque_Seu_Nome_e_idade( string memory _nome, uint _idade ) public {
        //require( msg.sender == owner); // ou require(owner == msg.sender);
        require(owner == msg.sender);
        Nome_Idade[_nome] = _idade; 
    }

    function Busca_idade( string memory Coloque_o_Nome) public view returns (uint){
        return Nome_Idade[Coloque_o_Nome];
    }
}