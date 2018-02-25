module Main exposing (..)

import Css
import Css.Elements
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
        ]


titleSlide : Slides.Slide
titleSlide =
    Slides.md
        """
<img alt="IWT Health Logo" class="iwt-logo" src="images/IWTLogo-800x177.png" />

# Elm Works

![Elm Logo](images/Elm_logo.png)

*by Jared M. Smith*

"""


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
        ]
