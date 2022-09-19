pragma solidity ^0.5.0;

contract Campaign {
	manager: address
	minimumContribution: uint

	function Campaign(uint minimum) public {
		manager = msg.sender
		minimumContribution = minimum
	}
}
