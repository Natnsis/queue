import { colors } from '@/assets/contants';
import { Feather } from '@expo/vector-icons';
import { View, Text } from 'react-native'

const QueuePosition = () => {
  return (
    <View>
      <View
        style={{
          backgroundColor: colors.foreground
        }}
        className='flex-row gap-2 p-2 rounded-lg my-3'>
        <View
          style={{
            backgroundColor: colors.primary,
            width: '30%'
          }}
          className='rounded-lg p-2 items-center justify-center'
        >
          <Feather
            name="clock"
            size={40}
            color={colors.text} />
        </View>
        <View>
          <Text
            style={{
              fontFamily: 'bold',
              fontSize: 18,
              lineHeight: 20
            }}
          >
            Waiting for your turn
          </Text>
          <Text
            style={{
              fontFamily: 'italic',
              fontSize: 12,
              width: '70%'
            }}
          >
            you will be notified when its almost your time.
          </Text>
        </View>
      </View>

      {/*postition card*/}
      <View className='px-10'>
        <View
          style={{
            backgroundColor: colors.foreground,
            height: 230,
          }}
          className='rounded-lg p-3'>
          <View
            style={{
              backgroundColor: "#FFF",
              height: '80%'
            }}
            className='rounded-lg'
          >
            <View
              style={{
                height: '40%'
              }}
              className='flex-row justify-center items-center my-3'
            >
              <Text
                style={{
                  fontFamily: 'semiBoldItalic',
                  fontSize: 50,
                  lineHeight: 52,
                  color: colors.ash
                }}
              >
                12
              </Text>
            </View>

            <Text
              style={{
                fontFamily: 'regular',
                fontSize: 12,
                lineHeight: 13,
              }}
              className='text-center'
            >
              Your position in the queue
            </Text>

            <Text
              style={{
                fontFamily: 'italic',
                fontSize: 11,
                color: colors.primary
              }}
              className='text-center px-1'
            >
              your position will change gradually as long us you stay online
            </Text>
          </View>

          <View className='w-1/2 flex-row mt-2'>
            <View className='flex-row gap-1'>
              <Feather name='user' size={20} />
              <Text className='w-full'>123</Text>
            </View>

            <View className='flex-row w-full gap-1'>
              <Feather name='users' size={20} />
              <Text className='w-full'>234</Text>
            </View>
          </View>
        </View>
      </View>
    </View>
  )
}

export default QueuePosition
