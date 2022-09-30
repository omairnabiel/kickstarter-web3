pragma solidity ^0.8.17;

contract Campaign {

	struct Request {
		uint approvalCount;
		string description;
		uint value;
		bool complete;
		address recipient;
		mapping(address => bool) approvals;
	}

	address public manager;
	uint public minimumContribution;
	mapping(address => bool) public approvers;

	constructor(uint minimum) {
		manager = msg.sender;
		minimumContribution = minimum;
	}

	function contribute() public payable{
		require(msg.value > minimumContribution);
		approvers[msg.sender] = true;
	}
}
