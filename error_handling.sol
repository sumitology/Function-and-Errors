// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {
    // Public variables
    string public tokenName = "Sumit";
    string public tokenAbbrev = "SMT";
    uint public totalSupply = 0;

    // Mapping of addresses to balances
    mapping(address => uint) public balances;

    // Mint function
    function mint(address _address, uint _value) public {
        require(_value > 0, "value must be greater than zero");
        totalSupply += _value;
        balances[_address] += _value;

        assert(totalSupply >= _value);
        assert(balances[_address] >= _value);
    }

    // Burn function
    function burn(address _address, uint _value) public {
        require(_value > 0, "value must be greater than zero");
        require(balances[_address] >= _value, "Insufficient balance to burn");

        totalSupply -= _value;
        balances[_address] -= _value;

        assert(balances[_address] <= balances[_address] + _value);
    }

    // Function to demonstrate revert statement
    function demoRevert() public pure {
        revert("This is a revert");
    }
}
