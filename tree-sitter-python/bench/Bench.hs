{-# LANGUAGE TypeApplications #-}
module Main
( main) where

import           Control.Monad
import qualified Data.ByteString as B
import           Gauge
import           System.Exit (die)
import           System.Environment (getArgs)
import           TreeSitter.Python
import qualified TreeSitter.Python.AST as Py
import           TreeSitter.Unmarshal

main :: IO ()
main = args >>= defaultMain . map (bench <*> nfIO . parseFile)

parseFile :: FilePath -> IO ()
parseFile = either die pure <=< parseByteString @Py.Module @() tree_sitter_python <=< B.readFile
