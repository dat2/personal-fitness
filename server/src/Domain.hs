{-# LANGUAGE TemplateHaskell #-}
module Domain where

import Data.Aeson.TH

data Gender =
    Male
  | Female
  deriving Show

data Person =
  Person {
    gender :: Gender,
    weight :: Double,
    height :: (Int,Int)
  } deriving (Show)

deriveJSON defaultOptions ''Gender
deriveJSON defaultOptions ''Person
