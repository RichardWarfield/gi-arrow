{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Decimal128Array
    ( 

-- * Exported types
    Decimal128Array(..)                     ,
    IsDecimal128Array                       ,
    toDecimal128Array                       ,
    noDecimal128Array                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDecimal128ArrayMethod            ,
#endif


-- ** formatValue #method:formatValue#

#if defined(ENABLE_OVERLOADING)
    Decimal128ArrayFormatValueMethodInfo    ,
#endif
    decimal128ArrayFormatValue              ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    Decimal128ArrayGetValueMethodInfo       ,
#endif
    decimal128ArrayGetValue                 ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Decimal128 as Arrow.Decimal128
import {-# SOURCE #-} qualified GI.Arrow.Objects.FixedSizeBinaryArray as Arrow.FixedSizeBinaryArray
import {-# SOURCE #-} qualified GI.Arrow.Objects.PrimitiveArray as Arrow.PrimitiveArray
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Decimal128Array = Decimal128Array (ManagedPtr Decimal128Array)
    deriving (Eq)
foreign import ccall "garrow_decimal128_array_get_type"
    c_garrow_decimal128_array_get_type :: IO GType

instance GObject Decimal128Array where
    gobjectType = c_garrow_decimal128_array_get_type
    

-- | Convert 'Decimal128Array' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Decimal128Array where
    toGValue o = do
        gtype <- c_garrow_decimal128_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Decimal128Array)
        B.ManagedPtr.newObject Decimal128Array ptr
        
    

-- | Type class for types which can be safely cast to `Decimal128Array`, for instance with `toDecimal128Array`.
class (GObject o, O.IsDescendantOf Decimal128Array o) => IsDecimal128Array o
instance (GObject o, O.IsDescendantOf Decimal128Array o) => IsDecimal128Array o

instance O.HasParentTypes Decimal128Array
type instance O.ParentTypes Decimal128Array = '[Arrow.FixedSizeBinaryArray.FixedSizeBinaryArray, Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `Decimal128Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDecimal128Array :: (MonadIO m, IsDecimal128Array o) => o -> m Decimal128Array
toDecimal128Array = liftIO . unsafeCastTo Decimal128Array

-- | A convenience alias for `Nothing` :: `Maybe` `Decimal128Array`.
noDecimal128Array :: Maybe Decimal128Array
noDecimal128Array = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDecimal128ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveDecimal128ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDecimal128ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDecimal128ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveDecimal128ArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveDecimal128ArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveDecimal128ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveDecimal128ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveDecimal128ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveDecimal128ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveDecimal128ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDecimal128ArrayMethod "formatValue" o = Decimal128ArrayFormatValueMethodInfo
    ResolveDecimal128ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDecimal128ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDecimal128ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDecimal128ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveDecimal128ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveDecimal128ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDecimal128ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDecimal128ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDecimal128ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDecimal128ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDecimal128ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveDecimal128ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDecimal128ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDecimal128ArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveDecimal128ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDecimal128ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveDecimal128ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveDecimal128ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDecimal128ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDecimal128ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveDecimal128ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDecimal128ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveDecimal128ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveDecimal128ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveDecimal128ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveDecimal128ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDecimal128ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDecimal128ArrayMethod "getValue" o = Decimal128ArrayGetValueMethodInfo
    ResolveDecimal128ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveDecimal128ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveDecimal128ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDecimal128ArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDecimal128ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDecimal128ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDecimal128ArrayMethod t Decimal128Array, O.MethodInfo info Decimal128Array p) => OL.IsLabel t (Decimal128Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Decimal128Array
type instance O.AttributeList Decimal128Array = Decimal128ArrayAttributeList
type Decimal128ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Decimal128Array = Decimal128ArraySignalList
type Decimal128ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Decimal128Array::format_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128Array."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "i"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the target value."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_array_format_value" garrow_decimal128_array_format_value :: 
    Ptr Decimal128Array ->                  -- array : TInterface (Name {namespace = "Arrow", name = "Decimal128Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO CString

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
decimal128ArrayFormatValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Decimal128Array.Decimal128Array'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m T.Text
    -- ^ __Returns:__ The formatted i-th value.
    -- 
    --   The returned string should be freed with 'GI.GLib.Functions.free' when no longer
    --   needed.
decimal128ArrayFormatValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_decimal128_array_format_value array' i
    checkUnexpectedReturnNULL "decimal128ArrayFormatValue" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr array
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128ArrayFormatValueMethodInfo
instance (signature ~ (Int64 -> m T.Text), MonadIO m, IsDecimal128Array a) => O.MethodInfo Decimal128ArrayFormatValueMethodInfo a signature where
    overloadedMethod = decimal128ArrayFormatValue

#endif

-- method Decimal128Array::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128Array."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "i"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the target value."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "Decimal128" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_array_get_value" garrow_decimal128_array_get_value :: 
    Ptr Decimal128Array ->                  -- array : TInterface (Name {namespace = "Arrow", name = "Decimal128Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO (Ptr Arrow.Decimal128.Decimal128)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
decimal128ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Decimal128Array.Decimal128Array'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m Arrow.Decimal128.Decimal128
    -- ^ __Returns:__ The i-th value.
decimal128ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_decimal128_array_get_value array' i
    checkUnexpectedReturnNULL "decimal128ArrayGetValue" result
    result' <- (wrapObject Arrow.Decimal128.Decimal128) result
    touchManagedPtr array
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Arrow.Decimal128.Decimal128), MonadIO m, IsDecimal128Array a) => O.MethodInfo Decimal128ArrayGetValueMethodInfo a signature where
    overloadedMethod = decimal128ArrayGetValue

#endif


