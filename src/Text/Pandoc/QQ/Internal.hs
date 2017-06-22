{-# LANGUAGE PartialTypeSignatures #-}
module Text.Pandoc.QQ.Internal
    (pandoc_orgmode
    ) where

import qualified Language.Haskell.TH as TH
import Language.Haskell.TH.Quote
import Text.Pandoc




quoteExpPandoc :: String -> TH.Q TH.Exp
quoteExpPandoc s = do
    let eitherVal = readOrg def s
    case eitherVal of
      Left e -> fail $ show e
      Right val -> dataToExpQ (const Nothing) val

pandoc_orgmode :: QuasiQuoter 
pandoc_orgmode = QuasiQuoter { quoteExp = quoteExpPandoc,
                               quoteType = error "quoteType not defined in pandoc_orgmode QQ",
                               quoteDec  = error "quoteDec not defined in pandoc_orgmode QQ",
                               quotePat  = error "quotePat not defined in pandoc_orgmode QQ"}


