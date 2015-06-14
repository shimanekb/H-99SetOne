module Paths_problem4 (
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

bindir     = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem4/.cabal-sandbox/bin"
libdir     = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem4/.cabal-sandbox/lib/x86_64-osx-ghc-7.8.3/problem4-0.1.0.0"
datadir    = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem4/.cabal-sandbox/share/x86_64-osx-ghc-7.8.3/problem4-0.1.0.0"
libexecdir = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem4/.cabal-sandbox/libexec"
sysconfdir = "/Users/brandonshimanek/Documents/Haskell_Workspaces/H-99SetOne/problem4/.cabal-sandbox/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "problem4_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "problem4_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "problem4_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "problem4_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "problem4_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
