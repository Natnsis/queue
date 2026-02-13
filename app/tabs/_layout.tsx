import { Tabs } from "expo-router"
import { Feather } from '@expo/vector-icons';
import { View } from "react-native"
import { colors } from "@/assets/contants";

const TabLayout = () => {
  return (
    <Tabs
      screenOptions={{
        headerShown: false,
        tabBarShowLabel: false,
        tabBarStyle: {
          position: 'absolute',
          bottom: 20,
          borderRadius: 30,
          elevation: 0,
          marginHorizontal: 20,
          borderTopColor: 'transparent',
          height: 50,
          paddingBottom: 0,
          justifyContent: 'center',
        },
      }}
    >
      <Tabs.Screen
        name="home/index"
        options={{
          title: 'Home',
          tabBarIcon: ({ focused, size }) => (
            <View
              style={{
                backgroundColor: focused ? colors.primary : "transparent",
                width: focused ? 36 : size,
                height: focused ? 36 : size,
                borderRadius: 18,
                justifyContent: "center",
                alignItems: "center",
              }}
            >
              <Feather
                name="home"
                size={focused ? 18 : size}
                color={focused ? "#FFFFFF" : "#9CA3AF"}
              />
            </View>
          ),
        }}
      />

      <Tabs.Screen
        name="scan/index"
        options={{
          title: 'Scan',
          tabBarIcon: ({ focused, size }) => (
            <View
              style={{
                backgroundColor: focused ? colors.primary : "transparent",
                width: focused ? 36 : size,
                height: focused ? 36 : size,
                borderRadius: 18,
                justifyContent: "center",
                alignItems: "center",
              }}
            >
              <Feather
                name="minus-square"
                size={focused ? 18 : size}
                color={focused ? "#FFFFFF" : "#9CA3AF"} />
            </View>
          ),
        }}
      />
      <Tabs.Screen
        name="queue/index"
        options={{
          title: 'Queue',
          tabBarIcon: ({ focused, size }) => (
            <View
              style={{
                backgroundColor: focused ? colors.primary : "transparent",
                width: focused ? 36 : size,
                height: focused ? 36 : size,
                borderRadius: 18,
                justifyContent: "center",
                alignItems: "center",
              }}
            >
              <Feather
                name="layers"
                size={focused ? 18 : size}
                color={focused ? "#FFFFFF" : "#9CA3AF"} />
            </View>
          ),
        }}
      />
      <Tabs.Screen
        name="profile/index"
        options={{
          title: 'Profile',
          tabBarIcon: ({ focused, size }) => (
            <View
              style={{
                backgroundColor: focused ? colors.primary : "transparent",
                width: focused ? 36 : size,
                height: focused ? 36 : size,
                borderRadius: 18,
                justifyContent: "center",
                alignItems: "center",
              }}
            >
              <Feather
                name="user"
                size={focused ? 18 : size}
                color={focused ? "#FFFFFF" : "#9CA3AF"} />
            </View>
          ),
        }}
      />

    </Tabs>

  )
}

export default TabLayout
