import { colors } from "@/assets/contants"
import { Feather } from '@expo/vector-icons';
import { View, Text, ScrollView, Image } from "react-native"
import { Button } from "@/components/ui/button";

const ScanQr = () => {
  return (
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

        <ScrollView
          showsVerticalScrollIndicator={false}
          className="mb-5">
          <View
            style={{
              backgroundColor: '#FFF',
              height: 70
            }}
            className="rounded-lg flex-row justify-between mb-2"
          >
            <View className="flex-row gap-1">
              <Image
                style={{
                  width: 60,
                  height: 60
                }}
                source={require('@/assets/images/crowd.png')}
              />
              <View className="w-full flex-col justify-center">
                <Text
                  style={{
                    fontFamily: 'bold',
                    lineHeight: 20,
                    fontSize: 16
                  }}
                  className="w-full"
                >
                  Title
                </Text>

                <Text
                  style={{
                    fontFamily: 'italic',
                    lineHeight: 15,
                    fontSize: 13
                  }}
                  className="w-1/2"
                >
                  this is the description
                </Text>
              </View>
            </View>
          </View>

          <View
            style={{
              backgroundColor: '#FFF',
              height: 70
            }}
            className="rounded-lg flex-row justify-between mb-2"
          >
            <View className="flex-row gap-1">
              <Image
                style={{
                  width: 60,
                  height: 60
                }}
                source={require('@/assets/images/crowd.png')}
              />
              <View className="w-full flex-col justify-center">
                <Text
                  style={{
                    fontFamily: 'bold',
                    lineHeight: 20,
                    fontSize: 16
                  }}
                  className="w-full"
                >
                  Title
                </Text>

                <Text
                  style={{
                    fontFamily: 'italic',
                    lineHeight: 15,
                    fontSize: 13
                  }}
                  className="w-1/2"
                >
                  this is the description
                </Text>
              </View>
            </View>
          </View>

          <View
            style={{
              backgroundColor: '#FFF',
              height: 70
            }}
            className="rounded-lg flex-row justify-between mb-2"
          >
            <View className="flex-row gap-1">
              <Image
                style={{
                  width: 60,
                  height: 60
                }}
                source={require('@/assets/images/crowd.png')}
              />
              <View className="w-full flex-col justify-center">
                <Text
                  style={{
                    fontFamily: 'bold',
                    lineHeight: 20,
                    fontSize: 16
                  }}
                  className="w-full"
                >
                  Title
                </Text>

                <Text
                  style={{
                    fontFamily: 'italic',
                    lineHeight: 15,
                    fontSize: 13
                  }}
                  className="w-1/2"
                >
                  this is the description
                </Text>
              </View>
            </View>
          </View>

          <View
            style={{
              backgroundColor: '#FFF',
              height: 70
            }}
            className="rounded-lg flex-row justify-between mb-2"
          >
            <View className="flex-row gap-1">
              <Image
                style={{
                  width: 60,
                  height: 60
                }}
                source={require('@/assets/images/crowd.png')}
              />
              <View className="w-full flex-col justify-center">
                <Text
                  style={{
                    fontFamily: 'bold',
                    lineHeight: 20,
                    fontSize: 16
                  }}
                  className="w-full"
                >
                  Title
                </Text>

                <Text
                  style={{
                    fontFamily: 'italic',
                    lineHeight: 15,
                    fontSize: 13
                  }}
                  className="w-1/2"
                >
                  this is the description
                </Text>
              </View>
            </View>
          </View>
        </ScrollView>
      </View>
    </View>
  )
}

export default ScanQr
