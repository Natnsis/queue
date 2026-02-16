import { ScrollView } from "react-native"
import { SafeAreaView } from "react-native-safe-area-context"
import Header from "@/components/Header";
import HomeHero from "@/components/HomeHero";
import HomeQuickActions from "@/components/HomeQuickActions";
import NearbyQueues from "@/components/NearbyQueues";

const index = () => {
  return (
    <SafeAreaView
      style={{
        height: '100%',
      }}
      className="p-3"
    >
      <Header />
      <ScrollView
        showsVerticalScrollIndicator={false}
      >
        <HomeHero />
        <HomeQuickActions />
        <NearbyQueues />
      </ScrollView >
    </SafeAreaView >
  )
}

export default index
