import { ScrollView } from "react-native"
import { SafeAreaView } from "react-native-safe-area-context"
import QueueHeader from "@/components/QueueHeader"
import QueuePosition from "@/components/QueuePosition"
import QueueDetail from "@/components/QueueDetail"

const index = () => {
  return (
    <SafeAreaView
      style={{
        height: '100%',
      }}
      className="p-3"
    >
      <QueueHeader />
      <ScrollView
        showsVerticalScrollIndicator={false}
      >
        <QueuePosition />
        <QueueDetail />
      </ScrollView>
    </SafeAreaView>
  )
}

export default index
