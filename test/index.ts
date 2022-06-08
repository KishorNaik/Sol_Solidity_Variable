import { expect } from "chai";
import { ethers } from "hardhat";

// describe("Greeter", function () {
//   it("Should return the new greeting once it's changed", async function () {
//     const Greeter = await ethers.getContractFactory("Greeter");
//     const greeter = await Greeter.deploy("Hello, world!");
//     await greeter.deployed();

//     expect(await greeter.greet()).to.equal("Hello, world!");

//     const setGreetingTx = await greeter.setGreeting("Hola, mundo!");

//     // wait until the transaction is mined
//     await setGreetingTx.wait();

//     expect(await greeter.greet()).to.equal("Hola, mundo!");
//   });
// });


describe("Variable Contract", function () {
  it("Get-Result-Success", async function () {
    const VariableCon = await ethers.getContractFactory("VariableCon");
    const variableConObj = await VariableCon.deploy();
    await variableConObj.deployed();

    expect(await variableConObj.getResult()).to.equal(4);
  });
});