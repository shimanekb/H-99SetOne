module Paths_problem7 (
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

bindir     = "/Users/brandonshimanek/Library/Haskell/bin"
libdir     = "/Users/brandonshimanek/Library/Haskell/ghc-7.8.3-x86_64/lib/problem7-0.1.0.0"
datadir    = "/Users/brandonshimanek/Library/Haskell/share/ghc-7.8.3-x86_64/problem7-0.1.0.0"
libexecdir = "/Users/brandonshimanek/Library/Haskell/libexec"
sysconfdir = "/Users/brandonshimanek/Library/Haskell/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "problem7_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "problem7_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "problem7_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "problem7_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "problem7_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
