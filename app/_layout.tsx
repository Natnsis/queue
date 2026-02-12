import '@/global.css';

import { NAV_THEME } from '@/lib/theme';
import { ThemeProvider } from '@react-navigation/native';
import { PortalHost } from '@rn-primitives/portal';
import { Stack } from 'expo-router';
import { StatusBar } from 'expo-status-bar';
import { useColorScheme } from 'nativewind';
import { useFonts } from 'expo-font'

export {
  ErrorBoundary,
} from 'expo-router';

export default function RootLayout() {
  const { colorScheme } = useColorScheme();

  const [loaded] = useFonts({
    regular: require("@/assets/fonts/regular.ttf"),
    bold: require("@/assets/fonts/bold.ttf"),
    boldItalic: require("@/assets/fonts/bold-italic.ttf"),
    italic: require("@/assets/fonts/italic.ttf"),
    medium: require("@/assets/fonts/medium.ttf"),
    mediumItalic: require("@/assets/fonts/medium-italic.ttf"),
    semiBold: require("@/assets/fonts/semi-bold.ttf"),
    semiBoldItalic: require("@/assets/fonts/semi-bold-italic.ttf"),
  });

  if (!loaded) return null;

  return (
    <ThemeProvider value={NAV_THEME[colorScheme ?? 'light']}>
      <StatusBar style={colorScheme === 'dark' ? 'light' : 'dark'} />
      <Stack />
      <PortalHost />
    </ThemeProvider>
  );
}
