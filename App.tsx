/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React from 'react';
import {
  StyleSheet,
  View,
} from 'react-native';

import {
  requireNativeComponent
} from 'react-native'
const SplnView = requireNativeComponent("SplnView")

function App(): React.JSX.Element {
  return (
    <View style={{ position: 'absolute', display: 'flex', height: 100, width: 100, zIndex: 99, left: 0, top: 100}}>
            <SplnView />
          </View>
  );
}

const styles = StyleSheet.create({
  sectionContainer: {
    marginTop: 32,
    paddingHorizontal: 24,
  },
  sectionTitle: {
    fontSize: 24,
    fontWeight: '600',
  },
  sectionDescription: {
    marginTop: 8,
    fontSize: 18,
    fontWeight: '400',
  },
  highlight: {
    fontWeight: '700',
  },
});

export default App;
