#import "../../config/constants.typ" : glossary
#import "terms.typ": glossary-terms
#import "../../config/thesis-config.typ": print-glossary

#pagebreak(to:"odd")
#heading(numbering: none, glossary) <glossary>
#show figure: it => {
  v(-0.8em)
  it
  v(-0.8em)
}
#print-glossary(glossary-terms, deduplicate-back-references: true)
