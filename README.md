# 🔐 Simple Vault System (Solidity)

This is a basic Ethereum smart contract system that allows users to **deposit** and **withdraw** Ether securely.

## Features

- Uses a math library (`SafeMathLib`) for safe arithmetic
- Emits events on deposit and withdraw
- Prevents over-withdrawal and zero ETH deposits
- Uses inheritance: `VaultBase` (base) and `VaultManager` (main contract)

## File Overview

- `SafeMathLib.sol` – Library for safe math operations
- `VaultBase.sol` – Abstract contract with shared balance logic and events
- `VaultManager.sol` – Inherits from `VaultBase` and implements deposit/withdraw

## How to Use

1. **Deploy `VaultManager.sol`**
2. **Call `deposit()`** – Send some ETH along with the transaction
3. **Call `withdraw(amount)`** – Withdraw ETH (must be less than or equal to your balance)
4. **Call `getBalance(address)`** – Check your balance

## Requirements

- Solidity ^0.8.0
- ETH balance in your wallet
- Use Remix or Hardhat for deployment and testing

## Notes

- `require()` ensures deposits are non-zero and withdrawals are safe
- All balance changes emit `Deposited` and `Withdrawn` events

