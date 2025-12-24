# iris-eyewear-codex  

## Overview  
This repository is a starter template for an iOS app that uses 3D scanning for eyewear and integrates OpenAI Codex features. It includes:  
- Xcode project skeleton for a Swift-based iOS app.  
- Sample code demonstrating how to call Codex to assist with 3D scanning or UI tasks.  
- Prompt examples stored in the `prompts` folder.  
- A GitHub Actions workflow that performs a basic codex-lint/test placeholder.  

## Setup  
1. Clone this repository and open `IrisEyewear.xcodeproj` in Xcode.  
2. Ensure you have the latest Xcode version and an Apple Developer account.  
3. Install any dependencies (e.g. via Swift Package Manager if you add libraries).  
4. Build and run the app on an iOS device or simulator.  

## Sample Codex usage  
The `CodexSample.swift` file shows how you might wrap calls to the OpenAI Codex API. Replace the placeholder API key and base URL with your own. Use the prompt examples in the `prompts` directory to guide the model.  

## GitHub Actions  
The `.github/workflows/codex.yml` workflow runs on each push. It currently performs a placeholder lint/test to verify that the repository builds. You can extend it to include Swift build commands or integrate a Codex linter as needed.  

## Contributing  
Feel free to extend the Xcode project with real 3D scanning functionality and improve Codex integration. Pull requests are welcome.
