<img src="https://raw.githubusercontent.com/OlaPhoenix/campuspolls/main/assets/images/appicon.png"
alt="CampusPolls logo"
width="100"
height="100"/>

# CampusPolls
Modern blockchain-based election platform designed specifically for campus elections and class representative (CR) elections. Features gasless transactions via Biconomy, intuitive Flutter mobile interface, and transparent Solidity smart contracts on Polygon PoS - making secure, verifiable campus voting accessible to everyone.

# 🎯 Overview
Traditional campus elections face significant challenges including centralized vote counting, lack of transparency, potential manipulation, high operational costs, and poor student engagement due to complex voting processes. CampusPolls solves these issues by leveraging blockchain technology to create a transparent, secure, and cost-effective voting solution where students can vote directly from their mobile devices without needing cryptocurrency knowledge, while administrators can manage elections with complete transparency and immutable vote records.

# 🎬 Demo
[![Watch the demo](https://img.youtube.com/vi/DAYz8uXpXIM/0.jpg)](https://www.youtube.com/watch?v=DAYz8uXpXIM)

# 🛠 Technology Stack
<img src="https://raw.githubusercontent.com/OlaPhoenix/campuspolls/main/assets/images/techstack.jpg"
alt="Tech Stack"
width="800"
height="400"/>

# 🏗 Architecture
<img src="https://raw.githubusercontent.com/OlaPhoenix/campuspolls/main/assets/images/architecture.jpg"
alt="Architecture"
width="600"
height="400"/>

# 🔧 Installation & Setup
**Prerequisites**

* Flutter SDK (>=3.0.0)
* Android Studio / VS Code
* Firebase Account
* Biconomy Account
* Polygon Network Access

*Step 1: Clone and Install*
```bash
# Clone the repository
git clone https://github.com/OlaPhoenix/campuspolls.git
cd campuspolls

# Install Flutter dependencies
flutter pub get 
```

*Step 2: Firebase Configuration*

* Create a new project in Firebase Console
* Enable Email/Password Authentication
* Enable Firestore Database with read/write access
* Download and add configuration files:
    * google-services.json

*Step 3: Firestore Database Setup*

Create a users collection with admin document:

```json
{
  "email": "admin@university.edu",
  "admin": true,
  "address": "0x****************************",
  "department": "department",
  "role": "admin"
}
```

*Step 4: Biconomy Configuration*

* Create account at Biconomy Dashboard
* Create a new DApp for campus elections
* Configure gasless transaction policies
* Get API key and update configuration

*Step 5: Smart Contract Deployment*
```bash
# Install dependencies
npm install

# Deploy to Amoy testnet
npx hardhat run scripts/deploy.js --network amoy
```

*Step 6: Update Configuration Files*

lib/services/web3_service.dart:

```dart
static const String contractAddress = 'YOUR_DEPLOYED_CONTRACT_ADDRESS';
static const String biconomyApiKey = 'YOUR_BICONOMY_API_KEY';
```
Network Configuration:
```dart
static const String rpcUrl = 'https://rpc-amoy.polygon.technology/';
static const int chainId = 80002;
```

*Step 7: Running the Application*
```bash
# Check connected devices
flutter devices

# Run on emulator
flutter run
```