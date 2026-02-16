import { View, ScrollView, Dimensions } from "react-native"
import { Text } from "@/components/ui/text"
import { SafeAreaView } from "react-native-safe-area-context"
import { Feather } from '@expo/vector-icons';
import { Button } from "@/components/ui/button"
import { colors } from "@/assets/contants";
import Icon from 'react-native-vector-icons/MaterialCommunityIcons';
import { Link } from "expo-router";

const index = () => {
  const { height } = Dimensions.get('screen');
  return (
    <SafeAreaView
      style={{
        height: '100%',
      }}
      className="p-3"
    >
      {/*hero*/}
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

      <ScrollView
      >
        <View
          style={{
            backgroundColor: colors.foreground,
            height: height * 0.3
          }}
          className="mt-3 p-3 rounded-lg"
        >
          <View
            style={{
              backgroundColor: '#FFFFFF',
              height: '85%'
            }}
            className="rounded-xl"
          >
            <View className="p-3 flex-row gap-2">
              <View className="flex-col">
                <View className="flex-row gap-5">
                  <Icon name="qrcode-scan" size={70} color={colors.primary} />
                  <View>
                    <Text
                      style={{
                        fontFamily: 'bold'
                      }}
                    >No Active Queues</Text>
                    <Text className="w-3/4"
                      style={{
                        fontFamily: 'regular',
                        fontSize: 13
                      }}
                    >scan QR code to join a queue instantly</Text>
                  </View>
                </View>

                <View className="flex-row justify-center mt-3">
                  <Button
                    style={{
                      backgroundColor: colors.primary
                    }}
                  >
                    <Text>
                      Scan QR code
                    </Text>
                  </Button>
                </View>
              </View>
            </View>
          </View>

          <Link href='/'>
            <Text
              style={{
                fontFamily: 'regular',
                fontSize: 11
              }}
              className="text-center mt-1"
            >
              Genereate your own QR
              <Feather name="chevrons-right" />
            </Text>
          </Link>
        </View>

        {/*quick actions*/}
        <View className="mt-3">
          <Text
            style={{
              fontFamily: 'bold',
              fontSize: 15
            }}
          >
            Quick actions
          </Text>

          <ScrollView
            horizontal={true}
            showsHorizontalScrollIndicator={false}
          >
            <View
              className="w-28 h-32 mt-2 rounded-xl p-2"
              style={{
                backgroundColor: '#FFF',
                elevation: 4,
                margin: 10
              }}
            >
              <View
                style={{
                  backgroundColor: colors.foreground
                }}
                className="h-11 w-11 flex-row items-center justify-center"
              >
                <Feather name="flag" size={25} color={colors.primary} />
              </View>
              <View className="mt-2">
                <Text
                  style={{
                    fontFamily: 'regular',
                    fontSize: 13
                  }}
                >
                  Title of it
                </Text>
                <Text
                  style={{
                    fontFamily: 'regular',
                    fontSize: 10
                  }}
                >
                  description of it
                </Text>
              </View>
            </View>

            <View
              className="w-28 h-32 mt-2 rounded-xl p-2"
              style={{
                backgroundColor: '#FFF',
                elevation: 4,
                margin: 10
              }}
            >
              <View
                style={{
                  backgroundColor: colors.foreground
                }}
                className="h-11 w-11 flex-row items-center justify-center"
              >
                <Feather name="flag" size={25} color={colors.primary} />
              </View>
              <View className="mt-2">
                <Text
                  style={{
                    fontFamily: 'regular',
                    fontSize: 13
                  }}
                >
                  Title of it
                </Text>
                <Text
                  style={{
                    fontFamily: 'regular',
                    fontSize: 10
                  }}
                >
                  description of it
                </Text>
              </View>
            </View>

            <View
              className="w-28 h-32 mt-2 rounded-xl p-2"
              style={{
                backgroundColor: '#FFF',
                elevation: 4,
                margin: 10
              }}
            >
              <View
                style={{
                  backgroundColor: colors.foreground
                }}
                className="h-11 w-11 flex-row items-center justify-center"
              >
                <Feather name="flag" size={25} color={colors.primary} />
              </View>
              <View className="mt-2">
                <Text
                  style={{
                    fontFamily: 'regular',
                    fontSize: 13
                  }}
                >
                  Title of it
                </Text>
                <Text
                  style={{
                    fontFamily: 'regular',
                    fontSize: 10
                  }}
                >
                  description of it
                </Text>
              </View>
            </View>
          </ScrollView>
        </View>
      </ScrollView >
    </SafeAreaView >
  )
}

export default index
