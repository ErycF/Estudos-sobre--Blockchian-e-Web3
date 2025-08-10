// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleCoin{

    uint256 public initialsupply;
    mapping (address => uint) public balanceOf;
    address public owner;

    /* modifier é como se fosse um filtro, que vai ser execultado
    por uma função antes do resto da função ou depois. */

    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }

    /* O constructor é uma função que e execultada assim que um contrato
    e colocado na blockchain. Depois que fizer o deploy essa função constructor
     será execultada.*/

    constructor(){

        owner = msg.sender;
        initialsupply = 1_000_000;
        balanceOf[owner] = initialsupply;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        owner =_newOwner;
        // require(msg.sender == owner);
    }
}