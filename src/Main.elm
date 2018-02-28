module Main exposing (..)

import Css
import Css.Elements
import Html exposing (..)
import Html.Attributes exposing (..)
import Slides exposing (slidesDefaultOptions)
import Slides.Styles


main : Program Never Slides.Model Slides.Msg
main =
    Slides.app
        { slidesDefaultOptions
            | style =
                [ Css.Elements.img
                    [ Css.width Css.auto
                    ]
                ]
                    |> List.append
                        (Slides.Styles.elmMinimalist
                            (Css.rgb 255 255 255)
                            (Css.rgb 230 230 230)
                            (Css.px 30)
                            (Css.hex "60B5CC")
                        )
        }
        [ titleSlide
        , myHistorySlide
        , beforeElmInHXSlide

        -- , frontEndFrameworkAlternativesSlides
        -- , frontEndFrameworkComparisonCriteriaSlides
        , whyNotElm
        ]


titleSlide : Slides.Slide
titleSlide =
    Slides.html <|
        div [ class "title-slide" ]
            [ img
                [ alt "IWT Health Logo"
                , class "iwt-logo"
                , src "images/IWTLogo-800x177.png"
                ]
                []
            , h1 [] [ text "Elm Works" ]
            , img
                [ alt "Elm Logo"

                -- , class "iwt-logo"
                , src "images/Elm_logo.png"
                ]
                []
            , div []
                [ em [] [ text "by Jared M. Smith" ]
                ]
            ]



--         """
-- <img alt="IWT Health Logo" class="iwt-logo" src="images/IWTLogo-800x177.png" />
--
-- # Elm Works
--
-- ![Elm Logo](images/Elm_logo.png)
--
-- *by Jared M. Smith*
--
-- """


myHistorySlide : Slides.Slide
myHistorySlide =
    Slides.mdFragments
        [ "# My history"
        , "* Java -> C# -> JavaScript -> Elm"
        , """* JavaScript = My first 💖
  * Do (allthethings)
  * Quick feedback loop
  * Web could be interactive"""
        , "* Working alone"
        , "* Working on a team"
        ]


beforeElmInHXSlide : Slides.Slide
beforeElmInHXSlide =
    Slides.mdFragments
        [ "# Before Elm in HX"
        , "* AngularJS tests"
        , "* [lodashfp](https://github.com/lodash/lodash/wiki/FP-Guide)"
        , "* ES Future/Flow/TypeScript evaluation"
        ]


frontEndFrameworkAlternativesSlides : Slides.Slide
frontEndFrameworkAlternativesSlides =
    Slides.mdFragments
        [ "# Front-end framework alternatives"
        , "* AngularJS" -- <i class=\"angularjs-logo\"></i>"
        , "* Angular 2+"
        , "* React"
        , "* Vue.js"
        ]


frontEndFrameworkComparisonCriteriaSlides : Slides.Slide
frontEndFrameworkComparisonCriteriaSlides =
    Slides.mdFragments
        [ "# Framework comparison criteria"
        ]


whyNotElm : Slides.Slide
whyNotElm =
    Slides.mdFragments
        [ "# Why not Elm?"
        , "* Not for throwaway projects"
        , "* Not popular enough"
        , """* BDFL-driven
  * Evan Czaplicki ([GitHub](https://github.com/evancz))
  * [Elm Foundation](http://foundation.elm-lang.org/)
"""
        , "* It's different"
        ]
