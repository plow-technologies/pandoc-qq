{-# LANGUAGE QuasiQuotes #-}

{- |
Module      : Text.Pandoc.QQ
Description : Pandoc Quasi Quoters 
Copyright   : Plow Technologies LLC
License     : MIT License

Maintainer  : Scott Murphy


Sometimes you might want to output some error message as html or markdown or some other format.

Pandoc is a bit heavy to do this all the time, but if reports are the main purpose of an application it might be worth it.


Currently provided modes are
+ pandoc_orgmode


-}
module Text.Pandoc.QQ (pandoc_orgmode) where

import Text.Pandoc.QQ.Internal


