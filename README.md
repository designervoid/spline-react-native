# Spline for React Native (iOS Native & Cross-Platform via WebView)

Integrate [Spline](https://spline.design), a 3D scene tool — into your React Native app.  
Native support is currently available for iOS only.  
For cross-platform (iOS + Android), use `spline-web` with `react-native-webview`.

| Platform | Android                                                                                      | iOS                                                                                          |
|----------|-----------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
| Preview  | <img src="https://github.com/user-attachments/assets/2a277960-a8c0-4453-b1da-053c729f6918" width="200"/> | <img src="https://github.com/user-attachments/assets/2d6e603b-1f33-4e08-9e8e-a910941d4df8" width="200"/> |

| Platform | Native Support         | WebView Support              |
|----------|------------------------|------------------------------|
| iOS      | ✅ `SplnView.swift`    | ✅ `react-native-webview`    |
| Android  | ❌ Not yet supported    | ✅ `react-native-webview`    |

## Getting Started

Make sure your React Native environment is set up. If not, follow the [official guide](https://reactnative.dev/docs/environment-setup).

### 1. Install Dependencies

```bash
npm install
# or
yarn install
```

### 2. Run the App

Start the Metro bundler:

```bash
npm start
# or
yarn start
```

Launch the iOS app:

```bash
npm run ios
# or
yarn ios
```

## Native iOS Setup with SplnView

To use native Spline integration on iOS:

1. Add `SplnView.swift` to your Xcode project.
2. Make sure it's included in your build target.
3. Add a bridging header if needed (for Swift + Objective-C).

### Customization

You can extend or modify `SplnView.swift` as needed — update properties, methods, or embed additional functionality.

## Troubleshooting

- Ensure Xcode is properly configured for Swift and React Native.
- Verify the Spline runtime and your scene URL.
- Check your WebView permissions and links if using the cross-platform approach.

## Resources

- [Spline Docs](https://docs.spline.design/native-3d-embeds-for-ios)
- [React Native Docs](https://reactnative.dev/docs/getting-started)
