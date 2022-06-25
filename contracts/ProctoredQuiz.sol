//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "./Merkle.sol";
import "./QuestionQuiz.sol";

contract ProctoredQuiz is Merkle{
    uint public totalQuestions = 0;


    mapping(uint => QuestionQuiz) public quizes;
    mapping(address => uint) public totalScores;

    function createQuiz(string memory _question, bytes32  _hashedanswer) public{
        QuestionQuiz question = new QuestionQuiz(_question,_hashedanswer);
        quizes[totalQuestions] = question;
        totalQuestions++;
    }

    function guessQuiz(uint _index,string memory _answer) public{
        QuestionQuiz q = quizes[_index];
        q.guess(msg.sender,_answer);
    }
    function OwnerOfContract(uint _index) public view returns(address){
         QuestionQuiz q = quizes[_index];
         address own = q.returnOwner();
         return own;
    }
     function calculateTotalScores(address _addr) public {
        require(totalQuestions > 0);
        totalScores[_addr] = 0;
        for(uint i = 0 ; i< totalQuestions; i++){
             QuestionQuiz q = quizes[i];
            if(q.returnAnswerForScore(_addr)){
                totalScores[_addr]++;
            }
        }
    }
    function getQuizQuestion(uint _index) public view returns(string memory){
        QuestionQuiz q = quizes[_index];
        return q.question();
    }

}