//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract ERC725 {
    address public ContractOwner;
    constructor(){
        ContractOwner = msg.sender;
    }
    mapping(bytes32 => bytes) internal store;

    function setData(bytes32[] memory dataKeys, bytes[] memory dataValues) public {
        require(msg.sender == ContractOwner, "Not permitted");
        require(dataKeys.length == dataValues.length, "Keys length not equal to values length");
        for (uint256 i = 0; i < dataKeys.length; i++) {
            _setData(dataKeys[i], dataValues[i]);
        }
    }
    function setDataSingle(bytes32 dataKey, bytes memory dataValue) public {
        // require(msg.sender == ContractOwner, "Not permitted");
        _setData(dataKey, dataValue);
    }
    function _setData(bytes32 dataKey, bytes memory dataValue) internal {
        store[dataKey] = dataValue;
    }
    function getDataBulk(bytes32[] memory dataKeys) public view returns (bytes[] memory dataValues)
    {
        dataValues = new bytes[](dataKeys.length);
        for (uint256 i = 0; i < dataKeys.length; i++) {
            dataValues[i] = _getData(dataKeys[i]);
        }
        return dataValues;
    }
    function getData(bytes32 dataKey) public view returns (bytes memory dataValue){
        dataValue = _getData(dataKey);
        return dataValue;
    }
    function _getData(bytes32 dataKey) internal view returns (bytes memory dataValue) {
        return store[dataKey];
    }
    function returnContractOwner() public view returns(address){
        return ContractOwner;
    }
}