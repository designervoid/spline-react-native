This is a new [**React Native**](https://reactnative.dev) project, bootstrapped using [`@react-native-community/cli`](https://github.com/react-native-community/cli).

# Spline for React Native (iOS Only)

Welcome to Spline for React Native! This guide will walk you through integrating Spline, a powerful tool for 3D scene creation, with React Native for iOS applications.

## Getting Started

Before you begin, ensure you have React Native environment set up. If you haven't done so, follow the instructions up to "Creating a new application" on the React Native Environment Setup.

## Prerequisites

Xcode installed on a Mac (for iOS development).
An initialized React Native project.

## Step 1: Install dependencies

```bash
npm install # Using npm
# OR
yarn install # Using Yarn
```

## Step 2: Run Your Application

Start Metro Bundler
First, start Metro, the JavaScript bundler for React Native:

```bash
npm start # Using npm
# OR
yarn start # Using Yarn
```

## Start iOS App
In a new terminal window, launch your iOS app:

```bash
npm run ios # Using npm
# OR
yarn ios # Using Yarn
```

The iOS Simulator should open with your app running.

## Step 3: Using SplnView

SplnView is your gateway to incorporating Spline into React Native. Here's how to use it:

Add `SplnView.swift` to Your iOS Project:

Include the `SplnView.swift` file in your Xcode project.
Ensure it's targeted to your React Native project.
Use a bridging header if needed for Swift and Objective-C integration.

### Customizing SplnView
Modify `SplnView.swift` to suit your needs:

Open `SplnView.swift` in Xcode.
Adjust its properties, methods, or add new functionalities.
Troubleshooting

If you encounter issues:

1. Check your `Xcode` project setup for `Swift` and `React Native`.
2. Ensure Spline Runtime is installed and configured correctly.
3. Confirm the Spline scene URL is valid.

## Additional Resources

[Spline Documentation](https://docs.spline.design/native-3d-embeds-for-ios) - Learn more about Spline.

[React Native Documentation](https://reactnative.dev/docs/getting-started) - Deep dive into React Native.

## P.S

This guide provides a basic framework for integrating Spline with React Native in iOS. 
For advanced use cases, explore detailed Spline documentation and React Native's extensive resources.