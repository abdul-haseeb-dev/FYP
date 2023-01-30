// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract productID {
    uint256 public counter;
    mapping (uint256 => bytes32) public productToHash;
    bytes32 private hashes;

    function generateHash (uint256 _productID) public returns (bytes32) {
        counter++;
        hashes = keccak256(abi.encodePacked(_productID));
        productToHash[_productID] = hashes;
        return hashes;
    }
    
    function Remove (uint256 _product) public returns (uint256){
        counter--;
        delete getHash[_product];
        return counter;
    }
}   
