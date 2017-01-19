{-# OPTIONS_GHC -fno-warn-orphans #-}

module Control.Monad.Trans.Writer.CPS.Morph where

import Control.Monad.Morph
import Control.Monad.Trans.Writer.CPS.Internal

instance MFunctor (WriterT w) where
    hoist nat (WriterT m) = WriterT (\w -> nat (m w))
