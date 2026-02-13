import { View } from "react-native"
import { Text } from "@/components/ui/text"
import { SafeAreaView } from "react-native-safe-area-context"

const index = () => {
  return (
    <SafeAreaView
      style={{
        height: '100%',
      }}
      className="p-3"
    >
      <Text>hehe</Text>
    </SafeAreaView>
  )
}

export default index
