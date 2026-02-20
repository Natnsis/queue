import { View, ScrollView, Text } from 'react-native'
import { Feather } from '@expo/vector-icons';
import { colors } from '@/assets/contants';

const HomeQuickActions = () => {
  return (
    <View className="mt-3">
      <Text
        style={{
          fontFamily: 'bold',
          fontSize: 15,
          lineHeight: 18
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
                fontFamily: 'medium',
                fontSize: 13,
                lineHeight: 14
              }}
            >
              Title of it
            </Text>
            <Text
              style={{
                fontFamily: 'regular',
                fontSize: 12,
                lineHeight: 14
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
  )
}

export default HomeQuickActions
