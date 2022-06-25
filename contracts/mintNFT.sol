//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "./Merkle.sol";
import "./QuestionQuiz.sol";
import "./ProctoredQuiz.sol";
import "./ERC725Y.sol";
import "./IdentityFactory.sol";
import "./SBT.sol";


contract MintSBT is Factory,SBT("Priyansu","Pri"){
    constructor(){
        FactoryOwner = msg.sender;
        owner = msg.sender;
    }
    event TokenOwner(address indexed addr, uint indexed tokenId);
    function _mintNft(address _to) public {
        require(totalScores[_to] > 8, "Hell Nawwww brother,go learn Qbasic XD");
        require(verified[_to] == true, "Nah dude man aint verified");
        _mint(_to);
        emit TokenOwner(_to, Supply-1);
    }
}
