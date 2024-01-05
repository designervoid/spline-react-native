/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React from 'react';
import {
  SafeAreaView,
} from 'react-native';

import {
  requireNativeComponent
} from 'react-native'
const SplnView = requireNativeComponent("SplnView")

function App(): React.JSX.Element {
  return (
    <SafeAreaView>
      <SplnView />
    </SafeAreaView>
  );
}

export default App;
