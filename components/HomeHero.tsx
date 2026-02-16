import { View, Text, Dimensions } from 'react-native';
import { Button } from './ui/button';
import { Feather } from '@expo/vector-icons';
import { colors } from '@/assets/contants';
import Icon from 'react-native-vector-icons/MaterialCommunityIcons';
import { Link } from "expo-router";

const HomeHero = () => {
  const { height } = Dimensions.get('screen');
  return (
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
              <Icon name="qrcode-scan" size={70} color={colors.text} />
              <View>
                <Text
                  style={{
                    fontFamily: 'bold',
                    fontSize: 18,
                    lineHeight: 20
                  }}
                >
                  No Active Queues
                </Text>
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
  )
}

export default HomeHero
