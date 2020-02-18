

### Requirements 
- ubuntu VM
- docker
- web3j 

### Commands to build the java wrapper

1. 
     `sudo docker run --rm -v '/home/indizenlabs/Escritorio/':'/contract' -w '/contract' ethereum/solc:0.6.1 '/contract/LurienContract.sol' --bin --abi --optimize -o '/contract' --overwrite`

2.      
     `web3j solidity generate --binFile=TestLurien.bin --abiFile=TestLurien.abi -p contract.model -o src/main/java/`

### USeful links

- [Medium building local eth network](https://medium.com/@javahippie/building-a-local-ethereum-network-with-docker-and-geth-5b9326b85f37)
- [Fullstack hello world smart contract](https://techbrij.com/hello-world-smart-contract-solidity-ethereum-dapp-part-1)
- [Solidity smart contract events](https://ethereum.stackexchange.com/questions/47398/smart-contract-events)
- [How data is stored in ethereum](https://hackernoon.com/getting-deep-into-ethereum-how-data-is-stored-in-ethereum-e3f669d96033)
- [Solidity tutorial](https://www.youtube.com/watch?v=ipwxYa-F1uY)
- [Create and deploy smart contracts with solidity](https://www.baeldung.com/smart-contracts-ethereum-solidity)(
- [Truffle Ganache Geth and Mist](https://hackernoon.com/ethereum-development-walkthrough-part-2-truffle-ganache-geth-and-mist-8d6320e12269)
- [Interacting with deployed smart contracts with truffle](https://medium.com/@blockchain101/interacting-with-deployed-ethereum-contracts-in-truffle-39d7c7040455)
- [Blockchain using custom ethereum network in java](https://sgitario.github.io/blockchain-using-java/)