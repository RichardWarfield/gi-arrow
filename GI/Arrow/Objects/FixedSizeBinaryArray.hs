{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.FixedSizeBinaryArray
    ( 

-- * Exported types
    FixedSizeBinaryArray(..)                ,
    IsFixedSizeBinaryArray                  ,
    toFixedSizeBinaryArray                  ,
    noFixedSizeBinaryArray                  ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFixedSizeBinaryArrayMethod       ,
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

import {-# SOURCE #-} qualified GI.Arrow.Objects.Array as Arrow.Array
import {-# SOURCE #-} qualified GI.Arrow.Objects.PrimitiveArray as Arrow.PrimitiveArray
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype FixedSizeBinaryArray = FixedSizeBinaryArray (ManagedPtr FixedSizeBinaryArray)
    deriving (Eq)
foreign import ccall "garrow_fixed_size_binary_array_get_type"
    c_garrow_fixed_size_binary_array_get_type :: IO GType

instance GObject FixedSizeBinaryArray where
    gobjectType = c_garrow_fixed_size_binary_array_get_type
    

-- | Convert 'FixedSizeBinaryArray' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FixedSizeBinaryArray where
    toGValue o = do
        gtype <- c_garrow_fixed_size_binary_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FixedSizeBinaryArray)
        B.ManagedPtr.newObject FixedSizeBinaryArray ptr
        
    

-- | Type class for types which can be safely cast to `FixedSizeBinaryArray`, for instance with `toFixedSizeBinaryArray`.
class (GObject o, O.IsDescendantOf FixedSizeBinaryArray o) => IsFixedSizeBinaryArray o
instance (GObject o, O.IsDescendantOf FixedSizeBinaryArray o) => IsFixedSizeBinaryArray o

instance O.HasParentTypes FixedSizeBinaryArray
type instance O.ParentTypes FixedSizeBinaryArray = '[Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `FixedSizeBinaryArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFixedSizeBinaryArray :: (MonadIO m, IsFixedSizeBinaryArray o) => o -> m FixedSizeBinaryArray
toFixedSizeBinaryArray = liftIO . unsafeCastTo FixedSizeBinaryArray

-- | A convenience alias for `Nothing` :: `Maybe` `FixedSizeBinaryArray`.
noFixedSizeBinaryArray :: Maybe FixedSizeBinaryArray
noFixedSizeBinaryArray = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFixedSizeBinaryArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveFixedSizeBinaryArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFixedSizeBinaryArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFixedSizeBinaryArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveFixedSizeBinaryArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveFixedSizeBinaryArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveFixedSizeBinaryArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveFixedSizeBinaryArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveFixedSizeBinaryArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveFixedSizeBinaryArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveFixedSizeBinaryArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFixedSizeBinaryArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFixedSizeBinaryArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFixedSizeBinaryArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFixedSizeBinaryArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveFixedSizeBinaryArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveFixedSizeBinaryArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFixedSizeBinaryArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFixedSizeBinaryArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFixedSizeBinaryArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFixedSizeBinaryArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFixedSizeBinaryArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveFixedSizeBinaryArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFixedSizeBinaryArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFixedSizeBinaryArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveFixedSizeBinaryArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFixedSizeBinaryArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveFixedSizeBinaryArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveFixedSizeBinaryArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFixedSizeBinaryArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFixedSizeBinaryArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveFixedSizeBinaryArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFixedSizeBinaryArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveFixedSizeBinaryArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveFixedSizeBinaryArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveFixedSizeBinaryArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveFixedSizeBinaryArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFixedSizeBinaryArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFixedSizeBinaryArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveFixedSizeBinaryArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveFixedSizeBinaryArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFixedSizeBinaryArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFixedSizeBinaryArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFixedSizeBinaryArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFixedSizeBinaryArrayMethod t FixedSizeBinaryArray, O.MethodInfo info FixedSizeBinaryArray p) => OL.IsLabel t (FixedSizeBinaryArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FixedSizeBinaryArray
type instance O.AttributeList FixedSizeBinaryArray = FixedSizeBinaryArrayAttributeList
type FixedSizeBinaryArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FixedSizeBinaryArray = FixedSizeBinaryArraySignalList
type FixedSizeBinaryArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif


