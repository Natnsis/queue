import { View, Text } from 'react-native';
import { Button } from './ui/button';
import { Feather } from '@expo/vector-icons';

const Header = () => {
  return (
    <View className="flex-row justify-between items-center">
      <Text
        style={{
          fontFamily: 'semiBold'
        }}
      >
        Hello, Natnael
      </Text>
      <Button
        size='icon'
        variant="secondary"
      >
        <Feather name="bell" size={16} />
      </Button>
    </View>
  )
}

export default Header
