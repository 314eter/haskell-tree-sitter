{-# LANGUAGE TemplateHaskell #-}
module TreeSitter.JSON
( tree_sitter_json
, Grammar(..)
) where

import Language.Haskell.TH
import TreeSitter.JSON.Internal
import TreeSitter.Language

-- Regenerate template haskell code when these files change:
addDependentFileRelative "../vendor/tree-sitter-json/src/parser.c"

-- | Statically-known rules corresponding to symbols in the grammar.
mkSymbolDatatype (mkName "Grammar") tree_sitter_json
