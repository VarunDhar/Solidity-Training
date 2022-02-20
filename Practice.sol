//SPDX Licencse Identifier- MIT
pragma solidity ^0.4.25;

contract MyContract{
    int private value;

    constructor() public
    {
        value= 10;
    }
    function get() view public returns(int)
    {
        return value+value;
    }
    function set(int _val) public{
        value= _val;
    }

    //arrays ,mapping and struct

    struct People{
        uint256 num;
        string name;
    }

    People[] public group;

    mapping(string => uint256)  map;

    function addPeople(uint _num, string memory _name) public{
        group.push(People({num: _num, name: _name}));
        map[_name]= _num;
    }

    function getMap(string _nam) public view returns(uint256){
        return map[_nam];
    }



}
