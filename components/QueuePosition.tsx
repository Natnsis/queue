import { colors } from '@/assets/contants';
import { Feather } from '@expo/vector-icons';
import { View, Text } from 'react-native'

const QueuePosition = () => {
  return (
    <View>
      <View className='mt-3'>
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
                fontFamily: 'light',
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
