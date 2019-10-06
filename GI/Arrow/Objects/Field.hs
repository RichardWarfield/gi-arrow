{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Field
    ( 

-- * Exported types
    Field(..)                               ,
    IsField                                 ,
    toField                                 ,
    noField                                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFieldMethod                      ,
#endif


-- ** equal #method:equal#

#if defined(ENABLE_OVERLOADING)
    FieldEqualMethodInfo                    ,
#endif
    fieldEqual                              ,


-- ** getDataType #method:getDataType#

#if defined(ENABLE_OVERLOADING)
    FieldGetDataTypeMethodInfo              ,
#endif
    fieldGetDataType                        ,


-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    FieldGetNameMethodInfo                  ,
#endif
    fieldGetName                            ,


-- ** isNullable #method:isNullable#

#if defined(ENABLE_OVERLOADING)
    FieldIsNullableMethodInfo               ,
#endif
    fieldIsNullable                         ,


-- ** new #method:new#

    fieldNew                                ,


-- ** newFull #method:newFull#

    fieldNewFull                            ,


-- ** toString #method:toString#

#if defined(ENABLE_OVERLOADING)
    FieldToStringMethodInfo                 ,
#endif
    fieldToString                           ,




 -- * Properties
-- ** dataType #attr:dataType#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    FieldDataTypePropertyInfo               ,
#endif
    constructFieldDataType                  ,
#if defined(ENABLE_OVERLOADING)
    fieldDataType                           ,
#endif


-- ** field #attr:field#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    FieldFieldPropertyInfo                  ,
#endif
    constructFieldField                     ,
#if defined(ENABLE_OVERLOADING)
    fieldField                              ,
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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Field = Field (ManagedPtr Field)
    deriving (Eq)
foreign import ccall "garrow_field_get_type"
    c_garrow_field_get_type :: IO GType

instance GObject Field where
    gobjectType = c_garrow_field_get_type
    

-- | Convert 'Field' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Field where
    toGValue o = do
        gtype <- c_garrow_field_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Field)
        B.ManagedPtr.newObject Field ptr
        
    

-- | Type class for types which can be safely cast to `Field`, for instance with `toField`.
class (GObject o, O.IsDescendantOf Field o) => IsField o
instance (GObject o, O.IsDescendantOf Field o) => IsField o

instance O.HasParentTypes Field
type instance O.ParentTypes Field = '[GObject.Object.Object]

-- | Cast to `Field`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toField :: (MonadIO m, IsField o) => o -> m Field
toField = liftIO . unsafeCastTo Field

-- | A convenience alias for `Nothing` :: `Maybe` `Field`.
noField :: Maybe Field
noField = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFieldMethod (t :: Symbol) (o :: *) :: * where
    ResolveFieldMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFieldMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFieldMethod "equal" o = FieldEqualMethodInfo
    ResolveFieldMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFieldMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFieldMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFieldMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFieldMethod "isNullable" o = FieldIsNullableMethodInfo
    ResolveFieldMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFieldMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFieldMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFieldMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFieldMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFieldMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFieldMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFieldMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFieldMethod "toString" o = FieldToStringMethodInfo
    ResolveFieldMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFieldMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFieldMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFieldMethod "getDataType" o = FieldGetDataTypeMethodInfo
    ResolveFieldMethod "getName" o = FieldGetNameMethodInfo
    ResolveFieldMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFieldMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFieldMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFieldMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFieldMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFieldMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFieldMethod t Field, O.MethodInfo info Field p) => OL.IsLabel t (Field -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "data-type"
   -- Type: TInterface (Name {namespace = "Arrow", name = "DataType"})
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@data-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFieldDataType :: (IsField o, MIO.MonadIO m, Arrow.DataType.IsDataType a) => a -> m (GValueConstruct o)
constructFieldDataType val = MIO.liftIO $ B.Properties.constructObjectPropertyObject "data-type" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data FieldDataTypePropertyInfo
instance AttrInfo FieldDataTypePropertyInfo where
    type AttrAllowedOps FieldDataTypePropertyInfo = '[ 'AttrConstruct, 'AttrClear]
    type AttrBaseTypeConstraint FieldDataTypePropertyInfo = IsField
    type AttrSetTypeConstraint FieldDataTypePropertyInfo = Arrow.DataType.IsDataType
    type AttrTransferTypeConstraint FieldDataTypePropertyInfo = Arrow.DataType.IsDataType
    type AttrTransferType FieldDataTypePropertyInfo = Arrow.DataType.DataType
    type AttrGetType FieldDataTypePropertyInfo = ()
    type AttrLabel FieldDataTypePropertyInfo = "data-type"
    type AttrOrigin FieldDataTypePropertyInfo = Field
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Arrow.DataType.DataType v
    attrConstruct = constructFieldDataType
    attrClear = undefined
#endif

-- VVV Prop "field"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@field@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFieldField :: (IsField o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructFieldField val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "field" val

#if defined(ENABLE_OVERLOADING)
data FieldFieldPropertyInfo
instance AttrInfo FieldFieldPropertyInfo where
    type AttrAllowedOps FieldFieldPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint FieldFieldPropertyInfo = IsField
    type AttrSetTypeConstraint FieldFieldPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint FieldFieldPropertyInfo = (~) (Ptr ())
    type AttrTransferType FieldFieldPropertyInfo = Ptr ()
    type AttrGetType FieldFieldPropertyInfo = ()
    type AttrLabel FieldFieldPropertyInfo = "field"
    type AttrOrigin FieldFieldPropertyInfo = Field
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructFieldField
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Field
type instance O.AttributeList Field = FieldAttributeList
type FieldAttributeList = ('[ '("dataType", FieldDataTypePropertyInfo), '("field", FieldFieldPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
fieldDataType :: AttrLabelProxy "dataType"
fieldDataType = AttrLabelProxy

fieldField :: AttrLabelProxy "field"
fieldField = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Field = FieldSignalList
type FieldSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Field::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The name of the field."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The data type of the field."
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

foreign import ccall "garrow_field_new" garrow_field_new :: 
    CString ->                              -- name : TBasicType TUTF8
    Ptr Arrow.DataType.DataType ->          -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    IO (Ptr Field)

-- | /No description available in the introspection data./
fieldNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.DataType.IsDataType a) =>
    T.Text
    -- ^ /@name@/: The name of the field.
    -> a
    -- ^ /@dataType@/: The data type of the field.
    -> m Field
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Field.Field'.
fieldNew name dataType = liftIO $ do
    name' <- textToCString name
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_field_new name' dataType'
    checkUnexpectedReturnNULL "fieldNew" result
    result' <- (wrapObject Field) result
    touchManagedPtr dataType
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Field::new_full
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The name of the field."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The data type of the field."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "nullable"
--           , argType = TBasicType TBoolean
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "Whether null may be included or not."
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

foreign import ccall "garrow_field_new_full" garrow_field_new_full :: 
    CString ->                              -- name : TBasicType TUTF8
    Ptr Arrow.DataType.DataType ->          -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    CInt ->                                 -- nullable : TBasicType TBoolean
    IO (Ptr Field)

-- | /No description available in the introspection data./
fieldNewFull ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.DataType.IsDataType a) =>
    T.Text
    -- ^ /@name@/: The name of the field.
    -> a
    -- ^ /@dataType@/: The data type of the field.
    -> Bool
    -- ^ /@nullable@/: Whether null may be included or not.
    -> m Field
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Field.Field'.
fieldNewFull name dataType nullable = liftIO $ do
    name' <- textToCString name
    dataType' <- unsafeManagedPtrCastPtr dataType
    let nullable' = (fromIntegral . fromEnum) nullable
    result <- garrow_field_new_full name' dataType' nullable'
    checkUnexpectedReturnNULL "fieldNewFull" result
    result' <- (wrapObject Field) result
    touchManagedPtr dataType
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Field::equal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "field"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Field" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowField." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_field"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Field" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowField to be compared."
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

foreign import ccall "garrow_field_equal" garrow_field_equal :: 
    Ptr Field ->                            -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    Ptr Field ->                            -- other_field : TInterface (Name {namespace = "Arrow", name = "Field"})
    IO CInt

-- | /No description available in the introspection data./
fieldEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsField a, IsField b) =>
    a
    -- ^ /@field@/: A t'GI.Arrow.Objects.Field.Field'.
    -> b
    -- ^ /@otherField@/: A t'GI.Arrow.Objects.Field.Field' to be compared.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if both of them have the same data, 'P.False'
    --   otherwise.
fieldEqual field otherField = liftIO $ do
    field' <- unsafeManagedPtrCastPtr field
    otherField' <- unsafeManagedPtrCastPtr otherField
    result <- garrow_field_equal field' otherField'
    let result' = (/= 0) result
    touchManagedPtr field
    touchManagedPtr otherField
    return result'

#if defined(ENABLE_OVERLOADING)
data FieldEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsField a, IsField b) => O.MethodInfo FieldEqualMethodInfo a signature where
    overloadedMethod = fieldEqual

#endif

-- method Field::get_data_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "field"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Field" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowField." , sinceVersion = Nothing }
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

foreign import ccall "garrow_field_get_data_type" garrow_field_get_data_type :: 
    Ptr Field ->                            -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    IO (Ptr Arrow.DataType.DataType)

-- | /No description available in the introspection data./
fieldGetDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsField a) =>
    a
    -- ^ /@field@/: A t'GI.Arrow.Objects.Field.Field'.
    -> m Arrow.DataType.DataType
    -- ^ __Returns:__ The data type of the field.
fieldGetDataType field = liftIO $ do
    field' <- unsafeManagedPtrCastPtr field
    result <- garrow_field_get_data_type field'
    checkUnexpectedReturnNULL "fieldGetDataType" result
    result' <- (newObject Arrow.DataType.DataType) result
    touchManagedPtr field
    return result'

#if defined(ENABLE_OVERLOADING)
data FieldGetDataTypeMethodInfo
instance (signature ~ (m Arrow.DataType.DataType), MonadIO m, IsField a) => O.MethodInfo FieldGetDataTypeMethodInfo a signature where
    overloadedMethod = fieldGetDataType

#endif

-- method Field::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "field"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Field" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowField." , sinceVersion = Nothing }
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

foreign import ccall "garrow_field_get_name" garrow_field_get_name :: 
    Ptr Field ->                            -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    IO CString

-- | /No description available in the introspection data./
fieldGetName ::
    (B.CallStack.HasCallStack, MonadIO m, IsField a) =>
    a
    -- ^ /@field@/: A t'GI.Arrow.Objects.Field.Field'.
    -> m T.Text
    -- ^ __Returns:__ The name of the field.
fieldGetName field = liftIO $ do
    field' <- unsafeManagedPtrCastPtr field
    result <- garrow_field_get_name field'
    checkUnexpectedReturnNULL "fieldGetName" result
    result' <- cstringToText result
    touchManagedPtr field
    return result'

#if defined(ENABLE_OVERLOADING)
data FieldGetNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsField a) => O.MethodInfo FieldGetNameMethodInfo a signature where
    overloadedMethod = fieldGetName

#endif

-- method Field::is_nullable
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "field"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Field" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowField." , sinceVersion = Nothing }
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

foreign import ccall "garrow_field_is_nullable" garrow_field_is_nullable :: 
    Ptr Field ->                            -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    IO CInt

-- | /No description available in the introspection data./
fieldIsNullable ::
    (B.CallStack.HasCallStack, MonadIO m, IsField a) =>
    a
    -- ^ /@field@/: A t'GI.Arrow.Objects.Field.Field'.
    -> m Bool
    -- ^ __Returns:__ Whether the filed may include null or not.
fieldIsNullable field = liftIO $ do
    field' <- unsafeManagedPtrCastPtr field
    result <- garrow_field_is_nullable field'
    let result' = (/= 0) result
    touchManagedPtr field
    return result'

#if defined(ENABLE_OVERLOADING)
data FieldIsNullableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsField a) => O.MethodInfo FieldIsNullableMethodInfo a signature where
    overloadedMethod = fieldIsNullable

#endif

-- method Field::to_string
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "field"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Field" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowField." , sinceVersion = Nothing }
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

foreign import ccall "garrow_field_to_string" garrow_field_to_string :: 
    Ptr Field ->                            -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    IO CString

-- | /No description available in the introspection data./
fieldToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsField a) =>
    a
    -- ^ /@field@/: A t'GI.Arrow.Objects.Field.Field'.
    -> m T.Text
    -- ^ __Returns:__ The string representation of the field.
fieldToString field = liftIO $ do
    field' <- unsafeManagedPtrCastPtr field
    result <- garrow_field_to_string field'
    checkUnexpectedReturnNULL "fieldToString" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr field
    return result'

#if defined(ENABLE_OVERLOADING)
data FieldToStringMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsField a) => O.MethodInfo FieldToStringMethodInfo a signature where
    overloadedMethod = fieldToString

#endif


