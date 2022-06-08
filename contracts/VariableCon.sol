//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract VariableCon{
    // State Variable
    // Variables whose values are permanently stored in a contract storage.
    uint private storedData;

    address private owner;
    uint private blockTimeStamp;

    constructor() {
        // Note: We can Modify the State Variable in the constructor
        storedData=10; // Using State Varibale
        console.log("Stored Data",storedData);

        // Pre Defined Global Variable
        owner=msg.sender;
        console.log("Owner Address => ", owner);

        blockTimeStamp=block.timestamp;
        console.log("Block Time Stamp",blockTimeStamp);
    }

    function getResult() public view returns(uint){
        // Local Variable
        // Variables whose values are present till function is executing.    
        uint value1=2;
        uint value2=2;

        uint result=value1+value2;
        console.log("Local Variable => ",result);

        // Use State Variable in the function
        console.log("Stored Data",storedData);

        // Modify the State Variable
        //storedData=20; // We can Modify the State Variable inside the pure and View Functions

        console.log("Stored Data",storedData);

        // We can Read global Variable inside any function
        console.log("Owner Address => ", msg.sender);
        console.log("Block Time Stamp",block.timestamp);
    
        return result;
    }
}