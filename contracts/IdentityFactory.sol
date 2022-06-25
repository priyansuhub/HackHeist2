//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "./Merkle.sol";
import "./QuestionQuiz.sol";
import "./ProctoredQuiz.sol";
import "./ERC725Y.sol";

contract Factory is ProctoredQuiz{
    ERC725 token;
    mapping(address => ERC725) public information;
    uint countData;
    address FactoryOwner;
    mapping(address => bool) public verified;

    function createInstanceForAddress() public {
        address cont = address(information[msg.sender]);
        require(cont == address(0), "Instance already created");
        ERC725 tkn = new ERC725();
        information[msg.sender] = tkn;
    }

    function setDataSingle(bytes32 _key, bytes memory _value) public {
        ERC725 shard = information[msg.sender];
        shard.setDataSingle(_key, _value);
    }
    function setDataBulk(bytes32[] memory _key, bytes[] memory _value) public {
        ERC725 shard = information[msg.sender];
        shard.setData(_key, _value);
    }
    function getData(address _addr ,bytes32 _dataKey) public view returns (bytes memory){
        ERC725 shard = information[_addr];
        return shard.getData(_dataKey);
    }
    function getDataBulk(address _addr, bytes32[] memory _datakey) public view returns(bytes[] memory){
        ERC725 shard = information[_addr];
        return shard.getDataBulk(_datakey);
    }
    function isReally(address _addr)public {
        require(msg.sender == FactoryOwner,"Not permitted");
        verified[_addr] = true;
    }

}