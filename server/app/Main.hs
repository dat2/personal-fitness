module Main where

import System.Environment
import Web.Scotty

import Server

import qualified Configuration.Dotenv as Dotenv

main :: IO ()
main = do
  Dotenv.loadFile False "../.env"
  port <- getEnv "PORT"

  putStrLn $ "http://localhost:" ++ port
  scotty (read port :: Int) app
