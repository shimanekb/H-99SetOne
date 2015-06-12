module Paths_problem2 (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem2/.cabal-sandbox/bin"
libdir     = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem2/.cabal-sandbox/lib/x86_64-osx-ghc-7.8.3/problem2-0.1.0.0"
datadir    = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem2/.cabal-sandbox/share/x86_64-osx-ghc-7.8.3/problem2-0.1.0.0"
libexecdir = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem2/.cabal-sandbox/libexec"
sysconfdir = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem2/.cabal-sandbox/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "problem2_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "problem2_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "problem2_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "problem2_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "problem2_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
