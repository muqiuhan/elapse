type default_style = {
  className?: string,
  children?: React.element,
}

@module("nativewind")
external styled: React.component<'a> => React.component<default_style> = "styled"

module StyledText = {
  let make = styled(ReactNative.Text.make)
}

module StyledView = {
  let make = styled(ReactNative.View.make)
}

module StyledImage = {
  type props = {
    source?: string,
    ...default_style,
  }

  @module("nativewind")
  external styled: React.component<'a> => React.component<props> = "styled"

  let make: React.component<props> = styled(ReactNative.Image.make)
}
