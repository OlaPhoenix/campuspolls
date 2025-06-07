<img src="https://raw.githubusercontent.com/OlaPhoenix/campuspolls/main/assets/images/appicon.png"
alt="CampusPolls logo"
width="100"
height="100"/>

# CampusPolls
Modern blockchain-based election platform designed specifically for campus elections and class representative (CR) elections. Features gasless transactions via Biconomy, intuitive Flutter mobile interface, and transparent Solidity smart contracts on Polygon PoS - making secure, verifiable campus voting accessible to everyone.

# 🎯 Overview
Traditional campus elections face significant challenges including centralized vote counting, lack of transparency, potential manipulation, high operational costs, and poor student engagement due to complex voting processes. CampusPolls solves these issues by leveraging blockchain technology to create a transparent, secure, and cost-effective voting solution where students can vote directly from their mobile devices without needing cryptocurrency knowledge, while administrators can manage elections with complete transparency and immutable vote records.

# 🛠 Technology Stack
<img src="https://raw.githubusercontent.com/OlaPhoenix/campuspolls/main/assets/images/techstack.jpg"
alt="Tech Stack"
width="800"
height="400"/>

# 🏗 Architecture
┌─────────────────┐    ┌──────────────────┐    ┌─────────────────┐
│   Flutter App   │◄──►│   Firebase Auth  │    │   Firestore     │
│   (Frontend)    │    │   & Database     │    │   (User Data)   │
└─────────────────┘    └──────────────────┘    └─────────────────┘
         │                                               │
         ▼                                               ▼
┌─────────────────┐    ┌──────────────────┐    ┌─────────────────┐
│   Web3 Service  │◄──►│   Biconomy API   │◄──►│  Polygon PoS    │
│   (Gasless TX)  │    │  (Meta-TX Relay) │    │   Network       │
└─────────────────┘    └──────────────────┘    └─────────────────┘
         │                                               │
         ▼                                               ▼
┌─────────────────┐                              ┌─────────────────┐
│ Smart Contract  │                              │   Blockchain    │
│ (Election.sol)  │◄────────────────────────────►│   (Immutable    │
└─────────────────┘                              │    Ledger)      │
                                                 └─────────────────┘