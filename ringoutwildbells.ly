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
  \repeat volta 4 {
    \repeat unfold 2 {
      R2. | r2 r8
      d,8 | d( e) f a4 a16( a16) | bes8( a) g a4
      a8 | g a bes a( f8.) f16 | g8( f) e f4
      f8 | d'4 d8 c f,4 | bes bes8 a4
      a8 | e8.( f16) g8 f\( d8.\) d16 | e8 d cis d4.
    }
  }
}
sopWords = \lyricmode {
  
}

altoMusic = \relative c' {
  \repeat volta 4 {
    \repeat unfold 2 {
      R2. | r2 r8
      a8 | a4 d8 f4 f16 f | g8( f) e f4
      f8 | d4 g8 f( d8.) d16 | e8( d) cis d4
      d8 | f4 f8 f c4 | d d8 cis4
      d8 | d4 d8 d( d8.) d16 | cis8( d) a a4.
    }
  }
}
altoWords =\lyricmode {
  Ring | out, wild bells, to the | wild _ sky,
  The | fly -- ing cloud, the fro -- sty light.
  The | year is dy -- ing, in the night;
  Ring | out, wild bells, and let him die.

  Ring | out the old; ring _ | in the new.
  Ring | ha -- ppy bells  a -- | cross the snow.
  The | year is go -- ing; | let him go.
  Ring | out the false; ring | in the true.

  Ring | out the grief _ that | saps the mind
  For | those that here we | see no more;
  Ring | out the feud of | rich and poor,
  Ring | in re -- dress _ _ to | all man -- kind.

  Ring | out a slow -- ly | dy -- ing cause,
  And | ancient forms of | party strife;
  Ring | in the no -- bler _ | modes of life,
  With | sweet -- er man -- | ners, pur -- er laws.

  Ring | out the want, the | care, the sin,
  The | faith -- less cold -- | ness of the times;
  ring | out, ring out _ my | mourn -- ful rhymes
  But | ring the full -- er | min -- strel in.

  Ring | out false pride _ in  | place and blood,
  The | ci -- vic slan -- der | and the spite;
  Ring | in the love _ of | trith and right,
  Ring | in the com -- mon | love of good.

  Ring | out old shapes of | foul dis -- ease;
  Ring | out the nar -- rowing | lust of gold;
  Ring | out the thou -- sand | _ wars of old;
  Ring | in the thou -- sand | years _ of peace;

  Ring | in the val -iant | men and free,
  The | larg -- er heart _ the | kind - lier hand.
  Ring | out the dark -- ness | of the land;
  Ring | in the Christ that | is to be.
}

tenorMusic = \relative c' {
  \repeat volta 4 {
    \repeat unfold 2 {
      R2. | r2 r8
      f,8 | f4 a8 d4 d16( d16) | d4 bes8 d4
      d8 | bes4 d8 d8(a8.) a16 | a4 a8 a4
      a8 | bes4 bes8 f f4 | d8( e) f e4
      f8 | bes4 bes8 a8( a8.) f16 | g8( f) e f4.
    }
  }
}
tenorWords = \lyricmode {
}

bassMusic = \relative c {
  \repeat volta 4 {
    \repeat unfold 2 {
      R2. | r2 r8
      d8 | d4 d8 d4 d16( d) | d4 d8 d4
      d8 | g4 g8 a\( a8.\) a,16 | a4 a8 d4
      d8 | bes4 bes8 a8 a4 | g g8 a4
      d8 | g8.( f16) e8 a\( f8.\) a,16 | a4 a8 d4.
    }
  }
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
