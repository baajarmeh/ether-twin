REM start cmd /k bootnode -nodekey network/boot.key -verbosity 9 -addr :30310
REM start cmd /k geth --datadir network/go-ethereum/node1/ --syncmode full --targetgaslimit 9000000000000 --port 30311 --rpc --rpcaddr localhost --rpcport 8501 --rpcapi 'personal,db,eth,net,web3,txpool,miner' --bootnodes enode://a4e46f974d72e364dc4f1caf21057f11f3c0e0c2283851c212aac33b33670fe7c742c20e7922e0dca79f49a3766246a89ef62f966153a3ec2cc3585217d8af7a@127.0.0.1:30310 --networkid 1723 --gasprice 0 --unlock 0x4800e002af6258e48991dad2ef60e46bc1785f41 --password network/node1/password.txt --mine --ipcdisable
REM start cmd /k geth --datadir network/go-ethereum/node2/ --syncmode full --targetgaslimit 9000000000000 --port 30312 --rpc --rpcaddr localhost --rpcport 8502 --rpcapi 'personal,db,eth,net,web3,txpool,miner' --bootnodes enode://a4e46f974d72e364dc4f1caf21057f11f3c0e0c2283851c212aac33b33670fe7c742c20e7922e0dca79f49a3766246a89ef62f966153a3ec2cc3585217d8af7a@127.0.0.1:30310 --networkid 1723 --gasprice 0 --unlock 0x3b1c1d637053d919e3d91d9bd3c448a73d758c40 --password network/node2/password.txt --mine --ipcdisable
REM start cmd /k bootnode -nodekey network/boot_swarm.key -verbosity 9 -addr :30410 
REM start cmd /k swarm  --verbosity 6 --swap-api enable --config network/node1/config.toml --password network/node1/password.txt --keystore C:/tmp/parity0/keys/EtherTwin --bootnodes enode://fa6e033ebe442df4fc37f5644464ba259e4be885dc3df22e29accbfa5e0920835cdd5fae2853d123054e78eef162afb62a003456321c87cdac0e144c046e7aec@127.0.0.1:30410  --port 30555 --ipcdisable
REM start cmd /k swarm  --verbosity 6 --swap-api enable --config network/node2/config.toml --password network/node2/password.txt --keystore C:/tmp/parity1/keys/EtherTwin --bootnodes enode://fa6e033ebe442df4fc37f5644464ba259e4be885dc3df22e29accbfa5e0920835cdd5fae2853d123054e78eef162afb62a003456321c87cdac0e144c046e7aec@127.0.0.1:30410  --port 30666 --ipcdisable
