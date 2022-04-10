// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProofOfExistencal2 {
    mapping(bytes32 => bool) private proofs;

    function notarize(string memory doc) public {
        proofs[proofFor(doc)] = true;
    }

    function proofFor(string memory doc) internal pure returns (bytes32) {
        return sha256(abi.encodePacked(doc));
    }

    function checkProof(string memory doc) public view returns (bool) {
        return proofs[proofFor(doc)];
    }
}
