pragma solidity ^0.4.24;

/**
 * The contractName contract does this and that...
 */
contract Election {
	//Model a Candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;	
	}
	
	//store Candidates
	//Fetch Candidate
	mapping (uint => Candidate) public candidates;
	//store Candidates Count
	uint public candidatesCount;

	constructor () public {
		addCandidate("Candidate1");
		addCandidate("Candidate2");
	}	

	function addCandidate (string _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}
	
}
