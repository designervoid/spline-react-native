import React from 'react';
import {
  SafeAreaView,
} from 'react-native';

import SplineView from './SplineView';

function App(): React.JSX.Element {
  return (
    <SafeAreaView style={{ flex: 1 }}>
      <SplineView variant="webview" style={{ flex: 1 }} />
    </SafeAreaView>
  );
}

export default App;
