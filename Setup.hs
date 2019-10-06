{-# LANGUAGE OverloadedStrings #-}

import Data.GI.CodeGen.CabalHooks (setupBinding, TaggedOverride(..))

import qualified GI.GLib.Config as GLib
import qualified GI.GObject.Config as GObject
import qualified GI.Gio.Config as Gio


main :: IO ()
main = setupBinding name version verbose overridesFile inheritedOverrides outputDir
  where name = "Arrow"
        version = "1.0"
        overridesFile = Just "Arrow.overrides"
        verbose = False
        outputDir = Nothing
        inheritedOverrides = [TaggedOverride "inherited:GLib" GLib.overrides, TaggedOverride "inherited:GObject" GObject.overrides, TaggedOverride "inherited:Gio" Gio.overrides]
