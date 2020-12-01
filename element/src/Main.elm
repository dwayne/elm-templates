module Main exposing (main)


import Browser
import Html exposing (Html, text)


main : Program () Model Msg
main =
  Browser.element
    { init = init
    , update = update
    , subscriptions = always Sub.none
    , view = view
    }


-- MODEL


type alias Model =
  { name : String
  }


init : () -> (Model, Cmd msg)
init () =
  ( Model "world"
  , Cmd.none
  )


-- UPDATE


type Msg
  = Msg


update : Msg -> Model -> (Model, Cmd msg)
update msg model =
  case msg of
    Msg ->
      ( model
      , Cmd.none
      )


-- VIEW


view : Model -> Html msg
view { name } =
  text <| "Hello, " ++ name ++ "!"
