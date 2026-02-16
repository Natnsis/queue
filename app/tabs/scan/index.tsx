import { View, Text } from "react-native"
import ScanHeader from "@/components/ScanHeader"
import { SafeAreaView } from "react-native-safe-area-context"
import { colors } from "@/assets/contants"
import { Feather } from '@expo/vector-icons';
import { Button } from "@/components/ui/button";

const index = () => {
  return (
    <SafeAreaView
      style={{
        height: '100%',
      }}
      className="p-3"
    >
      <ScanHeader />
      <View
        style={{
          height: '35%',
        }}
        className="mt-4 px-6"
      >
        <View
          style={{
            backgroundColor: colors.foreground,
            height: '100%',
          }}
          className="justify-center items-center rounded-lg"
        >
          <Feather name="maximize" size={90} color={colors.primary} />
        </View>

        <View className="px-6 mt-5">
          <View
            className="flex-row justify-between">
            <Button
              style={{
                backgroundColor: colors.primary
              }}
              className="w-2/3"
            >
              <Text
                style={{
                  fontFamily: 'regular'
                }}
              >
                Scan now
              </Text>
            </Button>

            <Button
              style={{
                backgroundColor: colors.ash
              }}
            >
              <Feather name="image" size={20} />
            </Button>
          </View>
        </View>

        <View
          style={{
            backgroundColor: colors.foreground
          }}
          className="mt-5 p-2 rounded-lg">
          <Text
            style={{
              fontFamily: "regular"
            }}
          >
            Queue History
          </Text>



          <View>

          </View>
        </View>
      </View>
    </SafeAreaView>
  )
}

export default index
