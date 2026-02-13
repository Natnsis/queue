import { View } from "react-native"
import { Text } from "@/components/ui/text"
import { SafeAreaView } from "react-native-safe-area-context"
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
      <View className="flex-row justify-between items-center">
        <Text
          style={{
            fontFamily: 'semiBold'
          }}
        >
          Hello, Natnael
        </Text>
        <Button
          size='icon'
          variant="secondary"
        >
          <Feather name="bell" size={16} />
        </Button>
      </View>
    </SafeAreaView>
  )
}

export default index
