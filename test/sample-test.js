const { expect } = require("chai");
const { hashMessage } = require("ethers/lib/utils");
const { ethers } = require("hardhat");

describe("Get Floor Price", function () {
  it("Should return the floor price for the opensea collection", async function () {
    const [owner] = await ethers.getSigners();

    const FPrice = await ethers.getContractFactory("GetFloorPrice")
    console.log("hi")
    const price = await FPrice.deploy();
    await price.deployed();

    async function getTheBeta(){
      try{
        //expect(await price.get()).to.be.an('array');
        const hh = await price.methods.getFloorPrice()
        console.log( hh ,"el beta")
       }catch(err){
         console.log(err)
       }
      
    }
    
    getTheBeta()
     
    
   // expect(await price.getPrice()).to.equal("Hello, world!");
    
    

/*
    const setGreetingTx = await greeter.setGreeting("Hola, mundo!");

    // wait until the transaction is mined
    await setGreetingTx.wait();

    expect(await greeter.greet()).to.equal("Hola, mundo!");*/
  });
});
