//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract Genius is ERC721URIStorage {
    uint _tokenIds;

    constructor() ERC721("Genius","GEN"){
        _tokenIds=0;
    }

    function makeNFT(string memory _tokenURI) external returns (uint){
        
        uint newItemId = _tokenIds;
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, _tokenURI);
        _tokenIds+=1;
        return newItemId;
    }

}
