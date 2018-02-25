module Main exposing (..)

import Slides


main : Program Never Slides.Model Slides.Msg
main =
    Slides.app
        Slides.slidesDefaultOptions
        [ titleSlide ]


titleSlide : Slides.Slide
titleSlide =
    Slides.md
        """
# Elm Works

![IWT Health Logo](images/IWTLogo-800x177.png)
![Elm Logo](images/Elm_logo.png)

*by Jared M. Smith*
"""
