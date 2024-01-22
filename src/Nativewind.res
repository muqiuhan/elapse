type styledProps = {
  className?: string,
  source?: string,
  children?: React.element,
}

@module("nativewind")
external styled: React.component<'a> => React.component<styledProps> = "styled"

module StyledText = {
  let make = styled(ReactNative.Text.make)
}

module StyledView = {
  let make = styled(ReactNative.View.make)
}

module StyledImage = {
  let make = styled(ReactNative.Image.make)
}
