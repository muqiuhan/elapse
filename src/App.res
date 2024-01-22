open ReactNative

%%raw("import ./output.css")

type styledProps = {
  className?: string,
  tw?: string,
  baseClassName?: string,
  baseTw?: string,
}
@module("nativewind")
external styled: React.component<'a> => React.component<styledProps> = "styled"

module StyledText = {
  let make = styled(ReactNative.Text.make)
}

@react.component
let app = () => {
  <View>
    <StyledText className="text-blue-500"> {"Hello World"->React.string} </StyledText>
    <Expo.StatusBar style=#auto />
  </View>
}
