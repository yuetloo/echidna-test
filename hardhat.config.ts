import { HardhatUserConfig, task } from "hardhat/config";
import "@typechain/hardhat";

// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

const config: HardhatUserConfig = {
  solidity: {
    version: "0.8.4",
    settings: {
      optimizer: {
        enabled: true,
        runs: 2000,
      },
    },
  },
  defaultNetwork: "hardhat",
  networks: {
    ropsten: {
      url: process.env.ROPSTEN_URL || "",
      accounts: [],
    },
  },
};

export default config;
