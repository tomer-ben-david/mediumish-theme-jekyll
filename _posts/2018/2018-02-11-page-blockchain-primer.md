---
title:  "Blochchain Primer"
date:   2018-02-11 07:18:00
categories: blockchain
comments: true
permalink: blockchain-primer
---

| Term              | Description                                                  |
| ----------------- | ------------------------------------------------------------ |
| Blockchain        | Think reversed linked list or linked stack                   |
| Merkle Tree       | ![merkle tree](https://i.stack.imgur.com/2Ep7y.png)<br />To verify transaction `Hk` is in tree need: `HL` + `Hij` + `Hmnop` + `Habcdefgh` |
| Merkle DAG        | DAG just means you have multiple roots to your tree          |
| 10 Minutes Blocks | It takes around 10 minutes for each block to be mined: https://data.bitcoinity.org/bitcoin/block_time/5y?f=m10&t=l |
| Concensus         | Think of nodes agreeing on a google-doc these are the blocks of transactions |
| Difficulty        | It is difficult to submit changes to the system (the bitcoin blockchain system) |
| has(block+nounce) | Nounce => random guess the random to get 111111              |
| Fork              | Two new blocks reference the curren blockchain               |
| Fork resolution   | They just pick the larger fork                               |
| namecoin          | Blockchain for domain names, distributed KV storage          |
| Scripts           | Blockchain has simple script language, transfer money        |
| New blockchains   | People fork the code and need to convince other people to use that coin or whatever |
| ETH               | General blockchain, that can run script with simple VM, write data, Turing complete |
| ETH Concensus     | You want the data in concensus                               |
| Resources         | https://hackernoon.com/merkle-trees-181cb4bc30b4<br />       |

