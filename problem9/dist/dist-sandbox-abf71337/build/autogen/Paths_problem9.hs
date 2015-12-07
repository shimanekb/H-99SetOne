module Paths_problem9 (
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
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/shimanek/Haskell_Workspace/H-99SetOne/problem9/.cabal-sandbox/bin"
libdir     = "/home/shimanek/Haskell_Workspace/H-99SetOne/problem9/.cabal-sandbox/lib/x86_64-linux-ghc-7.10.2.20151118/problem9-0.1.0.0-0sLTtulK2ffLYx6gKUBYVU"
datadir    = "/home/shimanek/Haskell_Workspace/H-99SetOne/problem9/.cabal-sandbox/share/x86_64-linux-ghc-7.10.2.20151118/problem9-0.1.0.0"
libexecdir = "/home/shimanek/Haskell_Workspace/H-99SetOne/problem9/.cabal-sandbox/libexec"
sysconfdir = "/home/shimanek/Haskell_Workspace/H-99SetOne/problem9/.cabal-sandbox/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "problem9_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "problem9_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "problem9_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "problem9_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "problem9_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
