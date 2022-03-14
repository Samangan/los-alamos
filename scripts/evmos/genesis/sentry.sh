            #!/bin/sh

            CHAIN_DIR=/root/.evmosd

            if [ ! -d $CHAIN_DIR ]; then
              CONFIG_DIR=$CHAIN_DIR/config
              # Initialize config
              evmosd init --chain-id evmos_9001-1 sentry

              # Get Genesis JSON
              wget -O $CONFIG_DIR/genesis.json https://archive.evmos.dev/genesis/genesis.json

              PERSISTENT_PEERS="b3495a71f1b80938f5cfedc301a1b424e70e7507@185.16.38.47:26656,3d054ed237aa0f7955dcf6323e86189bee5969be@161.97.66.225:26656,fa87770116a8a44f426b6e127889b472ccec1022@65.108.137.124:26656,043052f49df9c27c1b9a51a186fd215769f433ee@116.203.196.239:26656,3048f727646c88721dc53fd3ce5bd2bedcbcc1b4@65.108.214.109:26656,435bf138fac0cd5ce06fa004be575445f9a9f9e0@168.119.89.31:26656,5fa1390cf291038165435d3cdab6ece1f6f90767@88.217.142.187:26756,588cedb70fa1d98c14a2f2c1456bfa41e1a156a8@evmos-sentry.mercury-nodes.net:29539,ef2b362ee111f2981c4f1b7393a79bd388b31154@157.90.179.182:26756,c10e55af85131a9c80e9900ed40bf32df5d15795@65.21.88.252:26656,bc4603cf97a6e84d765b6c5f9bfe2a51f3cbd59e@185.207.250.46:26656,668631f891a237bcf07a44dda9d29dfcc0bda87a@128.199.31.170:26656,75216825be4441ec7c9fa558ecd145b2a5f864c8@135.181.113.225:26656,208107dc1275bcdcd824015b127084aa9446c620@5.189.129.30:26656,af62bbb6888e6812ea2053347ff8065176d973c5@52.52.75.101:26656,1b3d176cd2f40033f9ff82408526d60b3eb90f24@138.201.17.11:26656,be5605ba50ef502ece9b0e31ba7aea6dc1c70c2d@95.217.194.249:26656,b02259a11e4ee46b29668cfc957e530022a3fca1@62.171.142.145:26656,c88f6547b007454ceae89bbf86dd01d42eb6c6d9@65.108.145.68:26656,8d2b64d64aea06b9ecfc30dc8041bd66fb41ccca@5.9.87.216:45556,069c620f8fb912e2b173c9f822bbf14069e5fd5a@159.69.21.209:26656,632efff696169de52ae241ca46c149ff8ea560aa@159.69.16.165:26656,9bafe0c7da07d74cd3b207cffd2832b22cbe08aa@178.18.252.117:26656"
              SEEDS="b3495a71f1b80938f5cfedc301a1b424e70e7507@185.16.38.47:26656,3d054ed237aa0f7955dcf6323e86189bee5969be@161.97.66.225:26656,fa87770116a8a44f426b6e127889b472ccec1022@65.108.137.124:26656,043052f49df9c27c1b9a51a186fd215769f433ee@116.203.196.239:26656,3048f727646c88721dc53fd3ce5bd2bedcbcc1b4@65.108.214.109:26656,435bf138fac0cd5ce06fa004be575445f9a9f9e0@168.119.89.31:26656,c10e55af85131a9c80e9900ed40bf32df5d15795@65.21.88.252:26656,bc4603cf97a6e84d765b6c5f9bfe2a51f3cbd59e@185.207.250.46:26656,668631f891a237bcf07a44dda9d29dfcc0bda87a@128.199.31.170:26656,75216825be4441ec7c9fa558ecd145b2a5f864c8@135.181.113.225:26656,208107dc1275bcdcd824015b127084aa9446c620@5.189.129.30:26656,af62bbb6888e6812ea2053347ff8065176d973c5@52.52.75.101:26656,1b3d176cd2f40033f9ff82408526d60b3eb90f24@138.201.17.11:26656,be5605ba50ef502ece9b0e31ba7aea6dc1c70c2d@95.217.194.249:26656,b02259a11e4ee46b29668cfc957e530022a3fca1@62.171.142.145:26656,c88f6547b007454ceae89bbf86dd01d42eb6c6d9@65.108.145.68:26656,069c620f8fb912e2b173c9f822bbf14069e5fd5a@159.69.21.209:26656,632efff696169de52ae241ca46c149ff8ea560aa@159.69.16.165:26656,9bafe0c7da07d74cd3b207cffd2832b22cbe08aa@178.18.252.117:26656,71078fa8a580a4e407e46a4fd07ac16276edddb8@142.132.156.243:26656,a6e35209e5bc4e1e1b0a362939b5e85e8a0edbff@85.190.134.34:26656,55ddd24b23f53c6f2f8ce524662e9c9e92b70df6@65.108.47.229:26656,799fe52ab5ee666f625d4099c9bd9914ad3fa81f@178.18.246.96:26656,0188876ca9927965ce7af86dbe0505080434f0b7@142.132.206.174:26656,4ba9a18cfa51535000da144d3eb37e9529483ca9@65.21.235.232:26656,b3ec65f24ec3f788b10931ddffb1e912678dc1be@135.181.22.238:26656,36a912e3750748016735878156f65655067bcca0@65.108.120.3:26656,a7bc6b035d605377e522f64f8b8061d60d6d3e9f@evmos.3ventures.io:26656,6fe993d412221e187e86f4b35a31c936e156cf15@38.146.3.158:26656,0000021e8c15c11b59252c2b161a7a873107aee2@evmos.merak.run:26656,503cf6c8218c8d668e9ee2814433ca4b047ec08d@149.28.154.134:26656,5db7d338b77a71edbe3338e63983349fdd541daa@194.163.177.46:26656,c0d4824c9330e46d3a27c979317481f62e3013f5@89.33.8.227:26656,be50d0f7d9fd803726581fcf4c078c8f6349941e@66.94.127.151:26656,5740e4a36e646e80cc5648daf5e983e5b5d8f265@54.39.18.27:26656,6e8e73f66fff2081be8312d4cdc22e818ea529c4@35.215.34.1:26656,b29b9aa5984244d2bba9b63ad21705376a0dff2f@167.99.185.88:26656,83d7d6d4ec1d16ece2a2bad6147f0f5bc473b0a7@202.61.204.123:26656,526b998689a5038fd61e50720d0c2670c92949d1@94.130.8.121:26656,de2c5e946e21360d4ffa3885579fa038a7d9776e@46.101.148.190:26656,91551284a5e43524cafc260e76c53c065b348d9d@18.184.144.208:26656,906840c2f447915f3d0e37bc68221f5494f541db@3.39.58.32:26656,906840c2f447915f3d0e37bc68221f5494f541db@3.39.58.32:26656,7aa31684d201f8ebc0b1e832d90d7490345d77ee@52.10.99.253:26656,f6aca6dbb9ff6936c6946e6470d6b5f8d0fa3962@141.95.84.172:26656,4ea5910b83a245cb471db58a568a9aa26462931f@104.243.35.100:26656,6e032680b61b3bf07eb0e7b5756b8ce75538abd3@95.216.101.238:26656,0c00c374966dafb5b14b7cd1fea25d3c05eb4435@65.108.103.40:26656,9ff4b21aaebd1235fb7bf4fbf31bf9b74f1af862@194.163.172.168:26656,ae024b54cc16dd7f33e83550c150796b2cd7450b@95.214.55.43:26656,a27a4678cfa5f64d90e4580e501a7e1cde32785e@173.249.5.56:26656,466073c94d5ed8430ad9a52c89f8c61cebda9983@75.119.141.19:26656,bf2b2c9bd100c09400aea35408c2979eb362d119@65.21.229.33:26656"
              MINIMUM_GAS_PRICE="0.0001aevmos"

              # config.toml
              CONFIG_FILE=$CONFIG_DIR/config.toml
              sed -i '/^indexer = .*/ s//indexer = "null"/' $CONFIG_DIR/config.toml
              sed -i "/^persistent_peers = .*/ s//persistent_peers = \"$PERSISTENT_PEERS\"/" $CONFIG_FILE
              sed -i "/^seeds = .*/ s//seeds = \"$SEEDS\"/" $CONFIG_FILE
              sed -i "/^external_address = .*/ s//external_address = \"$(curl -s ifconfig.me):26656\"/" $CONFIG_FILE
              sed -i '/^max_num_inbound_peers = .*/ s//max_num_inbound_peers = 80/' $CONFIG_FILE
              sed -i '/^max_num_outbound_peers = .*/ s//max_num_outbound_peers = 80/' $CONFIG_FILE

              # app.toml
              APP_FILE=$CONFIG_DIR/app.toml
              sed -i '/^pruning = .*/ s//pruning = "custom"/' $APP_FILE
              sed -i '/^pruning-keep-recent = .*/ s//pruning-keep-recent = "100"/' $APP_FILE
              sed -i '/^pruning-keep-every = .*/ s//pruning-keep-every = "0"/' $APP_FILE
              sed -i '/^pruning-interval = .*/ s//pruning-interval = "10"/' $APP_FILE
              sed -i "/^minimum-gas-prices = .*/ s//minimum-gas-prices = \"$MINIMUM_GAS_PRICE\"/" $APP_FILE
              sed -i "/^snapshot-interval = .*/ s//snapshot-interval = 0/" $APP_FILE
            fi

            # sleep 30

            evmosd start --x-crisis-skip-assert-invariants