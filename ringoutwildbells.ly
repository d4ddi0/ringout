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
choral_rest = { R2. | r2 r8 }
sop_phraseone = { d,8 | d( e) f a4 a16( a16) | bes8( a) g a4 }
sop_phrasetwo = { a8 | g a bes a( f8.) f16 | g8( f) e f4 }
sop_phrasethree = { f8 | d'4 d8 c f,4 | bes bes8 a4 }
sop_phrasethree_alt = { f8 | d'4 d8 c4 f,8 | bes4 bes8 a4 }
sop_phrasefour = { a8 | e8.( f16) g8 f\( d8.\) d16 | }
sop_end = { | e8 d cis d4. }

sopMusic = \relative c'' {
  \repeat volta 4 {
    \repeat unfold 2 {
      \choral_rest
      \sop_phraseone \sop_phrasetwo \sop_phrasethree \sop_phrasefour
    } \alternative { \sop_end {} }
  } \alternative {
      \sop_end
      { | e8 d cis d4\fermata \sop_phrasethree_alt \sop_phrasefour \sop_end }
  }
}
alto_phraseone = { a8 | a4 d8 f4 f16 f | g8( f) e f4 }
alto_phrasetwo = { f8 | d4 g8 f( d8.) d16 | e8( d) cis d4 }
alto_phrasethree = { d8 | f4 f8 f c4 | d d8 cis4 }
alto_phrasethree_alt = { d8 | f4 f8 f c4 | d d8 cis4 }
alto_phrasefour = { d8 | d4 d8 d( d8.) d16 | }
alto_end = { | cis8( d) a a4. | }

altoMusic = \relative c' {
  \repeat volta 4 {
    \repeat unfold 2 {
      \choral_rest
      \alto_phraseone
      \alto_phrasetwo
      \alto_phrasethree \alto_phrasefour
    } \alternative { \alto_end {} }
  } \alternative {
    \alto_end
    { | cis8( d) a a4 \alto_phrasethree_alt \alto_phrasefour \alto_end }
  }
}
altoWords =\lyricmode {
  <<
  \new Lyrics = "firstVerse"
  {
  \set associatedVoice = "altos"
  Ring | out, wild bells, to the | wild _ sky,
  The | fly -- ing cloud, the fro -- sty light.
  The | year is dy -- ing, in the night;
  Ring | out, wild bells, and let him die.

  Ring | out the old; ring _ | in the new.
  Ring | ha -- ppy bells  a -- | cross the snow.
  The | year is go -- ing; | let him go.
  Ring | out the false; ring | in the true.
  }
  \new Lyrics = "secondVerse"
  \with { alignBelowContext = #"firstVerse" } {
    \set associatedVoice = "altos"
  Ring | out the grief that _ | saps the mind
  For | those that here we | see no more;
  Ring | out the feud of | rich and poor,
  Ring | in re -- dress to | all man -- kind.

  Ring | out a slow -- ly _ | dy -- ing cause,
  And | anc -- ient forms of | par -- ty strife;
  Ring | in the no -- bler | modes of life,
  With | sweet -- er man -- ners, | pur -- er laws.
  }

  \new Lyrics = "thirdVerse"
  \with { alignBelowContext = #"secondVerse" } {
  \set associatedVoice = "altos"
  Ring | out the want, the _ | care, the sin,
  The | faith -- less cold -- ness | of the times;
  ring | out, ring out my | mourn -- ful rhymes
  But | ring the full -- er | min -- strel in.

  Ring | out false pride _ in  | place and blood,
  The | ci -- vic slan -- der | and the spite;
  Ring | in the love of | truth and right,
  Ring | in the com -- mon | love of good.
  }
  \new Lyrics = "fourthVerse"
  \with { alignBelowContext = #"thirdVerse" } {
  \set associatedVoice = "altos"
  Ring | out old shapes of _ | foul dis -- ease;
  Ring | out the nar -- rowing | lust of gold;
  Ring | out the thou -- sand | wars of old;
  Ring | in the thou -- sand | years of peace;

  Ring | in the val -iant _ | men and free,
  The | larg -- er heart the | kind -- lier hand.
  Ring | out the dark -- ness | of the land;
  Ring | in the Christ that | is to be.
  }
  >>
  is to be.
  Ring | out the dark -- ness | of the land;
  Ring | in the Christ that | is to be.
}

tenor_phraseone = { f,8 | f4 a8 d4 d16( d16) | d4 bes8 d4 }
tenor_phrasetwo = { d8 | bes4 d8 d8(a8.) a16 | a4 a8 a4 }
tenor_phrasethree = { a8 | bes4 bes8 f f4 | d8( e) f e4 }
tenor_phrasethree_alt = { a8 | bes4 bes8 f f4 | d8( e) f e4 }
tenor_phrasefour = { f8 | bes4 bes8 a8( a8.) f16 | }
tenor_end = { g8( f) e  f4. }

tenorMusic = \relative c' {
  \repeat volta 4 {
    \repeat unfold 2 {
      \choral_rest
      \tenor_phraseone \tenor_phrasetwo \tenor_phrasethree \tenor_phrasefour
    } \alternative { \tenor_end {} }
  } \alternative {
    \tenor_end
    { | g8( f) e f4 \tenor_phrasethree_alt \tenor_phrasefour \tenor_end }
  }
}

bass_phraseone = { d8 | d4 d8 d4 d16( d) | d4 d8 d4 }
bass_phrasetwo = { d8 | g4 g8 a\( a8.\) a,16 | a4 a8 d4 }
bass_phrasethree = { d8 | bes4 bes8 a8 a4 | g g8 a4 }
bass_phrasethree_alt = { d8 | bes4 bes8 a8 a4 | g g8 a4 }
bass_phrasefour = { d8 | g8.( f16) e8 a\( f8.\) a,16 | }
bass_end = {  | a4 a8 d4. }

bassMusic = \relative c {
  \repeat volta 4 {
    \repeat unfold 2 {
      \choral_rest
      \bass_phraseone \bass_phrasetwo \bass_phrasethree \bass_phrasefour
    } \alternative { \bass_end {} }
  } \alternative {
    \bass_end
    { | a4 a8 d4 \bass_phrasethree_alt \bass_phrasefour \bass_end }
  }
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff = "women" <<
        \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
        \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
      >>
      \new Lyrics = "altos"
      \context Lyrics = "altos" \lyricsto "altos" \altoWords
      \new Staff = "men" <<
        \clef bass
        \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
        \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
      >>
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
