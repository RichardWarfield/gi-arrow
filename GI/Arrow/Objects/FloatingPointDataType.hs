{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.FloatingPointDataType
    ( 

-- * Exported types
    FloatingPointDataType(..)               ,
    IsFloatingPointDataType                 ,
    toFloatingPointDataType                 ,
    noFloatingPointDataType                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFloatingPointDataTypeMethod      ,
#endif




    ) where

import Data.GI.Base.ShortPrelude
import qualified Data.GI.Base.ShortPrelude as SP
import qualified Data.GI.Base.Overloading as O
import qualified Prelude as P

import qualified Data.GI.Base.Attributes as GI.Attributes
import qualified Data.GI.Base.ManagedPtr as B.ManagedPtr
import qualified Data.GI.Base.GClosure as B.GClosure
import qualified Data.GI.Base.GError as B.GError
import qualified Data.GI.Base.GVariant as B.GVariant
import qualified Data.GI.Base.GValue as B.GValue
import qualified Data.GI.Base.GParamSpec as B.GParamSpec
import qualified Data.GI.Base.CallStack as B.CallStack
import qualified Data.GI.Base.Properties as B.Properties
import qualified Data.GI.Base.Signals as B.Signals
import qualified Control.Monad.IO.Class as MIO
import qualified Data.Text as T
import qualified Data.ByteString.Char8 as B
import qualified Data.Map as Map
import qualified Foreign.Ptr as FP
import qualified GHC.OverloadedLabels as OL

import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.FixedWidthDataType as Arrow.FixedWidthDataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.NumericDataType as Arrow.NumericDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype FloatingPointDataType = FloatingPointDataType (ManagedPtr FloatingPointDataType)
    deriving (Eq)
foreign import ccall "garrow_floating_point_data_type_get_type"
    c_garrow_floating_point_data_type_get_type :: IO GType

instance GObject FloatingPointDataType where
    gobjectType = c_garrow_floating_point_data_type_get_type
    

-- | Convert 'FloatingPointDataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FloatingPointDataType where
    toGValue o = do
        gtype <- c_garrow_floating_point_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FloatingPointDataType)
        B.ManagedPtr.newObject FloatingPointDataType ptr
        
    

-- | Type class for types which can be safely cast to `FloatingPointDataType`, for instance with `toFloatingPointDataType`.
class (GObject o, O.IsDescendantOf FloatingPointDataType o) => IsFloatingPointDataType o
instance (GObject o, O.IsDescendantOf FloatingPointDataType o) => IsFloatingPointDataType o

instance O.HasParentTypes FloatingPointDataType
type instance O.ParentTypes FloatingPointDataType = '[Arrow.NumericDataType.NumericDataType, Arrow.FixedWidthDataType.FixedWidthDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `FloatingPointDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFloatingPointDataType :: (MonadIO m, IsFloatingPointDataType o) => o -> m FloatingPointDataType
toFloatingPointDataType = liftIO . unsafeCastTo FloatingPointDataType

-- | A convenience alias for `Nothing` :: `Maybe` `FloatingPointDataType`.
noFloatingPointDataType :: Maybe FloatingPointDataType
noFloatingPointDataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFloatingPointDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveFloatingPointDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFloatingPointDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFloatingPointDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveFloatingPointDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFloatingPointDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFloatingPointDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFloatingPointDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFloatingPointDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFloatingPointDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFloatingPointDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFloatingPointDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFloatingPointDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFloatingPointDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFloatingPointDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFloatingPointDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFloatingPointDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveFloatingPointDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFloatingPointDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFloatingPointDataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveFloatingPointDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFloatingPointDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveFloatingPointDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFloatingPointDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFloatingPointDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFloatingPointDataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFloatingPointDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFloatingPointDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFloatingPointDataTypeMethod t FloatingPointDataType, O.MethodInfo info FloatingPointDataType p) => OL.IsLabel t (FloatingPointDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FloatingPointDataType
type instance O.AttributeList FloatingPointDataType = FloatingPointDataTypeAttributeList
type FloatingPointDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FloatingPointDataType = FloatingPointDataTypeSignalList
type FloatingPointDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif


