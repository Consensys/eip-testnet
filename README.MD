## EIP-1559

https://eips.ethereum.org/EIPS/eip-1559

## Network topology

| Node        | Address                                  | RPC port | P2P port |
| ----------- | ---------------------------------------- | -------- | -------- |
| geth-node-1 | fe3b557e8fb62b89f4916b721be55ceb828dbd73 | 8545     | 30303    |
| geth-node-2 | 627306090abaB3A6e1400e9345bC60c78a8BEf57 | 8546     | 30304    |
| besu-node   | f17f52151EbEF6C7334FAD080c5704D77216b732 | 8547     | 30305    |

## Setup

```sh
sh eip1559/setup.sh
```

## Deploy network

```sh
sh eip1559/deploy-network.sh
```

## Setup and deploy network

```sh
sh eip1559/bootstrap.sh
```
