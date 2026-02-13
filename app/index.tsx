import { colors } from '@/assets/contants';
import { View, Text, Image, Dimensions } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';

const index = () => {
  const { height } = Dimensions.get('screen');
  return (
    <SafeAreaView
      style={{
        height: '100%'
      }}
    >
      <View style={{
        height: height * 0.6,
        backgroundColor: colors.foreground
      }}
        className='p-2 rounded-b-[30px]'
      >
        <Image
          source={require('@/assets/images/crowd.png')}
          style={{
            width: "100%",
            height: '100%'
          }}
        />
      </View>
      <View style={{
      }}>
        <Text
          style={{
            fontFamily: 'regular',
            fontSize: 30,
            color: colors.text
          }}
        >
          Transfer, track, and take charge within seconds
        </Text>
      </View>
    </SafeAreaView>
  )
}

export default index
