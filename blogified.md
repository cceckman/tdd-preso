_This is a draft of a presentation at RC_

Disclaimer: I know basically nothing about psychology. Consider this all anecdata.

## Gamification, for good or ill

In the 2010s a lot of stuff became "gamified". Games have "achievements", "levels", "leaderboards", points, and a social aspect.

Fitbit. Duolingo. Reddit, hackernews, facebook, stackoverflow (points / likes / etc)

#todo: xkcd goes here!

I know basically nothing about psychology. What I understand of "gamification" is that it's a psychological trick: provide repeated positive feedback, on a short feedback loop. (As well as social mechanisms for accountability/competitiveness, in some cases.)

Boosts engagement, and therefore profits. Can be a bad thing: I had to cut myself off from Reddit in college because my grades were suffering.

But not necessarily a bad thing. Can use it to your own advantage. Learn a language! Get fit!

Contrast: working through SICP book, and Software Foundations. SICP has pages between exercises, and chunky exercise blocks. Software Foundations has an exercise, or an evaluate sample, every ~3 paragraphs or so. Rapid positive feedback!

Building these loops help you do what you really want to do. Or, what you need to do, that isn't fun.

Let's gamify programming.

And I don't mean like Opus Magnum, where the game is programming a weird machine. Or creative coding. The game is... programming at your day job. You _have_ to write this boring thing. You don't _want_ to, but you _have_ to. Gamify that!

Two techniques I've done for this. Test-driven development, and code coverage metrics. (Note: I'm not saying either of these is an absolute good, or something worth using for their own sake - but as a way of "make it more fun to write boring code".)

## Test-driven development, the game

Unit tests. Example code. Fuzz tests. Properties to verify. Small chunks of stuff.

Write one, that's a point!

Write more- more points! And now you have an _engine_ for more points in the future!

Ok, but it doesn't compile. Make _just one_ compile. Yay, that's another point!

OK, but it doesn't pass. Make _just one_ pass. Yay, that's another point!

At each stage, you get the satisfaction of- the closing brace of a test. Compile stage going green. Test case going green.

Celebrate it!

Also a great way to explore behavior before writing the code: how am I going to use this code? What bad inputs will I provide? How should it handle errors?
## Code coverage, the game

Code coverage is a similar game, but once you've written your tests. Measures of what lines, or branches-of-lines, were excercised by tests.

So it's like a puzzle - what do I need to do in order to get this line tested?

This can be a really rapid loop. I really like "coverage gutters", that show the coverage in the editor; and running the test in a background. Write a test and it automatically reruns and you see **woohoo red light turned green you did great!**

(Protanopiac / deuteranopacs, the extension I use lets you pick the colors if you want something different!)

## Tools/prerequisites

- Small, fast, deterministic tests
- Fast compile times
	- Debug builds!
	- Golang!
- Automatic test/compile runner. Tool talk time: `fd | entr`, various `watch` subcommands, whatever works for you. Don't make yourself do more steps before that reward!
- In-editor feedback. "Coverage gutters" is a _killer_ feature. VSCode can show test results for some languages.
