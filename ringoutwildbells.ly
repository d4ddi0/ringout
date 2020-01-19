\paper {
  #(set-default-paper-size "letter")
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #10
}

global = {
  \version "2.19.83"
  \key d \minor
  \time 6/8
}

sopMusic = \relative c'' {
  R2. | r2 r8 
  d,8 | d( e) f a4 a16( a16) | bes8( a) g a4
  a8 | g a bes a( f8.) f16 | g8( f) e f4
  f8 | d'4 d8 c f,4 | bes bes8 a4
  a8 | e8.( f16) g8 f\( d8.\) d16 | e8 d cis d4
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  R2. | r2 r8
  a8 | a4 d8 f4 f16 f | g8( f) e f4
  f8 | d4 g8 f( d8.) d16 | e8( d) cis d4
  d8 | f4 f8 f c4 | d d8 cis4
  d8 | d4 d8 d( d8.) d16 | cis8( d) a a4
}
altoWords =\lyricmode {
  Ring | out, wild bells, to the | wild _ sky,
  The | fly -- ing cloud, the fro -- sty light.
  The | year is dy -- ing, in the night;
  Ring | out, wild bells, and let him die.
}

tenorMusic = \relative c' {
  R2. | r2 r8
  f,8 | f4 a8 d4 d16( d16) | d4 bes8 d4
  d8 | bes4 d8 d8(a8.) a16 | a4 a8 a4
  a8 | bes4 bes8 f f4 | d8( e) f e4
  f8 | bes4 bes8 a8( a8.) f16 | g8( f) e f4
}
tenorWords = \lyricmode {
}

bassMusic = \relative c {
  R2. | r2 r8
  d8 | d4 d8 d4 d16( d) | d4 d8 d4
  d8 | g4 g8 a\( a8.\) a,16 | a4 a8 d4
  d8 | bes4 bes8 a8 a4 | g g8 a4
  d8 | g8.( f16) e8 a\( f8.\) a,16 | a4 a8 d4
}
bassWords = \lyricmode {
}

\score {
  <<
    \new ChoirStaff <<
      \new Lyrics = "sopranos" \with {
        % This is needed for lyrics above a staff
        \override VerticalAxisGroup.staff-affinity = #DOWN
      }
      \new Staff = "women" <<
        \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
        \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
      >>
      \new Lyrics = "altos"
      \new Lyrics = "tenors" \with {
        % This is needed for lyrics above a staff
        \override VerticalAxisGroup.staff-affinity = #DOWN
      }

      \new Staff = "men" <<
        \clef bass
        \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
        \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
      >>
      \new Lyrics = "basses"
      \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
      \context Lyrics = "altos" \lyricsto "altos" \altoWords
      \context Lyrics = "tenors" \lyricsto "tenors" \tenorWords
      \context Lyrics = "basses" \lyricsto "basses" \bassWords
    >>
    \new PianoStaff <<
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \sopMusic >>
        << \global \altoMusic >>
      >>
      \new Staff <<
        \clef bass
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \tenorMusic >>
        << \global \bassMusic >>
      >>
    >>
  >>
}
