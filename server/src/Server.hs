{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
module Server where

import Control.Monad.IO.Class
import Data.Monoid (mconcat)
import Web.Scotty
import Web.Scotty.Internal.Types (ActionT)

import Domain

app :: ScottyM ()
app = do
  get "/person/:id" $ do
    pid :: Int <- param "id"
    liftIO $ print pid
    json $ Person Male 166 (5, 10)

  get "/:word" $ do
    beam <- param "word"
    html $ mconcat ["<h1>Scotty, ", beam, " me up! </h1>"]

