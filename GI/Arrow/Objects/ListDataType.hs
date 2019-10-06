{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.ListDataType
    ( 

-- * Exported types
    ListDataType(..)                        ,
    IsListDataType                          ,
    toListDataType                          ,
    noListDataType                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveListDataTypeMethod               ,
#endif


-- ** getField #method:getField#

#if defined(ENABLE_OVERLOADING)
    ListDataTypeGetFieldMethodInfo          ,
#endif
    listDataTypeGetField                    ,


-- ** getValueField #method:getValueField#

#if defined(ENABLE_OVERLOADING)
    ListDataTypeGetValueFieldMethodInfo     ,
#endif
    listDataTypeGetValueField               ,


-- ** new #method:new#

    listDataTypeNew                         ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Field as Arrow.Field
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype ListDataType = ListDataType (ManagedPtr ListDataType)
    deriving (Eq)
foreign import ccall "garrow_list_data_type_get_type"
    c_garrow_list_data_type_get_type :: IO GType

instance GObject ListDataType where
    gobjectType = c_garrow_list_data_type_get_type
    

-- | Convert 'ListDataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ListDataType where
    toGValue o = do
        gtype <- c_garrow_list_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ListDataType)
        B.ManagedPtr.newObject ListDataType ptr
        
    

-- | Type class for types which can be safely cast to `ListDataType`, for instance with `toListDataType`.
class (GObject o, O.IsDescendantOf ListDataType o) => IsListDataType o
instance (GObject o, O.IsDescendantOf ListDataType o) => IsListDataType o

instance O.HasParentTypes ListDataType
type instance O.ParentTypes ListDataType = '[Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `ListDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toListDataType :: (MonadIO m, IsListDataType o) => o -> m ListDataType
toListDataType = liftIO . unsafeCastTo ListDataType

-- | A convenience alias for `Nothing` :: `Maybe` `ListDataType`.
noListDataType :: Maybe ListDataType
noListDataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveListDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveListDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveListDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveListDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveListDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveListDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveListDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveListDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveListDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveListDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveListDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveListDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveListDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveListDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveListDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveListDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveListDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveListDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveListDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveListDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveListDataTypeMethod "getField" o = ListDataTypeGetFieldMethodInfo
    ResolveListDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveListDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveListDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveListDataTypeMethod "getValueField" o = ListDataTypeGetValueFieldMethodInfo
    ResolveListDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveListDataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveListDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveListDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveListDataTypeMethod t ListDataType, O.MethodInfo info ListDataType p) => OL.IsLabel t (ListDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ListDataType
type instance O.AttributeList ListDataType = ListDataTypeAttributeList
type ListDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ListDataType = ListDataTypeSignalList
type ListDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method ListDataType::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "field"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Field" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The field of elements"
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
--               (TInterface Name { namespace = "Arrow" , name = "ListDataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_list_data_type_new" garrow_list_data_type_new :: 
    Ptr Arrow.Field.Field ->                -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    IO (Ptr ListDataType)

-- | /No description available in the introspection data./
listDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Field.IsField a) =>
    a
    -- ^ /@field@/: The field of elements
    -> m ListDataType
    -- ^ __Returns:__ The newly created list data type.
listDataTypeNew field = liftIO $ do
    field' <- unsafeManagedPtrCastPtr field
    result <- garrow_list_data_type_new field'
    checkUnexpectedReturnNULL "listDataTypeNew" result
    result' <- (wrapObject ListDataType) result
    touchManagedPtr field
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ListDataType::get_field
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ListDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowListDataType."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Field" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_list_data_type_get_field" garrow_list_data_type_get_field :: 
    Ptr ListDataType ->                     -- list_data_type : TInterface (Name {namespace = "Arrow", name = "ListDataType"})
    IO (Ptr Arrow.Field.Field)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
listDataTypeGetField ::
    (B.CallStack.HasCallStack, MonadIO m, IsListDataType a) =>
    a
    -- ^ /@listDataType@/: A t'GI.Arrow.Objects.ListDataType.ListDataType'.
    -> m Arrow.Field.Field
    -- ^ __Returns:__ The field of value.
listDataTypeGetField listDataType = liftIO $ do
    listDataType' <- unsafeManagedPtrCastPtr listDataType
    result <- garrow_list_data_type_get_field listDataType'
    checkUnexpectedReturnNULL "listDataTypeGetField" result
    result' <- (wrapObject Arrow.Field.Field) result
    touchManagedPtr listDataType
    return result'

#if defined(ENABLE_OVERLOADING)
data ListDataTypeGetFieldMethodInfo
instance (signature ~ (m Arrow.Field.Field), MonadIO m, IsListDataType a) => O.MethodInfo ListDataTypeGetFieldMethodInfo a signature where
    overloadedMethod = listDataTypeGetField

#endif

-- method ListDataType::get_value_field
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "list_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ListDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowListDataType."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Field" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_list_data_type_get_value_field" garrow_list_data_type_get_value_field :: 
    Ptr ListDataType ->                     -- list_data_type : TInterface (Name {namespace = "Arrow", name = "ListDataType"})
    IO (Ptr Arrow.Field.Field)

{-# DEPRECATED listDataTypeGetValueField ["(Since version 0.13.0)","","  Use 'GI.Arrow.Objects.ListDataType.listDataTypeGetField' instead."] #-}
-- | /No description available in the introspection data./
listDataTypeGetValueField ::
    (B.CallStack.HasCallStack, MonadIO m, IsListDataType a) =>
    a
    -- ^ /@listDataType@/: A t'GI.Arrow.Objects.ListDataType.ListDataType'.
    -> m Arrow.Field.Field
    -- ^ __Returns:__ The field of value.
listDataTypeGetValueField listDataType = liftIO $ do
    listDataType' <- unsafeManagedPtrCastPtr listDataType
    result <- garrow_list_data_type_get_value_field listDataType'
    checkUnexpectedReturnNULL "listDataTypeGetValueField" result
    result' <- (wrapObject Arrow.Field.Field) result
    touchManagedPtr listDataType
    return result'

#if defined(ENABLE_OVERLOADING)
data ListDataTypeGetValueFieldMethodInfo
instance (signature ~ (m Arrow.Field.Field), MonadIO m, IsListDataType a) => O.MethodInfo ListDataTypeGetValueFieldMethodInfo a signature where
    overloadedMethod = listDataTypeGetValueField

#endif


