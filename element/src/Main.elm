module Main exposing (main)


import Browser
import Html exposing (Html)


main : Program () Model Msg
main =
  Browser.element
    { init = init
    , update = update
    , view = view
    , subscriptions = always Sub.none
    }


-- MODEL


type alias Model =
  { name : String
  }


init : () -> (Model, Cmd msg)
init _ =
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
  Html.text ("Hello, " ++ name ++ "!")
