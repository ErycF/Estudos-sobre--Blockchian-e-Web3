// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract evento_token {

    uint public moeda;
    mapping (address => uint) public  balanco;
    address public owner;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    modifier olnyOwner{
        require(msg.sender == owner);
        _;
    }

    constructor(){

        moeda = 1_000_000;
        owner = msg.sender;
        balanco[owner] = 1_000_000;
    }

    function changeOwner (address _newOwner) public olnyOwner{
        owner = _newOwner;
    }

    function transfer(address _to, uint256 _value) public returns (bool success){
        require(balanco[msg.sender] >= _value);
        require(_to != address(0));
        balanco[msg.sender] -= _value;
        balanco[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }
}