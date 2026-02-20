import { View, Text, Dimensions, Image } from 'react-native';
import { Button } from './ui/button';
import { Feather } from '@expo/vector-icons';
import { colors } from '@/assets/contants';
import { Link } from "expo-router";

const HomeHero = () => {
  const { height } = Dimensions.get('screen');
  return (
    <View
      style={{
        backgroundColor: colors.foreground,
        height: height * 0.25
      }}
      className="mt-3 p-3 rounded-lg"
    >
      <View
        style={{
          backgroundColor: '#FFFFFF',
          height: '88%'
        }}
        className="rounded-xl"
      >
        <View className="p-3 flex-row gap-2">
          <View className="flex-col">
            <View
              style={{
                width: '85%',
                height: '65%'
              }}
              className="flex-row gap-5">
              <Image
                source={require('@/assets/images/qr-code.jpg')}
                style={{
                  height: '80%',
                  width: '25%'
                }}
                className='p-5'
              />
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
                    fontFamily: 'light',
                    fontSize: 13
                  }}
                >scan QR code to join a queue instantly</Text>
              </View>
            </View>

            <View className="flex-row justify-center">
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

      <View className='flex-1 flex-row items-center justify-center'>
        <Link
          href='/'>
          <Text
            style={{
              fontFamily: 'regular',
              fontSize: 11,
              lineHeight: 12
            }}
            className="flex-row"
          >
            Genereate your own QR
            <Feather name="chevrons-right" />
          </Text>
        </Link>
      </View>
    </View>
  )
}

export default HomeHero
