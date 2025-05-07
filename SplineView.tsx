import React from 'react';
import { View, StyleSheet, Platform, StyleProp, ViewStyle } from 'react-native';
import { WebView } from 'react-native-webview';
import { requireNativeComponent } from 'react-native';

interface SplnViewProps {
  style?: StyleProp<ViewStyle>;
}

const SplnView = requireNativeComponent<SplnViewProps>('SplnView');

interface SplineViewProps {
  variant?: 'webview' | 'native-ios';
  style?: StyleProp<ViewStyle>;
}

const SplineView = ({ variant = 'webview', style }: SplineViewProps) => {
  if (variant === 'native-ios' && Platform.OS === 'ios') {
    return (
      <View style={[styles.container, style]}>
        <SplnView style={{ flex: 1 }} />
      </View>
    );
  }
  
  // default webview
  return (
    <View style={[styles.container, style]}>
      <WebView
        source={{ uri: 'https://my.spline.design/art-0fe762c1edfdc78c9d476e1f67551903/' }}
        style={{ flex: 1 }}
        javaScriptEnabled={true}
        domStorageEnabled={true}
        allowsInlineMediaPlayback={true}
        mediaPlaybackRequiresUserAction={false}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: { flex: 1 }
});

export default SplineView; 