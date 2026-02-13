import { colors } from '@/assets/contants';
import { View, Text, Image } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import { Button } from '@/components/ui/button';
import { Feather } from '@expo/vector-icons';
import { useRouter } from 'expo-router';

const index = () => {
  const router = useRouter()
  return (
    <SafeAreaView
      style={{
        height: '100%'
      }}
    >
      <View style={{
        backgroundColor: colors.foreground
      }}
        className='p-2 rounded-b-[30px] flex-1'
      >
        <Image
          source={require('@/assets/images/crowd.png')}
          style={{
            width: "100%",
            height: '100%'
          }}
        />
      </View>
      <View className='p-2'>
        <Text
          style={{
            fontFamily: 'regular',
            fontSize: 30,
            color: colors.text
          }}
        >
          Transfer, track, and take charge within seconds
        </Text>

        <View className='flex-row justify-end'>
          <Button
            className='border rounded-full h-16 w-16'
            variant="ghost"
            onPress={() => router.replace("/register")}
          >
            <Feather name='arrow-right' size={30} />
          </Button>
        </View>

      </View>
    </SafeAreaView>
  )
}

export default index
