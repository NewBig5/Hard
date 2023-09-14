require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.19",
  networks:{
    wanTestnet: {
      gasPrice:2e9,
      gasLimit: 2e7,
      url: "http://gwan-testnet.wandevs.org:36891",
      accounts: [process.env.PK]
    }
  }
};
