## Ether and Wei

Each transactions in ethereum are paid with currency `ETHER`.

1 ether = 1e18 wei (10 ^ 18 wei)

It is similar to 1 rupees = 100 paisa (1e2 paisa)

`Gas` is something which tells how much you want to pay for ether

You pay `gas spent * gas price` amount of ether, where
- `gas` is a unit of computation
- `gas spent` is the total amount of gas used in a transaction
- `gas price` is how much ether you are willing to pay per gas

Transactions with higher gas price have higher priority to be included in a block.

Unspent gas will be refunded.

There are 2 upper bounds to the amount of gas you can spend
- `gas limit` (max amount of gas you're willing to use for your transaction, set by you)
- `block gas limit` (max amount of gas allowed in a block, set by the network)

