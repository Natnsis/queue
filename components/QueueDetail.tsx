import { colors } from '@/assets/contants';
import { Feather } from '@expo/vector-icons';
import { View, Text } from 'react-native';
import { Button } from './ui/button';

const QueueDetail = () => {
  return (
    <View className='mt-2 p-1  mb-10'>
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

      <View className='mt-5'>
        <View
          style={{
            backgroundColor: colors.foreground
          }}
          className='rounded-lg p-2'
        >
          <Text
            style={{
              fontFamily: 'bold',
              fontSize: 25,
              lineHeight: 27
            }}
          >
            City hospital - General
          </Text>

          <View
            className='mt-1'
          >
            <Text
              style={{
                fontFamily: 'regular',
                fontSize: 13,
                lineHeight: 14
              }}
            >
              - Downtown medical center
            </Text>
            <Text
              style={{
                fontFamily: 'regular',
                fontSize: 13,
                lineHeight: 14
              }}
            >
              - Joined at: 9:50 AM
            </Text>
            <Text
              style={{
                fontFamily: 'regular',
                fontSize: 13,
                lineHeight: 14
              }}
            >
              - Status: waiting
            </Text>
            <Text
              style={{
                fontFamily: 'regular',
                fontSize: 13,
                lineHeight: 14
              }}
            >
              - Queue ID: #03248012347895103
            </Text>
          </View>
        </View>
      </View>

      <View>
        <Button>
          <Text>

            Leave Queue
          </Text>
        </Button>
      </View>
    </View>
  )
}

export default QueueDetail
