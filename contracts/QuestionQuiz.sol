//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract QuestionQuiz{
    bytes32 salt = bytes32("123123123");
    bytes32 hashedAnswer;
    string public question;
    mapping(address => bool) answered;
    mapping(address => string) answerGiven;
    mapping(address => bool) correctOrNot;
    address public owner;
    constructor(string memory _question, bytes32 _answer){
       question = _question;
       hashedAnswer= _answer;
       owner = msg.sender;
    } 
    function guess(address _addr, string memory _answer) public {
        _guess(_addr, _answer);
    }
    function _guess(address _addr,string memory _answer) private{
        require(answered[_addr] == false,"Already Answered");
        answered[_addr] = true;
        answerGiven[_addr] = _answer;
        if(keccak256(abi.encodePacked(salt,_answer)) == hashedAnswer){
            correctOrNot[_addr] = true;
        }
    }
    function hasAnswered(address _addr) public view returns(bool){
        return answered[_addr];
    }
    function returnOwner() public view returns (address){
        return owner;
    }
    function returnAnswer(address _addr) public view returns(string memory){
        return answerGiven[_addr];
    } 
    function returnAnswerForScore(address _addr) public view returns(bool){
        return correctOrNot[_addr];
    }
    function returnQuestion() public view returns(string memory){
        return question;
    }
}