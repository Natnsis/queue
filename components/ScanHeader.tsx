import { View, Text } from "react-native"

const ScanHeader = () => {
  return (
    <View className="mt-3">
      <Text
        style={{
          fontFamily: 'bold',
          fontSize: 24,
          lineHeight: 26
        }}
      >
        Scan QR code
      </Text>
      <Text
        style={{
          fontFamily: 'light',
          fontSize: 12,
        }}
      >
        position your camera inside the frame
      </Text>
    </View>
  )
}

export default ScanHeader
