{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_C0 (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/netcan/.cabal/bin"
libdir     = "/home/netcan/.cabal/lib/x86_64-linux-ghc-8.8.4/C0-0.1.0.0-inplace-C0"
dynlibdir  = "/home/netcan/.cabal/lib/x86_64-linux-ghc-8.8.4"
datadir    = "/home/netcan/.cabal/share/x86_64-linux-ghc-8.8.4/C0-0.1.0.0"
libexecdir = "/home/netcan/.cabal/libexec/x86_64-linux-ghc-8.8.4/C0-0.1.0.0"
sysconfdir = "/home/netcan/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "C0_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "C0_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "C0_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "C0_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "C0_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "C0_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
