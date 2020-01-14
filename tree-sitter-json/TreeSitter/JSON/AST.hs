{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeApplications #-}

module TreeSitter.JSON.AST
( module TreeSitter.JSON.AST
) where

import           Prelude hiding (String)
import           TreeSitter.GenerateSyntax
import qualified TreeSitter.JSON as Grammar

astDeclarationsForLanguage Grammar.tree_sitter_json "../../vendor/tree-sitter-json/src/node-types.json"
