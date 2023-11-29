// SPDX-License-Identifier : MIT
pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Metadata.sol";

contract Mansions is ERC721Metadata{
    uint32 public Id;
    mapping(address => uint32) public MDTrack;

    constructor () ERC721Metadata("Mansions Token", "MTN") payable public{
        Id = 0;
    }

    function createNFT(address receiver, string calldata metadata) external returns (uint32)    {
        Id++;
        _mint(receiver, Id);
        _setTokenURI(Id, metadata);
        MDTrack[receiver] = Id;
        return Id;
    }

    function transferNFT(address sender, address receiver, uint32 transId, string calldata metadata) external{
        _transferFrom(sender, receiver, transId);
        _setTokenURI(transId, metadata);
        delete MDTrack[sender];
        MDTrack[receiver] = Id;
    }
}
