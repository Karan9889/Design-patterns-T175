pragma solidity ^0.5.10;
contract Soracle{
    struct su{
        uint256 cost;
        uint256 volume;
    }
    address orOwner;
    mapping (bytes4=>su) sQo;    
    function getStVol(bytes4 flag) public view returns (uint){
        return sQo[flag].volume;
    }
    function setSt(bytes4 flag, uint256 _cost, uint256 _volume) public returns (uint) {
        sQo[flag] = su(_cost, _volume);
    }
    function getStockPrice(bytes4 flag) public view returns (uint) {
        return sQo[flag].cost;
    }
}