{-# OPTIONS_GHC -fno-warn-orphans #-}

module Control.Monad.Trans.RWS.CPS.Morph where

import Control.Monad.Morph
import Control.Monad.Trans.RWS.CPS.Internal

instance MFunctor (RWST r w s) where
    hoist nat (RWST m) = RWST (\r s w -> nat (m r s w))
