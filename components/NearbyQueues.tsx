import { colors } from "@/assets/contants";
import { View, Image, Text } from "react-native"
import { Feather } from '@expo/vector-icons';
import { Button } from "@/components/ui/button";


const NearbyQueues = () => {
  return (
    <View
      style={{
        backgroundColor: colors.foreground
      }}
      className="flex-1 mt-2 rounded-lg p-1"
    >
      <View className="flex-row items-center">
        <Feather name="map" color={colors.primary} size={20} />
        <Text
          className="mx-1 w-full"
          style={{
            fontFamily: 'bold',
            fontSize: 13,
          }}
        >
          Nearby Queues
        </Text>
      </View>
      <View className="flex-col gap-2 py-1 px-1">
        <View
          style={{
            backgroundColor: '#FFF'
          }}
          className="p-1 flex-row justify-between rounded-lg"
        >
          <View className="flex-row gap-2 items-center">
            <Image
              source={require('@/assets/images/splash.png')}
              style={{
                height: 50,
                width: 50
              }}
            />
            <View className="flex-col gap-0">
              <Text
                style={{
                  fontFamily: 'bold'
                }}
              >
                City-Hospital General
              </Text>
              <Text
                style={{
                  fontFamily: 'regular',
                  fontSize: 12
                }}
              >
                Down town medical center
              </Text>
            </View>
          </View>
          <View className="flex-row items-center">
            <Button style={{
              backgroundColor: colors.primary
            }}
              size="icon"
              className="ml-5"
            >
              <Feather name="corner-up-right" />
            </Button>
          </View>
        </View>

        <View
          style={{
            backgroundColor: '#FFF'
          }}
          className="p-1 flex-row justify-between rounded-lg"
        >
          <View className="flex-row gap-2 items-center">
            <Image
              source={require('@/assets/images/splash.png')}
              style={{
                height: 50,
                width: 50
              }}
            />
            <View className="flex-col gap-0">
              <Text
                style={{
                  fontFamily: 'bold'
                }}
              >
                City-Hospital General
              </Text>
              <Text
                style={{
                  fontFamily: 'regular',
                  fontSize: 12
                }}
              >
                Down town medical center
              </Text>
            </View>
          </View>
          <View className="flex-row items-center">
            <Button style={{
              backgroundColor: colors.primary
            }}
              size="icon"
              className="ml-5"
            >
              <Feather name="corner-up-right" />
            </Button>
          </View>
        </View>
        <View
          style={{
            backgroundColor: '#FFF'
          }}
          className="p-1 flex-row justify-between rounded-lg"
        >
          <View className="flex-row gap-2 items-center">
            <Image
              source={require('@/assets/images/splash.png')}
              style={{
                height: 50,
                width: 50
              }}
            />
            <View className="flex-col gap-0">
              <Text
                style={{
                  fontFamily: 'bold'
                }}
              >
                City-Hospital General
              </Text>
              <Text
                style={{
                  fontFamily: 'regular',
                  fontSize: 12
                }}
              >
                Down town medical center
              </Text>
            </View>
          </View>
          <View className="flex-row items-center">
            <Button style={{
              backgroundColor: colors.primary
            }}
              size="icon"
              className="ml-5"
            >
              <Feather name="corner-up-right" />
            </Button>
          </View>
        </View>

        <View
          style={{
            backgroundColor: '#FFF'
          }}
          className="p-1 flex-row justify-between rounded-lg"
        >
          <View className="flex-row gap-2 items-center">
            <Image
              source={require('@/assets/images/splash.png')}
              style={{
                height: 50,
                width: 50
              }}
            />
            <View className="flex-col gap-0">
              <Text
                style={{
                  fontFamily: 'bold'
                }}
              >
                City-Hospital General
              </Text>
              <Text
                style={{
                  fontFamily: 'regular',
                  fontSize: 12
                }}
              >
                Down town medical center
              </Text>
            </View>
          </View>
          <View className="flex-row items-center">
            <Button style={{
              backgroundColor: colors.primary
            }}
              size="icon"
              className="ml-5"
            >
              <Feather name="corner-up-right" />
            </Button>
          </View>
        </View>
      </View>
    </View>
  )
}

export default NearbyQueues
