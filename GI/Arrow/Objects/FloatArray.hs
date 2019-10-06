{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.FloatArray
    ( 

-- * Exported types
    FloatArray(..)                          ,
    IsFloatArray                            ,
    toFloatArray                            ,
    noFloatArray                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFloatArrayMethod                 ,
#endif


-- ** compare #method:compare#

#if defined(ENABLE_OVERLOADING)
    FloatArrayCompareMethodInfo             ,
#endif
    floatArrayCompare                       ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    FloatArrayGetValueMethodInfo            ,
#endif
    floatArrayGetValue                      ,


-- ** getValues #method:getValues#

#if defined(ENABLE_OVERLOADING)
    FloatArrayGetValuesMethodInfo           ,
#endif
    floatArrayGetValues                     ,


-- ** new #method:new#

    floatArrayNew                           ,


-- ** sum #method:sum#

#if defined(ENABLE_OVERLOADING)
    FloatArraySumMethodInfo                 ,
#endif
    floatArraySum                           ,




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
newtype FloatArray = FloatArray (ManagedPtr FloatArray)
    deriving (Eq)
foreign import ccall "garrow_float_array_get_type"
    c_garrow_float_array_get_type :: IO GType

instance GObject FloatArray where
    gobjectType = c_garrow_float_array_get_type
    

-- | Convert 'FloatArray' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FloatArray where
    toGValue o = do
        gtype <- c_garrow_float_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FloatArray)
        B.ManagedPtr.newObject FloatArray ptr
        
    

-- | Type class for types which can be safely cast to `FloatArray`, for instance with `toFloatArray`.
class (GObject o, O.IsDescendantOf FloatArray o) => IsFloatArray o
instance (GObject o, O.IsDescendantOf FloatArray o) => IsFloatArray o

instance O.HasParentTypes FloatArray
type instance O.ParentTypes FloatArray = '[Arrow.NumericArray.NumericArray, Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `FloatArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFloatArray :: (MonadIO m, IsFloatArray o) => o -> m FloatArray
toFloatArray = liftIO . unsafeCastTo FloatArray

-- | A convenience alias for `Nothing` :: `Maybe` `FloatArray`.
noFloatArray :: Maybe FloatArray
noFloatArray = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFloatArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveFloatArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFloatArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFloatArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveFloatArrayMethod "compare" o = FloatArrayCompareMethodInfo
    ResolveFloatArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveFloatArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveFloatArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveFloatArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveFloatArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveFloatArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveFloatArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFloatArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFloatArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFloatArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFloatArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveFloatArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveFloatArrayMethod "mean" o = Arrow.NumericArray.NumericArrayMeanMethodInfo
    ResolveFloatArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFloatArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFloatArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFloatArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFloatArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFloatArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveFloatArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFloatArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFloatArrayMethod "sum" o = FloatArraySumMethodInfo
    ResolveFloatArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveFloatArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFloatArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveFloatArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveFloatArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFloatArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFloatArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveFloatArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFloatArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveFloatArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveFloatArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveFloatArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveFloatArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFloatArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFloatArrayMethod "getValue" o = FloatArrayGetValueMethodInfo
    ResolveFloatArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveFloatArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveFloatArrayMethod "getValues" o = FloatArrayGetValuesMethodInfo
    ResolveFloatArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFloatArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFloatArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFloatArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFloatArrayMethod t FloatArray, O.MethodInfo info FloatArray p) => OL.IsLabel t (FloatArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FloatArray
type instance O.AttributeList FloatArray = FloatArrayAttributeList
type FloatArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FloatArray = FloatArraySignalList
type FloatArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method FloatArray::new
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
--               (TInterface Name { namespace = "Arrow" , name = "FloatArray" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_float_array_new" garrow_float_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr FloatArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
floatArrayNew ::
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
    -> m FloatArray
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.FloatArray.FloatArray'.
floatArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_float_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "floatArrayNew" result
    result' <- (wrapObject FloatArray) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method FloatArray::compare
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "FloatArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFloatArray."
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
--           , argType = TBasicType TFloat
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

foreign import ccall "garrow_float_array_compare" garrow_float_array_compare :: 
    Ptr FloatArray ->                       -- array : TInterface (Name {namespace = "Arrow", name = "FloatArray"})
    CFloat ->                               -- value : TBasicType TFloat
    Ptr Arrow.CompareOptions.CompareOptions -> -- options : TInterface (Name {namespace = "Arrow", name = "CompareOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.BooleanArray.BooleanArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
floatArrayCompare ::
    (B.CallStack.HasCallStack, MonadIO m, IsFloatArray a, Arrow.CompareOptions.IsCompareOptions b) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.FloatArray.FloatArray'.
    -> Float
    -- ^ /@value@/: The value to compare.
    -> b
    -- ^ /@options@/: A t'GI.Arrow.Objects.CompareOptions.CompareOptions'.
    -> m (Maybe Arrow.BooleanArray.BooleanArray)
    -- ^ __Returns:__ The t'GI.Arrow.Objects.BooleanArray.BooleanArray' as
    --   the result compared a numeric array with a scalar on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
floatArrayCompare array value options = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    let value' = realToFrac value
    options' <- unsafeManagedPtrCastPtr options
    onException (do
        result <- propagateGError $ garrow_float_array_compare array' value' options'
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
data FloatArrayCompareMethodInfo
instance (signature ~ (Float -> b -> m (Maybe Arrow.BooleanArray.BooleanArray)), MonadIO m, IsFloatArray a, Arrow.CompareOptions.IsCompareOptions b) => O.MethodInfo FloatArrayCompareMethodInfo a signature where
    overloadedMethod = floatArrayCompare

#endif

-- method FloatArray::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "FloatArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFloatArray."
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
-- returnType: Just (TBasicType TFloat)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_float_array_get_value" garrow_float_array_get_value :: 
    Ptr FloatArray ->                       -- array : TInterface (Name {namespace = "Arrow", name = "FloatArray"})
    Int64 ->                                -- i : TBasicType TInt64
    IO CFloat

-- | /No description available in the introspection data./
floatArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsFloatArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.FloatArray.FloatArray'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m Float
    -- ^ __Returns:__ The i-th value.
floatArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_float_array_get_value array' i
    let result' = realToFrac result
    touchManagedPtr array
    return result'

#if defined(ENABLE_OVERLOADING)
data FloatArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Float), MonadIO m, IsFloatArray a) => O.MethodInfo FloatArrayGetValueMethodInfo a signature where
    overloadedMethod = floatArrayGetValue

#endif

-- method FloatArray::get_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "FloatArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFloatArray."
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
-- returnType: Just (TCArray False (-1) 1 (TBasicType TFloat))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_float_array_get_values" garrow_float_array_get_values :: 
    Ptr FloatArray ->                       -- array : TInterface (Name {namespace = "Arrow", name = "FloatArray"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr CFloat)

-- | /No description available in the introspection data./
floatArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsFloatArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.FloatArray.FloatArray'.
    -> m [Float]
    -- ^ __Returns:__ The raw values.
floatArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_float_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "floatArrayGetValues" result
    result' <- (unpackMapStorableArrayWithLength realToFrac length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if defined(ENABLE_OVERLOADING)
data FloatArrayGetValuesMethodInfo
instance (signature ~ (m [Float]), MonadIO m, IsFloatArray a) => O.MethodInfo FloatArrayGetValuesMethodInfo a signature where
    overloadedMethod = floatArrayGetValues

#endif

-- method FloatArray::sum
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "FloatArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFloatArray."
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
-- returnType: Just (TBasicType TDouble)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_float_array_sum" garrow_float_array_sum :: 
    Ptr FloatArray ->                       -- array : TInterface (Name {namespace = "Arrow", name = "FloatArray"})
    Ptr (Ptr GError) ->                     -- error
    IO CDouble

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
floatArraySum ::
    (B.CallStack.HasCallStack, MonadIO m, IsFloatArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.FloatArray.FloatArray'.
    -> m Double
    -- ^ __Returns:__ The value of the computed sum on success,
    --   If an error is occurred, the returned value is untrustful value. /(Can throw 'Data.GI.Base.GError.GError')/
floatArraySum array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_float_array_sum array'
        let result' = realToFrac result
        touchManagedPtr array
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data FloatArraySumMethodInfo
instance (signature ~ (m Double), MonadIO m, IsFloatArray a) => O.MethodInfo FloatArraySumMethodInfo a signature where
    overloadedMethod = floatArraySum

#endif


