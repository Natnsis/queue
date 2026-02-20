import '@/global.css';

import { NAV_THEME } from '@/lib/theme';
import { ThemeProvider } from '@react-navigation/native';
import { PortalHost } from '@rn-primitives/portal';
import { Stack } from 'expo-router';
import { StatusBar } from 'expo-status-bar';
import { useFonts } from 'expo-font'
import { Appearance } from 'react-native';

Appearance.setColorScheme('light');

export {
  ErrorBoundary,
} from 'expo-router';

export default function RootLayout() {

  const [loaded] = useFonts({
    black: require("@/assets/fonts/Rubik-Black.ttf"),
    bold: require("@/assets/fonts/Rubik-Bold.ttf"),
    extraBold: require("@/assets/fonts/Rubik-ExtraBold.ttf"),
    light: require("@/assets/fonts/Rubik-Light.ttf"),
    medium: require("@/assets/fonts/Rubik-Medium.ttf"),
    regular: require("@/assets/fonts/Rubik-Regular.ttf"),
  });

  if (!loaded) return null;

  return (
    <ThemeProvider value={NAV_THEME['light']}>
      <StatusBar style='dark' />
      <Stack screenOptions={{ headerShown: false }} />
      <PortalHost />
    </ThemeProvider>
  );
}
