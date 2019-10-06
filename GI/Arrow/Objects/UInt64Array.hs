{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.UInt64Array
    ( 

-- * Exported types
    UInt64Array(..)                         ,
    IsUInt64Array                           ,
    toUInt64Array                           ,
    noUInt64Array                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveUInt64ArrayMethod                ,
#endif


-- ** compare #method:compare#

#if defined(ENABLE_OVERLOADING)
    UInt64ArrayCompareMethodInfo            ,
#endif
    uInt64ArrayCompare                      ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    UInt64ArrayGetValueMethodInfo           ,
#endif
    uInt64ArrayGetValue                     ,


-- ** getValues #method:getValues#

#if defined(ENABLE_OVERLOADING)
    UInt64ArrayGetValuesMethodInfo          ,
#endif
    uInt64ArrayGetValues                    ,


-- ** new #method:new#

    uInt64ArrayNew                          ,


-- ** sum #method:sum#

#if defined(ENABLE_OVERLOADING)
    UInt64ArraySumMethodInfo                ,
#endif
    uInt64ArraySum                          ,




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
newtype UInt64Array = UInt64Array (ManagedPtr UInt64Array)
    deriving (Eq)
foreign import ccall "garrow_uint64_array_get_type"
    c_garrow_uint64_array_get_type :: IO GType

instance GObject UInt64Array where
    gobjectType = c_garrow_uint64_array_get_type
    

-- | Convert 'UInt64Array' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue UInt64Array where
    toGValue o = do
        gtype <- c_garrow_uint64_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr UInt64Array)
        B.ManagedPtr.newObject UInt64Array ptr
        
    

-- | Type class for types which can be safely cast to `UInt64Array`, for instance with `toUInt64Array`.
class (GObject o, O.IsDescendantOf UInt64Array o) => IsUInt64Array o
instance (GObject o, O.IsDescendantOf UInt64Array o) => IsUInt64Array o

instance O.HasParentTypes UInt64Array
type instance O.ParentTypes UInt64Array = '[Arrow.NumericArray.NumericArray, Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `UInt64Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt64Array :: (MonadIO m, IsUInt64Array o) => o -> m UInt64Array
toUInt64Array = liftIO . unsafeCastTo UInt64Array

-- | A convenience alias for `Nothing` :: `Maybe` `UInt64Array`.
noUInt64Array :: Maybe UInt64Array
noUInt64Array = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveUInt64ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt64ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt64ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt64ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveUInt64ArrayMethod "compare" o = UInt64ArrayCompareMethodInfo
    ResolveUInt64ArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveUInt64ArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveUInt64ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveUInt64ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveUInt64ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveUInt64ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveUInt64ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt64ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt64ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt64ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt64ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveUInt64ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveUInt64ArrayMethod "mean" o = Arrow.NumericArray.NumericArrayMeanMethodInfo
    ResolveUInt64ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt64ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt64ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt64ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt64ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt64ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveUInt64ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt64ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt64ArrayMethod "sum" o = UInt64ArraySumMethodInfo
    ResolveUInt64ArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveUInt64ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt64ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveUInt64ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveUInt64ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt64ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt64ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveUInt64ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt64ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveUInt64ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveUInt64ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveUInt64ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveUInt64ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt64ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt64ArrayMethod "getValue" o = UInt64ArrayGetValueMethodInfo
    ResolveUInt64ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveUInt64ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveUInt64ArrayMethod "getValues" o = UInt64ArrayGetValuesMethodInfo
    ResolveUInt64ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt64ArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUInt64ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt64ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt64ArrayMethod t UInt64Array, O.MethodInfo info UInt64Array p) => OL.IsLabel t (UInt64Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UInt64Array
type instance O.AttributeList UInt64Array = UInt64ArrayAttributeList
type UInt64ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UInt64Array = UInt64ArraySignalList
type UInt64ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt64Array::new
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
--               (TInterface Name { namespace = "Arrow" , name = "UInt64Array" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint64_array_new" garrow_uint64_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr UInt64Array)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
uInt64ArrayNew ::
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
    -> m UInt64Array
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.UInt64Array.UInt64Array'.
uInt64ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_uint64_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "uInt64ArrayNew" result
    result' <- (wrapObject UInt64Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UInt64Array::compare
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt64Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt64Array."
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
--           , argType = TBasicType TUInt64
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

foreign import ccall "garrow_uint64_array_compare" garrow_uint64_array_compare :: 
    Ptr UInt64Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt64Array"})
    Word64 ->                               -- value : TBasicType TUInt64
    Ptr Arrow.CompareOptions.CompareOptions -> -- options : TInterface (Name {namespace = "Arrow", name = "CompareOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.BooleanArray.BooleanArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
uInt64ArrayCompare ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt64Array a, Arrow.CompareOptions.IsCompareOptions b) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt64Array.UInt64Array'.
    -> Word64
    -- ^ /@value@/: The value to compare.
    -> b
    -- ^ /@options@/: A t'GI.Arrow.Objects.CompareOptions.CompareOptions'.
    -> m (Maybe Arrow.BooleanArray.BooleanArray)
    -- ^ __Returns:__ The t'GI.Arrow.Objects.BooleanArray.BooleanArray' as
    --   the result compared a numeric array with a scalar on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
uInt64ArrayCompare array value options = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    options' <- unsafeManagedPtrCastPtr options
    onException (do
        result <- propagateGError $ garrow_uint64_array_compare array' value options'
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
data UInt64ArrayCompareMethodInfo
instance (signature ~ (Word64 -> b -> m (Maybe Arrow.BooleanArray.BooleanArray)), MonadIO m, IsUInt64Array a, Arrow.CompareOptions.IsCompareOptions b) => O.MethodInfo UInt64ArrayCompareMethodInfo a signature where
    overloadedMethod = uInt64ArrayCompare

#endif

-- method UInt64Array::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt64Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt64Array."
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
-- returnType: Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint64_array_get_value" garrow_uint64_array_get_value :: 
    Ptr UInt64Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt64Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Word64

-- | /No description available in the introspection data./
uInt64ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt64Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt64Array.UInt64Array'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m Word64
    -- ^ __Returns:__ The i-th value.
uInt64ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_uint64_array_get_value array' i
    touchManagedPtr array
    return result

#if defined(ENABLE_OVERLOADING)
data UInt64ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Word64), MonadIO m, IsUInt64Array a) => O.MethodInfo UInt64ArrayGetValueMethodInfo a signature where
    overloadedMethod = uInt64ArrayGetValue

#endif

-- method UInt64Array::get_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt64Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt64Array."
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
-- returnType: Just (TCArray False (-1) 1 (TBasicType TUInt64))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint64_array_get_values" garrow_uint64_array_get_values :: 
    Ptr UInt64Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt64Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Word64)

-- | /No description available in the introspection data./
uInt64ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt64Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt64Array.UInt64Array'.
    -> m [Word64]
    -- ^ __Returns:__ The raw values.
uInt64ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_uint64_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "uInt64ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if defined(ENABLE_OVERLOADING)
data UInt64ArrayGetValuesMethodInfo
instance (signature ~ (m [Word64]), MonadIO m, IsUInt64Array a) => O.MethodInfo UInt64ArrayGetValuesMethodInfo a signature where
    overloadedMethod = uInt64ArrayGetValues

#endif

-- method UInt64Array::sum
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt64Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt64Array."
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

foreign import ccall "garrow_uint64_array_sum" garrow_uint64_array_sum :: 
    Ptr UInt64Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt64Array"})
    Ptr (Ptr GError) ->                     -- error
    IO Word64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
uInt64ArraySum ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt64Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt64Array.UInt64Array'.
    -> m Word64
    -- ^ __Returns:__ The value of the computed sum on success,
    --   If an error is occurred, the returned value is untrustful value. /(Can throw 'Data.GI.Base.GError.GError')/
uInt64ArraySum array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_uint64_array_sum array'
        touchManagedPtr array
        return result
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt64ArraySumMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsUInt64Array a) => O.MethodInfo UInt64ArraySumMethodInfo a signature where
    overloadedMethod = uInt64ArraySum

#endif


