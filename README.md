# Spam Detection with Blockchain Integration

# **Overview**

This project integrates machine learning (ML) with Ethereum blockchain to create a decentralized spam detection system. The ML model operates off-chain, classifying text as spam or not, while the result is stored on-chain via an Ethereum smart contract deployed on the Sepolia testnet.

# **Features**

Spam Detection Model: Uses a Naïve Bayes classifier with TF-IDF vectorization to detect spam.
Ethereum Smart Contract: Records the classification results on-chain.
Blockchain Transparency: Provides immutable proof of spam detection.
Sepolia Testnet Deployment: Uses web3.py to interact with Ethereum.

# **Tech Stack**

Machine Learning: Python, Scikit-learn, TF-IDF, Naïve Bayes
Blockchain: Solidity, Ethereum, Smart Contracts
Development Tools: web3.py, Infura/Alchemy, Etherscan API
Network: Sepolia Testnet
