// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContratoMostro{
    
    struct Monstro{
        string nome;
        uint forca;
    }

    struct Arma{
        string nome;
        uint poder;
    }

    Monstro[] private monstros;

    Arma[] internal armas;

    function Criar_Monstros(string memory _nome, uint _forca) external {
        Monstro memory Novo_Monstro;
        Novo_Monstro.nome = _nome;
        Novo_Monstro.forca = _forca;
        monstros.push(Novo_Monstro);
    }

    function Pegar_Monstro(uint _id) public view returns (string memory, uint){
        Monstro storage monstro = monstros[_id]; // Desse jeito usa menos gás, pois, usa menos poder do processamento
        // Monstro memory monstro = monstros[_id];
        return (monstro.nome, monstro.forca);
    }

    function Altera_Forca(uint _id, uint nova_forca) external {
        Monstro storage monstro = monstros[_id];
        monstro.forca = nova_forca;
    }

    function Criar_Arma(string memory _nome, uint _poder) public {
        Arma memory Nova_Armas;
        Nova_Armas.nome = _nome;
        Nova_Armas.poder = _poder;
        armas.push(Nova_Armas);
    }

    function Busca_Arma(uint _id) public view returns (string memory, uint){
        Arma storage arma = armas[_id]; 
        return (arma.nome, arma.poder);
    } 
}