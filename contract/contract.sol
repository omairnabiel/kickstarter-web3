pragma solidity ^0.5.0;

contract Campaign {
	address public manager;
	uint public minimumContribution;

	function Campaign(uint minimum) public {
		manager = msg.sender;
		minimumContribution = minimum;
	}
}
