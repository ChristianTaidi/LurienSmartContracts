### Commands to build the java wrapper

- required ubuntu VM

1.
     sudo docker run --rm -v '/home/indizenlabs/Escritorio/':'/contract' -w '/contract' ethereum/solc:0.6.1 '/contract/LurienContract.sol' --bin --abi --optimize -o '/contract' --overwrite

2.      
     web3j solidity generate --binFile=TestLurien.bin --abiFile=TestLurien.abi -p contract.model -o src/main/java/
