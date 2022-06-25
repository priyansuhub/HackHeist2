//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts@4.5.0/utils/cryptography/MerkleProof.sol";
contract Merkle{
    bytes32 root;
    address public owner;
    //  constructor(){
    //     owner = msg.sender;
    // }
    event AddedAccount(address indexed acc, bytes32 indexed hsh);
    event RemoveAccount(address indexed acc, bytes32 indexed hsh);
    function updateRoot(bytes32 hash) public {
        require(msg.sender == owner,"Sorry No Access");
        root = hash;
    }
    function returnHash() public view returns(bytes32){
        return root;
    }
    function verify(bytes32[] memory proof,bytes32 leaf) public view returns(bool){
        return MerkleProof.verify(proof, root, leaf);
    }
}
