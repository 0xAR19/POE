// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProofOfExistencal {
    bytes32 public proof;

    function notarize(string memory doc) public {
        proof = proofFor(doc);
    }

    function proofFor(string memory doc) public pure returns (bytes32) {
        return sha256(abi.encodePacked(doc));
    }
}
