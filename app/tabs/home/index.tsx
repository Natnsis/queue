import { View } from "react-native"
import { Text } from "@/components/ui/text"
import { SafeAreaView } from "react-native-safe-area-context"
import { colors } from "@/assets/contants"
import { ThemeToggle } from "@/components/ThemeToggle"
import { Feather } from '@expo/vector-icons';
import { Button } from "@/components/ui/button"

const index = () => {
  return (
    <SafeAreaView
      style={{
        height: '100%',
      }}
      className="p-3"
    >
      <View className="flex-row justify-between">
        <Button
          size='icon'
          variant="secondary"
        >
          <Feather name="bell" size={16} />
        </Button>
        <Text
          style={{
            fontFamily: 'semiBold'
          }}
        >
          Hello, Natnael
        </Text>
        <ThemeToggle />
      </View>
    </SafeAreaView>
  )
}

export default index
