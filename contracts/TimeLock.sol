//SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract ABC{
    address cont;
    event Madarchod(bool success);
    constructor(address _cont){
        cont = _cont;
    }
    function returnHash(string memory val) public pure returns(bytes4){
        return bytes4(keccak256(bytes(val)));
    }
    
    function callOtherContract(string memory hash ,bytes memory _val) public{
    
        bytes4 hashedValue = returnHash(hash);
         bytes memory data = abi.encodePacked(hashedValue, _val);
        (bool success, ) = cont.call{value: 0}(data);
        emit Madarchod(success);
    }
}

contract BCD{
    
    uint public counter;
    
    function changeValue() public{
        counter++;
    }

    function setCounterValue(uint _value) public{
        counter = _value;
    }

}