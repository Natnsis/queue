import { colors } from '@/assets/contants';
import { Feather } from '@expo/vector-icons';
import { FootprintsIcon } from 'lucide-react-native';
import { View, Text } from 'react-native';

const QueueDetail = () => {
  return (
    <View className='mt-2 p-1'>
      <View
        style={{
          backgroundColor: colors.foreground
        }}
        className='rounded-lg p-2'
      >
        <View className='flex-row items-center gap-1'>
          <Feather name='lock' size={15} />
          <Text
            style={{
              fontFamily: 'semi-bold',
              fontSize: 13,
              lineHeight: 14
            }}
          >
            Queue detail
          </Text>
        </View>

        <View>
          <View
            style={{
              backgroundColor: '#FFF'
            }}
            className='mt-2 p-3 flex-row gap-2'
          >
            <View className='items-center flex-row'>
              <Feather name='check-circle' size={20} />
            </View>
            <View className='ml-5'>
              <Text
                style={{
                  fontFamily: 'bold',
                  lineHeight: 15
                }}
              >
                Joined Queue
              </Text>
              <Text
                style={{
                  fontFamily: 'regular',
                  fontSize: 11,
                  lineHeight: 15
                }}
              >16/02/2026, 9:50 AM</Text>
            </View>
          </View>

          <View
            style={{
              backgroundColor: '#FFF'
            }}
            className='mt-2 p-3 flex-row gap-2'
          >
            <View className='items-center flex-row'>
              <Feather name='align-center' size={20} />
            </View>
            <View className='ml-5'>
              <Text
                style={{
                  fontFamily: 'bold',
                  lineHeight: 15
                }}
              >
                Waiting for turn
              </Text>
              <Text
                style={{
                  fontFamily: 'regular',
                  fontSize: 11,
                  lineHeight: 15,
                  width: '80%'
                }}
              >
                current position: #12, 11 people ahead of you
              </Text>
            </View>
          </View>

          <View
            style={{
              backgroundColor: '#FFF'
            }}
            className='mt-2 p-3 flex-row gap-2'
          >
            <View className='items-center flex-row'>
              <Feather name='bell' size={20} />
            </View>
            <View className='ml-5'>
              <Text
                style={{
                  fontFamily: 'bold',
                  lineHeight: 15
                }}
              >
                Your turn soon
              </Text>
              <Text
                style={{
                  fontFamily: 'regular',
                  fontSize: 11,
                  lineHeight: 15
                }}
              >
                you will be notitied
              </Text>
            </View>
          </View>
        </View>
      </View>
    </View>
  )
}

export default QueueDetail
