{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.UInt32Array
    ( 

-- * Exported types
    UInt32Array(..)                         ,
    IsUInt32Array                           ,
    toUInt32Array                           ,
    noUInt32Array                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveUInt32ArrayMethod                ,
#endif


-- ** compare #method:compare#

#if defined(ENABLE_OVERLOADING)
    UInt32ArrayCompareMethodInfo            ,
#endif
    uInt32ArrayCompare                      ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    UInt32ArrayGetValueMethodInfo           ,
#endif
    uInt32ArrayGetValue                     ,


-- ** getValues #method:getValues#

#if defined(ENABLE_OVERLOADING)
    UInt32ArrayGetValuesMethodInfo          ,
#endif
    uInt32ArrayGetValues                    ,


-- ** new #method:new#

    uInt32ArrayNew                          ,


-- ** sum #method:sum#

#if defined(ENABLE_OVERLOADING)
    UInt32ArraySumMethodInfo                ,
#endif
    uInt32ArraySum                          ,




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
newtype UInt32Array = UInt32Array (ManagedPtr UInt32Array)
    deriving (Eq)
foreign import ccall "garrow_uint32_array_get_type"
    c_garrow_uint32_array_get_type :: IO GType

instance GObject UInt32Array where
    gobjectType = c_garrow_uint32_array_get_type
    

-- | Convert 'UInt32Array' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue UInt32Array where
    toGValue o = do
        gtype <- c_garrow_uint32_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr UInt32Array)
        B.ManagedPtr.newObject UInt32Array ptr
        
    

-- | Type class for types which can be safely cast to `UInt32Array`, for instance with `toUInt32Array`.
class (GObject o, O.IsDescendantOf UInt32Array o) => IsUInt32Array o
instance (GObject o, O.IsDescendantOf UInt32Array o) => IsUInt32Array o

instance O.HasParentTypes UInt32Array
type instance O.ParentTypes UInt32Array = '[Arrow.NumericArray.NumericArray, Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `UInt32Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt32Array :: (MonadIO m, IsUInt32Array o) => o -> m UInt32Array
toUInt32Array = liftIO . unsafeCastTo UInt32Array

-- | A convenience alias for `Nothing` :: `Maybe` `UInt32Array`.
noUInt32Array :: Maybe UInt32Array
noUInt32Array = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveUInt32ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt32ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt32ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt32ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveUInt32ArrayMethod "compare" o = UInt32ArrayCompareMethodInfo
    ResolveUInt32ArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveUInt32ArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveUInt32ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveUInt32ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveUInt32ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveUInt32ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveUInt32ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt32ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt32ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt32ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt32ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveUInt32ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveUInt32ArrayMethod "mean" o = Arrow.NumericArray.NumericArrayMeanMethodInfo
    ResolveUInt32ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt32ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt32ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt32ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt32ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt32ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveUInt32ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt32ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt32ArrayMethod "sum" o = UInt32ArraySumMethodInfo
    ResolveUInt32ArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveUInt32ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt32ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveUInt32ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveUInt32ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt32ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt32ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveUInt32ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt32ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveUInt32ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveUInt32ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveUInt32ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveUInt32ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt32ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt32ArrayMethod "getValue" o = UInt32ArrayGetValueMethodInfo
    ResolveUInt32ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveUInt32ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveUInt32ArrayMethod "getValues" o = UInt32ArrayGetValuesMethodInfo
    ResolveUInt32ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt32ArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUInt32ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt32ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt32ArrayMethod t UInt32Array, O.MethodInfo info UInt32Array p) => OL.IsLabel t (UInt32Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UInt32Array
type instance O.AttributeList UInt32Array = UInt32ArrayAttributeList
type UInt32ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UInt32Array = UInt32ArraySignalList
type UInt32ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt32Array::new
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
--               (TInterface Name { namespace = "Arrow" , name = "UInt32Array" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint32_array_new" garrow_uint32_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr UInt32Array)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
uInt32ArrayNew ::
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
    -> m UInt32Array
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.UInt32Array.UInt32Array'.
uInt32ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_uint32_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "uInt32ArrayNew" result
    result' <- (wrapObject UInt32Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UInt32Array::compare
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt32Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt32Array."
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
--           , argType = TBasicType TUInt32
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

foreign import ccall "garrow_uint32_array_compare" garrow_uint32_array_compare :: 
    Ptr UInt32Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt32Array"})
    Word32 ->                               -- value : TBasicType TUInt32
    Ptr Arrow.CompareOptions.CompareOptions -> -- options : TInterface (Name {namespace = "Arrow", name = "CompareOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.BooleanArray.BooleanArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
uInt32ArrayCompare ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt32Array a, Arrow.CompareOptions.IsCompareOptions b) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt32Array.UInt32Array'.
    -> Word32
    -- ^ /@value@/: The value to compare.
    -> b
    -- ^ /@options@/: A t'GI.Arrow.Objects.CompareOptions.CompareOptions'.
    -> m (Maybe Arrow.BooleanArray.BooleanArray)
    -- ^ __Returns:__ The t'GI.Arrow.Objects.BooleanArray.BooleanArray' as
    --   the result compared a numeric array with a scalar on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
uInt32ArrayCompare array value options = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    options' <- unsafeManagedPtrCastPtr options
    onException (do
        result <- propagateGError $ garrow_uint32_array_compare array' value options'
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
data UInt32ArrayCompareMethodInfo
instance (signature ~ (Word32 -> b -> m (Maybe Arrow.BooleanArray.BooleanArray)), MonadIO m, IsUInt32Array a, Arrow.CompareOptions.IsCompareOptions b) => O.MethodInfo UInt32ArrayCompareMethodInfo a signature where
    overloadedMethod = uInt32ArrayCompare

#endif

-- method UInt32Array::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt32Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt32Array."
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
-- returnType: Just (TBasicType TUInt32)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint32_array_get_value" garrow_uint32_array_get_value :: 
    Ptr UInt32Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt32Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Word32

-- | /No description available in the introspection data./
uInt32ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt32Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt32Array.UInt32Array'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m Word32
    -- ^ __Returns:__ The i-th value.
uInt32ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_uint32_array_get_value array' i
    touchManagedPtr array
    return result

#if defined(ENABLE_OVERLOADING)
data UInt32ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Word32), MonadIO m, IsUInt32Array a) => O.MethodInfo UInt32ArrayGetValueMethodInfo a signature where
    overloadedMethod = uInt32ArrayGetValue

#endif

-- method UInt32Array::get_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt32Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt32Array."
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
-- returnType: Just (TCArray False (-1) 1 (TBasicType TUInt32))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint32_array_get_values" garrow_uint32_array_get_values :: 
    Ptr UInt32Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt32Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Word32)

-- | /No description available in the introspection data./
uInt32ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt32Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt32Array.UInt32Array'.
    -> m [Word32]
    -- ^ __Returns:__ The raw values.
uInt32ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_uint32_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "uInt32ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if defined(ENABLE_OVERLOADING)
data UInt32ArrayGetValuesMethodInfo
instance (signature ~ (m [Word32]), MonadIO m, IsUInt32Array a) => O.MethodInfo UInt32ArrayGetValuesMethodInfo a signature where
    overloadedMethod = uInt32ArrayGetValues

#endif

-- method UInt32Array::sum
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt32Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt32Array."
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

foreign import ccall "garrow_uint32_array_sum" garrow_uint32_array_sum :: 
    Ptr UInt32Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt32Array"})
    Ptr (Ptr GError) ->                     -- error
    IO Word64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
uInt32ArraySum ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt32Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt32Array.UInt32Array'.
    -> m Word64
    -- ^ __Returns:__ The value of the computed sum on success,
    --   If an error is occurred, the returned value is untrustful value. /(Can throw 'Data.GI.Base.GError.GError')/
uInt32ArraySum array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_uint32_array_sum array'
        touchManagedPtr array
        return result
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt32ArraySumMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsUInt32Array a) => O.MethodInfo UInt32ArraySumMethodInfo a signature where
    overloadedMethod = uInt32ArraySum

#endif


