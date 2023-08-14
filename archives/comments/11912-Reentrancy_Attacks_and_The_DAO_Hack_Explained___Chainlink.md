# title
Reentrancy Attacks and The DAO Hack Explained | Chainlink

# author
Zubin Pratap

# publisher
blog.chain.link

# date
2022-08

# chapter
搜神

# tag
Solidity, Ethereum, The DAO, Reentrancy Attacks, Security

# remarks
`先发钱, 结束才update balance, 结果recursive了`

They are unnamed.
They are externally called (i.e. they cannot be called from inside the contract in which they are written).
There can be zero or one fallback functions per contract—no more.
They are automatically triggered when another contract calls a function in the fallback’s enclosing smart contract, but that called function name does not match or exist.
They can also be triggered if ETH is sent to the fallback’s enclosing contract, there is no accompanying “calldata” (a data location like memory or storage), and there is no receive() function declared—in this circumstance a fallback must be marked payable for it to trigger and receive the ETH.
Fallback functions can include arbitrary logic in them.

The hacker deploys a smart contract that acts as the “investor,” and this contract deposits some ETH into The DAO. This entitles the hacker to later call the withdraw() function in The DAO’s smart contract. When the withdraw() function is eventually called, The DAO’s contract sends ETH to the hacker. But the hacker’s smart contract intentionally does not have a receive() function, so when it receives ETH from the withdraw request, the hacker’s fallback function gets triggered. This fallback function could have been empty and still received the ETH, but instead it has some malicious code in it. 

This code, immediately upon execution, calls The DAO’s smart contract’s withdraw() function again. This sets off a loop of calls because at this point the first call to withdraw() is still executing. It will only finish executing when the hacker contract’s fallback function finishes, but that instead has re-called withdraw(), which kicks off a nested cycle of calls between the hacker contract and The DAO’s smart contract.