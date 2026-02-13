import { colors } from '@/assets/contants';
import { View, Image } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import { useRouter } from 'expo-router';
import { Feather } from '@expo/vector-icons';
import { Button } from '@/components/ui/button';
import { Text } from '@/components/ui/text';
import { Label } from '@/components/ui/label';
import { Input } from '@/components/ui/input';
import { useState } from 'react';

const index = () => {
  const router = useRouter()
  const [isSignedUp, setIsSignedUp] = useState<boolean>(false)

  return (
    <SafeAreaView
      style={{
        backgroundColor: colors.foreground,
        height: '100%'
      }}
      className='p-4'
    >
      <View
        style={{
          backgroundColor: '#ffffff'
        }}
        className='p-2 rounded-lg'>
        <Button
          size="icon"
          onPress={() => router.replace('/')}
        >
          <Feather name="chevron-left" size={20} color="#ffffff" />
        </Button>

        <Text
          style={{
            fontFamily: 'bold',
            fontSize: 25
          }}
          className='mt-5'>
          Welcome to GlideIn
        </Text>

        <View
          style={{
            backgroundColor: colors.foreground
          }}
          className='mt-5 flex-row gap-1 px-2 py-1 rounded-lg mb-3'>
          <Button
            className='flex-1' size="sm"
            variant={isSignedUp ? "default" : "ghost"}
            onPress={() => {
              setIsSignedUp(true)
            }}
          >
            <Text
              style={{
                fontFamily: 'regular',
              }}
              className='w-full text-center'>
              Log in
            </Text>
          </Button>

          <Button
            className='flex-1'
            size="sm"
            variant={isSignedUp ? "ghost" : "default"}
            onPress={() => {
              setIsSignedUp(false)
            }}
          >
            <Text
              style={{
                fontFamily: 'regular',
              }}
              className='w-full text-center'>
              Sign up
            </Text>
          </Button>
        </View>

        {isSignedUp ?
          <View>
            <Label>Email</Label>
            <Input />
          </View>
          :
          <View className='mt-3'>
            <View>
              <Label
                style={{
                  fontFamily: 'regular'
                }}
                className='text-sm'>
                Email
              </Label>
              <Input />
            </View>

            <View className='mt-4'>
              <Label
                style={{
                  fontFamily: 'regular'
                }}
                className='text-sm'>
                Password
              </Label>
              <Input />
            </View>
            <Button
              style={{ backgroundColor: colors.primary }}
              size="lg"
              className='mt-5 mb-5'
            >
              <Text
                style={{
                  fontFamily: 'bold',
                  color: colors.text
                }}>
                Get Started
              </Text>
              <Feather name='arrow-right' size={20} />
            </Button>
          </View>
        }


      </View>
    </SafeAreaView>
  )
}

export default index
