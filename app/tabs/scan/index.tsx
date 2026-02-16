import ScanHeader from "@/components/ScanHeader"
import ScanQr from "@/components/ScanQr"
import { SafeAreaView } from "react-native-safe-area-context"

const index = () => {
  return (
    <SafeAreaView
      style={{
        height: '100%',
      }}
      className="p-3"
    >
      <ScanHeader />
      <ScanQr />
    </SafeAreaView>
  )
}

export default index
