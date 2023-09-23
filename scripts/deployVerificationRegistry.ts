import { ethers, lacchain } from "hardhat";
import { formatBytes32String } from "ethers/lib/utils";

async function main() {
  const accounts = lacchain.getSigners();
  const artifactName = "VerificationRegistry";
  const defaultDidRegistry = "0x43dE0954a2c83A415d82b9F31705B969b5856003"; // UPDATE this!
  const defaultDelegateType = formatBytes32String("sigAuth"); // bytes32 right padded
  console.log(defaultDelegateType);
  const Artifact = await ethers.getContractFactory(artifactName, accounts[0]);
  console.log("Using Base Relay Address:", lacchain.baseRelayAddress);
  const instance = await lacchain.deployContract(
    Artifact,
    lacchain.baseRelayAddress,
    defaultDidRegistry,
    defaultDelegateType
  );
  console.log(
    `${artifactName} instance successfully deployed at address: ` +
      instance.address
  );
  // const contract = Artifact.attach(instance.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
