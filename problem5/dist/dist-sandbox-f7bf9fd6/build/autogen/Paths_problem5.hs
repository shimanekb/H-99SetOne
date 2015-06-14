module Paths_problem5 (
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

bindir     = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem5/.cabal-sandbox/bin"
libdir     = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem5/.cabal-sandbox/lib/x86_64-osx-ghc-7.8.3/problem5-0.1.0.0"
datadir    = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem5/.cabal-sandbox/share/x86_64-osx-ghc-7.8.3/problem5-0.1.0.0"
libexecdir = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem5/.cabal-sandbox/libexec"
sysconfdir = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem5/.cabal-sandbox/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "problem5_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "problem5_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "problem5_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "problem5_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "problem5_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
