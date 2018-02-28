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
        , whyElm
        , reliability
        , simplifiedQA
        , refactoring
        , reduceJavaScriptFatigue
        , consistentLibrariesAndDocumentation
        , developerHappiness
        , liveCoding
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
  * [Slack](https://elmlang.slack.com/)
"""
        , "* It's different"
        ]


whyElm : Slides.Slide
whyElm =
    Slides.md """
# Why Elm?

* Reliable
* Simplified QA
* Reduce JavaScript fatigue
* Consistent libraries and documentation
* Refactoring is easy
* Dev happiness
"""


reliability : Slides.Slide
reliability =
    Slides.mdFragments
        [ "# Reliability"
        , "\"No runtime exceptions in practice\""
        , """<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">After 2 years and 200,000 lines of production <a href="https://twitter.com/elmlang?ref_src=twsrc%5Etfw">@elmlang</a> code, we got our first production runtime exception.<br><br>(We wrote code that called Debug.crash and shipped it. That function does what it says on the tin. 😅)<br><br>In that period, our legacy JS code has crashed a mere 60,000 times.</p>&mdash; Richard Feldman (@rtfeldman) <a href="https://twitter.com/rtfeldman/status/961051166783213570?ref_src=twsrc%5Etfw">February 7, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
"""
        ]


simplifiedQA : Slides.Slide
simplifiedQA =
    Slides.mdFragments
        [ "# Simplified QA"
        , "* [The Perfect Bug Report](http://elm-lang.org/blog/the-perfect-bug-report)"
        , "* Fewer regression bugs"
        , "* See reliability and refactoring"
        ]


refactoring : Slides.Slide
refactoring =
    Slides.mdFragments
        [ "# Refactoring is easy"
        , """<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Major refactors are so easy w/ <a href="https://twitter.com/elmlang?ref_src=twsrc%5Etfw">@elmlang</a>!<br>JS: 10 min refactor; 2 hrs of playing &quot;did I break anything?&quot;<br>Elm: 15 min refactor; it just works.</p>&mdash; ❄️ Chilly Noah ☃️ (@noahzgordon) <a href="https://twitter.com/noahzgordon/status/771439383262232580?ref_src=twsrc%5Etfw">September 1, 2016</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
        """
        , "* [Friendly compiler errors](http://elm-lang.org/blog/compilers-as-assistants)"
        , "* [elmjutsu](https://atom.io/packages/elmjutsu) provides ReSharper-like refactoring powers"
        , "* See examples in live coding"
        ]


reduceJavaScriptFatigue : Slides.Slide
reduceJavaScriptFatigue =
    Slides.mdFragments
        [ "# Reduce JavaScript fatigue"
        , "* [What is JS fatigue?](https://hackernoon.com/how-it-feels-to-learn-javascript-in-2016-d3a717dd577f)"
        , "* No backward compatibility with JavaScript (not the same as interop)"
        , "* Compile-time errors"
        , "* [Packages](http://package.elm-lang.org/)"
        , "* See consistent libraries and documentation"
        ]


consistentLibrariesAndDocumentation : Slides.Slide
consistentLibrariesAndDocumentation =
    Slides.mdFragments
        [ "# Consistent libraries and documentation"
        , "* [Auto/enforced semantic versioning](https://github.com/elm-lang/elm-package#publishing-updates)"
        , """* [Package updates](https://github.com/elm-lang/elm-package/blob/master/README.md)
```
elm-package diff elm-lang/core 3.0.0 4.0.0
```"""
        , "* Example documentation ([elm-lang/http](http://package.elm-lang.org/packages/elm-lang/http/latest))"
        ]


developerHappiness : Slides.Slide
developerHappiness =
    Slides.md """
# ~~Why Elm?~~ Dev happiness

* Reliable
* Bug reports
* Reduce JavaScript fatigue
* Consistent libraries and documentation
* Refactoring is easy
"""


liveCoding : Slides.Slide
liveCoding =
    Slides.md """
# Live coding

* elm-stand-up
* Atom
* Don't expect to understand everything (or appreciate all)
* Relate to R#
"""
