open Nativewind
open ReactNative

@module("../assets/rescript.png") external rescript_logo: string = "default"
@module("../assets/react-native.png") external nativewind_logo: string = "default"

@react.component
let main = () => {
  let (bg, set_bg) = React.useState(_ => "bg-black")

  <StyledView className={"flex-1 items-center justify-start " ++ bg}>
    <StyledImage className="scale-[0.2] m-0" source={rescript_logo} />
    <Button
      title="toggle"
      onPress={_ =>
        set_bg(bg =>
          switch bg {
          | "bg-white" => "bg-black"
          | "bg-black" => "bg-white"
          | _ => "bg-white"
          }
        )}
    />
    <StyledImage className="m-0" source={nativewind_logo} />
    <StyledText className="text-red-800 border-[10]">
      {"Rescript + ReactNative + Nativewind + Expo"->React.string}
    </StyledText>
    <Expo.StatusBar style=#auto />
  </StyledView>
}
