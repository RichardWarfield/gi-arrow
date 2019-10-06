{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.DictionaryDataType
    ( 

-- * Exported types
    DictionaryDataType(..)                  ,
    IsDictionaryDataType                    ,
    toDictionaryDataType                    ,
    noDictionaryDataType                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDictionaryDataTypeMethod         ,
#endif


-- ** getIndexDataType #method:getIndexDataType#

#if defined(ENABLE_OVERLOADING)
    DictionaryDataTypeGetIndexDataTypeMethodInfo,
#endif
    dictionaryDataTypeGetIndexDataType      ,


-- ** getValueDataType #method:getValueDataType#

#if defined(ENABLE_OVERLOADING)
    DictionaryDataTypeGetValueDataTypeMethodInfo,
#endif
    dictionaryDataTypeGetValueDataType      ,


-- ** isOrdered #method:isOrdered#

#if defined(ENABLE_OVERLOADING)
    DictionaryDataTypeIsOrderedMethodInfo   ,
#endif
    dictionaryDataTypeIsOrdered             ,


-- ** new #method:new#

    dictionaryDataTypeNew                   ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype DictionaryDataType = DictionaryDataType (ManagedPtr DictionaryDataType)
    deriving (Eq)
foreign import ccall "garrow_dictionary_data_type_get_type"
    c_garrow_dictionary_data_type_get_type :: IO GType

instance GObject DictionaryDataType where
    gobjectType = c_garrow_dictionary_data_type_get_type
    

-- | Convert 'DictionaryDataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue DictionaryDataType where
    toGValue o = do
        gtype <- c_garrow_dictionary_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr DictionaryDataType)
        B.ManagedPtr.newObject DictionaryDataType ptr
        
    

-- | Type class for types which can be safely cast to `DictionaryDataType`, for instance with `toDictionaryDataType`.
class (GObject o, O.IsDescendantOf DictionaryDataType o) => IsDictionaryDataType o
instance (GObject o, O.IsDescendantOf DictionaryDataType o) => IsDictionaryDataType o

instance O.HasParentTypes DictionaryDataType
type instance O.ParentTypes DictionaryDataType = '[Arrow.FixedWidthDataType.FixedWidthDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `DictionaryDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDictionaryDataType :: (MonadIO m, IsDictionaryDataType o) => o -> m DictionaryDataType
toDictionaryDataType = liftIO . unsafeCastTo DictionaryDataType

-- | A convenience alias for `Nothing` :: `Maybe` `DictionaryDataType`.
noDictionaryDataType :: Maybe DictionaryDataType
noDictionaryDataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDictionaryDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveDictionaryDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDictionaryDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDictionaryDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveDictionaryDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDictionaryDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDictionaryDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDictionaryDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDictionaryDataTypeMethod "isOrdered" o = DictionaryDataTypeIsOrderedMethodInfo
    ResolveDictionaryDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDictionaryDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDictionaryDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDictionaryDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDictionaryDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDictionaryDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDictionaryDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDictionaryDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDictionaryDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveDictionaryDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDictionaryDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDictionaryDataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveDictionaryDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDictionaryDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveDictionaryDataTypeMethod "getIndexDataType" o = DictionaryDataTypeGetIndexDataTypeMethodInfo
    ResolveDictionaryDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDictionaryDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDictionaryDataTypeMethod "getValueDataType" o = DictionaryDataTypeGetValueDataTypeMethodInfo
    ResolveDictionaryDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDictionaryDataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDictionaryDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDictionaryDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDictionaryDataTypeMethod t DictionaryDataType, O.MethodInfo info DictionaryDataType p) => OL.IsLabel t (DictionaryDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList DictionaryDataType
type instance O.AttributeList DictionaryDataType = DictionaryDataTypeAttributeList
type DictionaryDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList DictionaryDataType = DictionaryDataTypeSignalList
type DictionaryDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method DictionaryDataType::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "index_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The data type of index."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "value_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The data type of dictionary values."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "ordered"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "Whether dictionary contents are ordered or not."
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

foreign import ccall "garrow_dictionary_data_type_new" garrow_dictionary_data_type_new :: 
    Ptr Arrow.DataType.DataType ->          -- index_data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    Ptr Arrow.DataType.DataType ->          -- value_data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    CInt ->                                 -- ordered : TBasicType TBoolean
    IO (Ptr DictionaryDataType)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
dictionaryDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.DataType.IsDataType a, Arrow.DataType.IsDataType b) =>
    a
    -- ^ /@indexDataType@/: The data type of index.
    -> b
    -- ^ /@valueDataType@/: The data type of dictionary values.
    -> Bool
    -- ^ /@ordered@/: Whether dictionary contents are ordered or not.
    -> m DictionaryDataType
    -- ^ __Returns:__ The newly created dictionary data type.
dictionaryDataTypeNew indexDataType valueDataType ordered = liftIO $ do
    indexDataType' <- unsafeManagedPtrCastPtr indexDataType
    valueDataType' <- unsafeManagedPtrCastPtr valueDataType
    let ordered' = (fromIntegral . fromEnum) ordered
    result <- garrow_dictionary_data_type_new indexDataType' valueDataType' ordered'
    checkUnexpectedReturnNULL "dictionaryDataTypeNew" result
    result' <- (wrapObject DictionaryDataType) result
    touchManagedPtr indexDataType
    touchManagedPtr valueDataType
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method DictionaryDataType::get_index_data_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dictionary_data_type"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "DictionaryDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GArrowDictionaryDataType."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "DataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_data_type_get_index_data_type" garrow_dictionary_data_type_get_index_data_type :: 
    Ptr DictionaryDataType ->               -- dictionary_data_type : TInterface (Name {namespace = "Arrow", name = "DictionaryDataType"})
    IO (Ptr Arrow.DataType.DataType)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
dictionaryDataTypeGetIndexDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsDictionaryDataType a) =>
    a
    -- ^ /@dictionaryDataType@/: The t'GI.Arrow.Objects.DictionaryDataType.DictionaryDataType'.
    -> m Arrow.DataType.DataType
    -- ^ __Returns:__ The t'GI.Arrow.Objects.DataType.DataType' of index.
dictionaryDataTypeGetIndexDataType dictionaryDataType = liftIO $ do
    dictionaryDataType' <- unsafeManagedPtrCastPtr dictionaryDataType
    result <- garrow_dictionary_data_type_get_index_data_type dictionaryDataType'
    checkUnexpectedReturnNULL "dictionaryDataTypeGetIndexDataType" result
    result' <- (wrapObject Arrow.DataType.DataType) result
    touchManagedPtr dictionaryDataType
    return result'

#if defined(ENABLE_OVERLOADING)
data DictionaryDataTypeGetIndexDataTypeMethodInfo
instance (signature ~ (m Arrow.DataType.DataType), MonadIO m, IsDictionaryDataType a) => O.MethodInfo DictionaryDataTypeGetIndexDataTypeMethodInfo a signature where
    overloadedMethod = dictionaryDataTypeGetIndexDataType

#endif

-- method DictionaryDataType::get_value_data_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dictionary_data_type"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "DictionaryDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GArrowDictionaryDataType."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "DataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_data_type_get_value_data_type" garrow_dictionary_data_type_get_value_data_type :: 
    Ptr DictionaryDataType ->               -- dictionary_data_type : TInterface (Name {namespace = "Arrow", name = "DictionaryDataType"})
    IO (Ptr Arrow.DataType.DataType)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
dictionaryDataTypeGetValueDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsDictionaryDataType a) =>
    a
    -- ^ /@dictionaryDataType@/: The t'GI.Arrow.Objects.DictionaryDataType.DictionaryDataType'.
    -> m Arrow.DataType.DataType
    -- ^ __Returns:__ The t'GI.Arrow.Objects.DataType.DataType' of dictionary values.
dictionaryDataTypeGetValueDataType dictionaryDataType = liftIO $ do
    dictionaryDataType' <- unsafeManagedPtrCastPtr dictionaryDataType
    result <- garrow_dictionary_data_type_get_value_data_type dictionaryDataType'
    checkUnexpectedReturnNULL "dictionaryDataTypeGetValueDataType" result
    result' <- (wrapObject Arrow.DataType.DataType) result
    touchManagedPtr dictionaryDataType
    return result'

#if defined(ENABLE_OVERLOADING)
data DictionaryDataTypeGetValueDataTypeMethodInfo
instance (signature ~ (m Arrow.DataType.DataType), MonadIO m, IsDictionaryDataType a) => O.MethodInfo DictionaryDataTypeGetValueDataTypeMethodInfo a signature where
    overloadedMethod = dictionaryDataTypeGetValueDataType

#endif

-- method DictionaryDataType::is_ordered
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "dictionary_data_type"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "DictionaryDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GArrowDictionaryDataType."
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_data_type_is_ordered" garrow_dictionary_data_type_is_ordered :: 
    Ptr DictionaryDataType ->               -- dictionary_data_type : TInterface (Name {namespace = "Arrow", name = "DictionaryDataType"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
dictionaryDataTypeIsOrdered ::
    (B.CallStack.HasCallStack, MonadIO m, IsDictionaryDataType a) =>
    a
    -- ^ /@dictionaryDataType@/: The t'GI.Arrow.Objects.DictionaryDataType.DictionaryDataType'.
    -> m Bool
    -- ^ __Returns:__ Whether dictionary contents are ordered or not.
dictionaryDataTypeIsOrdered dictionaryDataType = liftIO $ do
    dictionaryDataType' <- unsafeManagedPtrCastPtr dictionaryDataType
    result <- garrow_dictionary_data_type_is_ordered dictionaryDataType'
    let result' = (/= 0) result
    touchManagedPtr dictionaryDataType
    return result'

#if defined(ENABLE_OVERLOADING)
data DictionaryDataTypeIsOrderedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsDictionaryDataType a) => O.MethodInfo DictionaryDataTypeIsOrderedMethodInfo a signature where
    overloadedMethod = dictionaryDataTypeIsOrdered

#endif


