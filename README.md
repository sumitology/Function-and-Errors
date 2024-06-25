
# Functions and Errors

This repository contains the implementation of a simple token contract written in Solidity.The contract demonstrates basic token functionalities, including minting and burning tokens, with robust error handling using require(), assert(), and revert() statements.


## Contract Details
Token Name: Sumit  
Token Abbreviation: SMT  
Total Supply: Variable, depending on minting and    burning activities
## Features

1.Public Variables:

tokenName: Stores the name of the token.
tokenAbbrev: Stores the abbreviation of the token.
totalSupply: Stores the total supply of tokens in circulation.

2.Mappings:

balances: Maps addresses to their respective token balances.

3.Functions:

mint(address _address, uint _value): Increases the total supply by _value and adds the same amount to the balance of _address.  
 
burn(address _address, uint _value): Decreases the total supply by _value and deducts the same amount from the balance of _address, given that _address has enough balance.  

demoRevert(): Demonstrates the use of the revert statement by always reverting the transaction with a custom message.


## Error Handling
'require' Statements: Used to validate input conditions.

'assert' Statements: Used to check for internal consistency.

'revert' Statement: Explicitly halts execution with an error message in the demoRevert function.
## License

[MIT](https://choosealicense.com/licenses/mit/)

