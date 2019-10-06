{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.UInt8Array
    ( 

-- * Exported types
    UInt8Array(..)                          ,
    IsUInt8Array                            ,
    toUInt8Array                            ,
    noUInt8Array                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveUInt8ArrayMethod                 ,
#endif


-- ** compare #method:compare#

#if defined(ENABLE_OVERLOADING)
    UInt8ArrayCompareMethodInfo             ,
#endif
    uInt8ArrayCompare                       ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    UInt8ArrayGetValueMethodInfo            ,
#endif
    uInt8ArrayGetValue                      ,


-- ** getValues #method:getValues#

#if defined(ENABLE_OVERLOADING)
    UInt8ArrayGetValuesMethodInfo           ,
#endif
    uInt8ArrayGetValues                     ,


-- ** new #method:new#

    uInt8ArrayNew                           ,


-- ** sum #method:sum#

#if defined(ENABLE_OVERLOADING)
    UInt8ArraySumMethodInfo                 ,
#endif
    uInt8ArraySum                           ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.BooleanArray as Arrow.BooleanArray
import {-# SOURCE #-} qualified GI.Arrow.Objects.Buffer as Arrow.Buffer
import {-# SOURCE #-} qualified GI.Arrow.Objects.CompareOptions as Arrow.CompareOptions
import {-# SOURCE #-} qualified GI.Arrow.Objects.NumericArray as Arrow.NumericArray
import {-# SOURCE #-} qualified GI.Arrow.Objects.PrimitiveArray as Arrow.PrimitiveArray
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype UInt8Array = UInt8Array (ManagedPtr UInt8Array)
    deriving (Eq)
foreign import ccall "garrow_uint8_array_get_type"
    c_garrow_uint8_array_get_type :: IO GType

instance GObject UInt8Array where
    gobjectType = c_garrow_uint8_array_get_type
    

-- | Convert 'UInt8Array' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue UInt8Array where
    toGValue o = do
        gtype <- c_garrow_uint8_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr UInt8Array)
        B.ManagedPtr.newObject UInt8Array ptr
        
    

-- | Type class for types which can be safely cast to `UInt8Array`, for instance with `toUInt8Array`.
class (GObject o, O.IsDescendantOf UInt8Array o) => IsUInt8Array o
instance (GObject o, O.IsDescendantOf UInt8Array o) => IsUInt8Array o

instance O.HasParentTypes UInt8Array
type instance O.ParentTypes UInt8Array = '[Arrow.NumericArray.NumericArray, Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `UInt8Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt8Array :: (MonadIO m, IsUInt8Array o) => o -> m UInt8Array
toUInt8Array = liftIO . unsafeCastTo UInt8Array

-- | A convenience alias for `Nothing` :: `Maybe` `UInt8Array`.
noUInt8Array :: Maybe UInt8Array
noUInt8Array = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveUInt8ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt8ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt8ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt8ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveUInt8ArrayMethod "compare" o = UInt8ArrayCompareMethodInfo
    ResolveUInt8ArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveUInt8ArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveUInt8ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveUInt8ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveUInt8ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveUInt8ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveUInt8ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt8ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt8ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt8ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt8ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveUInt8ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveUInt8ArrayMethod "mean" o = Arrow.NumericArray.NumericArrayMeanMethodInfo
    ResolveUInt8ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt8ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt8ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt8ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt8ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt8ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveUInt8ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt8ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt8ArrayMethod "sum" o = UInt8ArraySumMethodInfo
    ResolveUInt8ArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveUInt8ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt8ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveUInt8ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveUInt8ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt8ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt8ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveUInt8ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt8ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveUInt8ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveUInt8ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveUInt8ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveUInt8ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt8ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt8ArrayMethod "getValue" o = UInt8ArrayGetValueMethodInfo
    ResolveUInt8ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveUInt8ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveUInt8ArrayMethod "getValues" o = UInt8ArrayGetValuesMethodInfo
    ResolveUInt8ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt8ArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUInt8ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt8ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt8ArrayMethod t UInt8Array, O.MethodInfo info UInt8Array p) => OL.IsLabel t (UInt8Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UInt8Array
type instance O.AttributeList UInt8Array = UInt8ArrayAttributeList
type UInt8ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UInt8Array = UInt8ArraySignalList
type UInt8ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt8Array::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "length"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of elements."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "data"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Buffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The binary data in Arrow format of the array."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "null_bitmap"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Buffer" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_nulls"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap."
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
--               (TInterface Name { namespace = "Arrow" , name = "UInt8Array" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint8_array_new" garrow_uint8_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr UInt8Array)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
uInt8ArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Buffer.IsBuffer a, Arrow.Buffer.IsBuffer b) =>
    Int64
    -- ^ /@length@/: The number of elements.
    -> a
    -- ^ /@data@/: The binary data in Arrow format of the array.
    -> Maybe (b)
    -- ^ /@nullBitmap@/: The bitmap that shows null elements. The
    --   N-th element is null when the N-th bit is 0, not null otherwise.
    --   If the array has no null elements, the bitmap must be 'P.Nothing' and
    --   /@nNulls@/ is 0.
    -> Int64
    -- ^ /@nNulls@/: The number of null elements. If -1 is specified, the
    --   number of nulls are computed from /@nullBitmap@/.
    -> m UInt8Array
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.UInt8Array.UInt8Array'.
uInt8ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_uint8_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "uInt8ArrayNew" result
    result' <- (wrapObject UInt8Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UInt8Array::compare
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt8Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt8Array."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "value"
--           , argType = TBasicType TUInt8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The value to compare."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CompareOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCompareOptions."
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
--               (TInterface Name { namespace = "Arrow" , name = "BooleanArray" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint8_array_compare" garrow_uint8_array_compare :: 
    Ptr UInt8Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "UInt8Array"})
    Word8 ->                                -- value : TBasicType TUInt8
    Ptr Arrow.CompareOptions.CompareOptions -> -- options : TInterface (Name {namespace = "Arrow", name = "CompareOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.BooleanArray.BooleanArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
uInt8ArrayCompare ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt8Array a, Arrow.CompareOptions.IsCompareOptions b) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt8Array.UInt8Array'.
    -> Word8
    -- ^ /@value@/: The value to compare.
    -> b
    -- ^ /@options@/: A t'GI.Arrow.Objects.CompareOptions.CompareOptions'.
    -> m (Maybe Arrow.BooleanArray.BooleanArray)
    -- ^ __Returns:__ The t'GI.Arrow.Objects.BooleanArray.BooleanArray' as
    --   the result compared a numeric array with a scalar on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
uInt8ArrayCompare array value options = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    options' <- unsafeManagedPtrCastPtr options
    onException (do
        result <- propagateGError $ garrow_uint8_array_compare array' value options'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.BooleanArray.BooleanArray) result'
            return result''
        touchManagedPtr array
        touchManagedPtr options
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt8ArrayCompareMethodInfo
instance (signature ~ (Word8 -> b -> m (Maybe Arrow.BooleanArray.BooleanArray)), MonadIO m, IsUInt8Array a, Arrow.CompareOptions.IsCompareOptions b) => O.MethodInfo UInt8ArrayCompareMethodInfo a signature where
    overloadedMethod = uInt8ArrayCompare

#endif

-- method UInt8Array::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt8Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt8Array."
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
-- returnType: Just (TBasicType TUInt8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint8_array_get_value" garrow_uint8_array_get_value :: 
    Ptr UInt8Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "UInt8Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Word8

-- | /No description available in the introspection data./
uInt8ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt8Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt8Array.UInt8Array'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m Word8
    -- ^ __Returns:__ The i-th value.
uInt8ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_uint8_array_get_value array' i
    touchManagedPtr array
    return result

#if defined(ENABLE_OVERLOADING)
data UInt8ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Word8), MonadIO m, IsUInt8Array a) => O.MethodInfo UInt8ArrayGetValueMethodInfo a signature where
    overloadedMethod = uInt8ArrayGetValue

#endif

-- method UInt8Array::get_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt8Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt8Array."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "length"
--           , argType = TBasicType TInt64
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of values."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "length"
--              , argType = TBasicType TInt64
--              , direction = DirectionOut
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The number of values."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferEverything
--              }
--          ]
-- returnType: Just (TCArray False (-1) 1 (TBasicType TUInt8))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint8_array_get_values" garrow_uint8_array_get_values :: 
    Ptr UInt8Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "UInt8Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Word8)

-- | /No description available in the introspection data./
uInt8ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt8Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt8Array.UInt8Array'.
    -> m ByteString
    -- ^ __Returns:__ The raw values.
uInt8ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_uint8_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "uInt8ArrayGetValues" result
    result' <- (unpackByteStringWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if defined(ENABLE_OVERLOADING)
data UInt8ArrayGetValuesMethodInfo
instance (signature ~ (m ByteString), MonadIO m, IsUInt8Array a) => O.MethodInfo UInt8ArrayGetValuesMethodInfo a signature where
    overloadedMethod = uInt8ArrayGetValues

#endif

-- method UInt8Array::sum
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt8Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt8Array."
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
-- returnType: Just (TBasicType TUInt64)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint8_array_sum" garrow_uint8_array_sum :: 
    Ptr UInt8Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "UInt8Array"})
    Ptr (Ptr GError) ->                     -- error
    IO Word64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
uInt8ArraySum ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt8Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt8Array.UInt8Array'.
    -> m Word64
    -- ^ __Returns:__ The value of the computed sum on success,
    --   If an error is occurred, the returned value is untrustful value. /(Can throw 'Data.GI.Base.GError.GError')/
uInt8ArraySum array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_uint8_array_sum array'
        touchManagedPtr array
        return result
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt8ArraySumMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsUInt8Array a) => O.MethodInfo UInt8ArraySumMethodInfo a signature where
    overloadedMethod = uInt8ArraySum

#endif


