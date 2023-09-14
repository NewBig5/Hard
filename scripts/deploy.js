// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const hre = require("hardhat");

async function main() {

  const lock = await hre.ethers.deployContract("Test");

  await lock.waitForDeployment();

  let tx = await lock.test()
  let rec = await tx.wait()
  console.log("rec:", rec)

  console.log("len:", (await lock.getLength()).toString())
  console.log("x:", await lock.groups(0))
  console.log("x:", await lock.groups(1))
  console.log("x:", await lock.groups(2))
  console.log("x:", await lock.groups(3))
  console.log("x:", await lock.groups(4))
  console.log("x:", await lock.groups(5))
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
