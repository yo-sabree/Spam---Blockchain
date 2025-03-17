// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SpamDetection {
    struct SpamReport {
        string message;
        bool isSpam;
    }

    mapping(bytes32 => SpamReport) public spamReports;

    event SpamReported(string message, bool isSpam, bytes32 messageHash);

    function markAsSpam(string memory message, bool isSpam) public {
        bytes32 messageHash = keccak256(abi.encodePacked(message));
        spamReports[messageHash] = SpamReport(message, isSpam);
        emit SpamReported(message, isSpam, messageHash);
    }

    function checkIfSpam(string memory message) public view returns (bool) {
        bytes32 messageHash = keccak256(abi.encodePacked(message));
        return spamReports[messageHash].isSpam;
    }

    function getMessageStatus(string memory message) public view returns (string memory) {
        bytes32 messageHash = keccak256(abi.encodePacked(message));
        if (spamReports[messageHash].isSpam) {
            return "Spam";
        } else {
            return "Not Spam";
        }
    }
}
