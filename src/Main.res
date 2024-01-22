open Nativewind

@module("../assets/rescript.png") external rescript_logo: string = "default"
@module("../assets/react-native.png") external nativewind_logo: string = "default"

@react.component
let main = () => {
  <StyledView className="flex-1 items-center justify-start">
    <StyledImage className="scale-[0.2] m-0" source={rescript_logo} />
    <StyledImage className="m-0 opacity" source={nativewind_logo} />
    <StyledText className="text-red-800">
      {"Rescript + ReactNative + Nativewind + Expo"->React.string}
    </StyledText>
    <Expo.StatusBar style=#auto />
  </StyledView>
}
