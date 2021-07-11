pragma solidity 0.5.16;

contract Election {
    // model a candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Read/Write Candidate
    mapping(uint => Candidate) public candidates;

    // Store Candidates votes
    uint public candidatesCount;

    function addCandidate (string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function Elections () public {
        addCandidate("APC");
        addCandidate("PDP");
    }

}