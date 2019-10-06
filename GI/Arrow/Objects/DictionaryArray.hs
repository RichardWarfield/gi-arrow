{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.DictionaryArray
    ( 

-- * Exported types
    DictionaryArray(..)                     ,
    IsDictionaryArray                       ,
    toDictionaryArray                       ,
    noDictionaryArray                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDictionaryArrayMethod            ,
#endif


-- ** getDictionary #method:getDictionary#

#if defined(ENABLE_OVERLOADING)
    DictionaryArrayGetDictionaryMethodInfo  ,
#endif
    dictionaryArrayGetDictionary            ,


-- ** getDictionaryDataType #method:getDictionaryDataType#

#if defined(ENABLE_OVERLOADING)
    DictionaryArrayGetDictionaryDataTypeMethodInfo,
#endif
    dictionaryArrayGetDictionaryDataType    ,


-- ** getIndices #method:getIndices#

#if defined(ENABLE_OVERLOADING)
    DictionaryArrayGetIndicesMethodInfo     ,
#endif
    dictionaryArrayGetIndices               ,


-- ** new #method:new#

    dictionaryArrayNew                      ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.DictionaryDataType as Arrow.DictionaryDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype DictionaryArray = DictionaryArray (ManagedPtr DictionaryArray)
    deriving (Eq)
foreign import ccall "garrow_dictionary_array_get_type"
    c_garrow_dictionary_array_get_type :: IO GType

instance GObject DictionaryArray where
    gobjectType = c_garrow_dictionary_array_get_type
    

-- | Convert 'DictionaryArray' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue DictionaryArray where
    toGValue o = do
        gtype <- c_garrow_dictionary_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr DictionaryArray)
        B.ManagedPtr.newObject DictionaryArray ptr
        
    

-- | Type class for types which can be safely cast to `DictionaryArray`, for instance with `toDictionaryArray`.
class (GObject o, O.IsDescendantOf DictionaryArray o) => IsDictionaryArray o
instance (GObject o, O.IsDescendantOf DictionaryArray o) => IsDictionaryArray o

instance O.HasParentTypes DictionaryArray
type instance O.ParentTypes DictionaryArray = '[Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `DictionaryArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDictionaryArray :: (MonadIO m, IsDictionaryArray o) => o -> m DictionaryArray
toDictionaryArray = liftIO . unsafeCastTo DictionaryArray

-- | A convenience alias for `Nothing` :: `Maybe` `DictionaryArray`.
noDictionaryArray :: Maybe DictionaryArray
noDictionaryArray = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDictionaryArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveDictionaryArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDictionaryArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDictionaryArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveDictionaryArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveDictionaryArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveDictionaryArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveDictionaryArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveDictionaryArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveDictionaryArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveDictionaryArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDictionaryArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDictionaryArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDictionaryArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDictionaryArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveDictionaryArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveDictionaryArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDictionaryArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDictionaryArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDictionaryArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDictionaryArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDictionaryArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveDictionaryArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDictionaryArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDictionaryArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveDictionaryArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDictionaryArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveDictionaryArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveDictionaryArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDictionaryArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDictionaryArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDictionaryArrayMethod "getDictionary" o = DictionaryArrayGetDictionaryMethodInfo
    ResolveDictionaryArrayMethod "getDictionaryDataType" o = DictionaryArrayGetDictionaryDataTypeMethodInfo
    ResolveDictionaryArrayMethod "getIndices" o = DictionaryArrayGetIndicesMethodInfo
    ResolveDictionaryArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveDictionaryArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveDictionaryArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveDictionaryArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveDictionaryArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDictionaryArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDictionaryArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveDictionaryArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveDictionaryArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDictionaryArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDictionaryArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDictionaryArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDictionaryArrayMethod t DictionaryArray, O.MethodInfo info DictionaryArray p) => OL.IsLabel t (DictionaryArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList DictionaryArray
type instance O.AttributeList DictionaryArray = DictionaryArrayAttributeList
type DictionaryArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList DictionaryArray = DictionaryArraySignalList
type DictionaryArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method DictionaryArray::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The data type of the dictionary array."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "indices"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The indices of values in dictionary."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "dictionary"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The dictionary of the dictionary array."
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
--               (TInterface
--                  Name { namespace = "Arrow" , name = "DictionaryArray" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_dictionary_array_new" garrow_dictionary_array_new :: 
    Ptr Arrow.DataType.DataType ->          -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    Ptr Arrow.Array.Array ->                -- indices : TInterface (Name {namespace = "Arrow", name = "Array"})
    Ptr Arrow.Array.Array ->                -- dictionary : TInterface (Name {namespace = "Arrow", name = "Array"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr DictionaryArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
dictionaryArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.DataType.IsDataType a, Arrow.Array.IsArray b, Arrow.Array.IsArray c) =>
    a
    -- ^ /@dataType@/: The data type of the dictionary array.
    -> b
    -- ^ /@indices@/: The indices of values in dictionary.
    -> c
    -- ^ /@dictionary@/: The dictionary of the dictionary array.
    -> m (Maybe DictionaryArray)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.DictionaryArray.DictionaryArray'
    --   or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
dictionaryArrayNew dataType indices dictionary = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    indices' <- unsafeManagedPtrCastPtr indices
    dictionary' <- unsafeManagedPtrCastPtr dictionary
    onException (do
        result <- propagateGError $ garrow_dictionary_array_new dataType' indices' dictionary'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject DictionaryArray) result'
            return result''
        touchManagedPtr dataType
        touchManagedPtr indices
        touchManagedPtr dictionary
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method DictionaryArray::get_dictionary
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DictionaryArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDictionaryArray."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Array" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_array_get_dictionary" garrow_dictionary_array_get_dictionary :: 
    Ptr DictionaryArray ->                  -- array : TInterface (Name {namespace = "Arrow", name = "DictionaryArray"})
    IO (Ptr Arrow.Array.Array)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
dictionaryArrayGetDictionary ::
    (B.CallStack.HasCallStack, MonadIO m, IsDictionaryArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.DictionaryArray.DictionaryArray'.
    -> m Arrow.Array.Array
    -- ^ __Returns:__ The dictionary of this array.
dictionaryArrayGetDictionary array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_dictionary_array_get_dictionary array'
    checkUnexpectedReturnNULL "dictionaryArrayGetDictionary" result
    result' <- (wrapObject Arrow.Array.Array) result
    touchManagedPtr array
    return result'

#if defined(ENABLE_OVERLOADING)
data DictionaryArrayGetDictionaryMethodInfo
instance (signature ~ (m Arrow.Array.Array), MonadIO m, IsDictionaryArray a) => O.MethodInfo DictionaryArrayGetDictionaryMethodInfo a signature where
    overloadedMethod = dictionaryArrayGetDictionary

#endif

-- method DictionaryArray::get_dictionary_data_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DictionaryArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDictionaryArray."
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
--               (TInterface
--                  Name { namespace = "Arrow" , name = "DictionaryDataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_array_get_dictionary_data_type" garrow_dictionary_array_get_dictionary_data_type :: 
    Ptr DictionaryArray ->                  -- array : TInterface (Name {namespace = "Arrow", name = "DictionaryArray"})
    IO (Ptr Arrow.DictionaryDataType.DictionaryDataType)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
dictionaryArrayGetDictionaryDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsDictionaryArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.DictionaryArray.DictionaryArray'.
    -> m Arrow.DictionaryDataType.DictionaryDataType
    -- ^ __Returns:__ The dictionary data type of this array.
dictionaryArrayGetDictionaryDataType array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_dictionary_array_get_dictionary_data_type array'
    checkUnexpectedReturnNULL "dictionaryArrayGetDictionaryDataType" result
    result' <- (wrapObject Arrow.DictionaryDataType.DictionaryDataType) result
    touchManagedPtr array
    return result'

#if defined(ENABLE_OVERLOADING)
data DictionaryArrayGetDictionaryDataTypeMethodInfo
instance (signature ~ (m Arrow.DictionaryDataType.DictionaryDataType), MonadIO m, IsDictionaryArray a) => O.MethodInfo DictionaryArrayGetDictionaryDataTypeMethodInfo a signature where
    overloadedMethod = dictionaryArrayGetDictionaryDataType

#endif

-- method DictionaryArray::get_indices
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DictionaryArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDictionaryArray."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Array" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_array_get_indices" garrow_dictionary_array_get_indices :: 
    Ptr DictionaryArray ->                  -- array : TInterface (Name {namespace = "Arrow", name = "DictionaryArray"})
    IO (Ptr Arrow.Array.Array)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
dictionaryArrayGetIndices ::
    (B.CallStack.HasCallStack, MonadIO m, IsDictionaryArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.DictionaryArray.DictionaryArray'.
    -> m Arrow.Array.Array
    -- ^ __Returns:__ The indices of values in dictionary.
dictionaryArrayGetIndices array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_dictionary_array_get_indices array'
    checkUnexpectedReturnNULL "dictionaryArrayGetIndices" result
    result' <- (wrapObject Arrow.Array.Array) result
    touchManagedPtr array
    return result'

#if defined(ENABLE_OVERLOADING)
data DictionaryArrayGetIndicesMethodInfo
instance (signature ~ (m Arrow.Array.Array), MonadIO m, IsDictionaryArray a) => O.MethodInfo DictionaryArrayGetIndicesMethodInfo a signature where
    overloadedMethod = dictionaryArrayGetIndices

#endif


