import { View, Text } from "react-native"

const QueueHeader = () => {
  return (
    <View className="mt-3">
      <Text
        style={{
          fontFamily: 'bold',
          fontSize: 24,
          lineHeight: 26
        }}
      >
        Queue Status
      </Text>
      <Text
        style={{
          fontFamily: 'italic',
          fontSize: 12,
        }}
      >
        Real-time updates
      </Text>
    </View>
  )
}

export default QueueHeader
