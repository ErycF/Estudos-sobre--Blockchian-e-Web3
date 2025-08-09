// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contrato_Monstro2{

    // variável de estado
    // funções
    // structures
    // enuns

    // erros
    // modifiers
    // eventos

    enum TipoMonstro {
        Raro,
        Especial,
        Normal,
        Bacana
    }

    struct Monstro {
        string nome;
        uint forca;
        TipoMonstro tipo;
        uint N_d_Modulo;
    }

    Monstro[] public monstros;

    function Criar_Monstro(string memory _nome) public returns (uint){
        Monstro memory Novo_Monstro;
        Novo_Monstro.nome = _nome;
        Novo_Monstro.forca = block.timestamp % 20;                               
        Novo_Monstro.N_d_Modulo = block.timestamp / 20;

        /* A blockchain não consegue gerar números randonicos, pois, a blockchain
        não esta em um computador só, ela esta distribuída em varíos outros
        computadores. Por isso, que é impossível 2 computadores gerarem 2 números
        randomicos.*/

        if( block.timestamp % 4 == 0 ){ Novo_Monstro.tipo = TipoMonstro.Raro;}
        else if( block.timestamp % 4 == 1 ){ Novo_Monstro.tipo = TipoMonstro.Normal;}
        else if( block.timestamp  % 4 == 2 ){ Novo_Monstro.tipo = TipoMonstro.Especial;}
        else if( block.timestamp  % 4 == 3 ){ Novo_Monstro.tipo = TipoMonstro.Bacana;}

        monstros.push(Novo_Monstro);

        return (block.timestamp);
    }

}