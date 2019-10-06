{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.StringArrayBuilder
    ( 

-- * Exported types
    StringArrayBuilder(..)                  ,
    IsStringArrayBuilder                    ,
    toStringArrayBuilder                    ,
    noStringArrayBuilder                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveStringArrayBuilderMethod         ,
#endif


-- ** append #method:append#

#if defined(ENABLE_OVERLOADING)
    StringArrayBuilderAppendMethodInfo      ,
#endif
    stringArrayBuilderAppend                ,


-- ** appendValue #method:appendValue#

#if defined(ENABLE_OVERLOADING)
    StringArrayBuilderAppendValueMethodInfo ,
#endif
    stringArrayBuilderAppendValue           ,


-- ** appendValues #method:appendValues#

#if defined(ENABLE_OVERLOADING)
    StringArrayBuilderAppendValuesMethodInfo,
#endif
    stringArrayBuilderAppendValues          ,


-- ** new #method:new#

    stringArrayBuilderNew                   ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.ArrayBuilder as Arrow.ArrayBuilder
import {-# SOURCE #-} qualified GI.Arrow.Objects.BinaryArrayBuilder as Arrow.BinaryArrayBuilder
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype StringArrayBuilder = StringArrayBuilder (ManagedPtr StringArrayBuilder)
    deriving (Eq)
foreign import ccall "garrow_string_array_builder_get_type"
    c_garrow_string_array_builder_get_type :: IO GType

instance GObject StringArrayBuilder where
    gobjectType = c_garrow_string_array_builder_get_type
    

-- | Convert 'StringArrayBuilder' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue StringArrayBuilder where
    toGValue o = do
        gtype <- c_garrow_string_array_builder_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr StringArrayBuilder)
        B.ManagedPtr.newObject StringArrayBuilder ptr
        
    

-- | Type class for types which can be safely cast to `StringArrayBuilder`, for instance with `toStringArrayBuilder`.
class (GObject o, O.IsDescendantOf StringArrayBuilder o) => IsStringArrayBuilder o
instance (GObject o, O.IsDescendantOf StringArrayBuilder o) => IsStringArrayBuilder o

instance O.HasParentTypes StringArrayBuilder
type instance O.ParentTypes StringArrayBuilder = '[Arrow.BinaryArrayBuilder.BinaryArrayBuilder, Arrow.ArrayBuilder.ArrayBuilder, GObject.Object.Object]

-- | Cast to `StringArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStringArrayBuilder :: (MonadIO m, IsStringArrayBuilder o) => o -> m StringArrayBuilder
toStringArrayBuilder = liftIO . unsafeCastTo StringArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `StringArrayBuilder`.
noStringArrayBuilder :: Maybe StringArrayBuilder
noStringArrayBuilder = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveStringArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveStringArrayBuilderMethod "append" o = StringArrayBuilderAppendMethodInfo
    ResolveStringArrayBuilderMethod "appendNull" o = Arrow.BinaryArrayBuilder.BinaryArrayBuilderAppendNullMethodInfo
    ResolveStringArrayBuilderMethod "appendValue" o = StringArrayBuilderAppendValueMethodInfo
    ResolveStringArrayBuilderMethod "appendValues" o = StringArrayBuilderAppendValuesMethodInfo
    ResolveStringArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStringArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStringArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveStringArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStringArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStringArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStringArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStringArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStringArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStringArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStringArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStringArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStringArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStringArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStringArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStringArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStringArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStringArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStringArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveStringArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStringArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveStringArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveStringArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStringArrayBuilderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveStringArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveStringArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStringArrayBuilderMethod t StringArrayBuilder, O.MethodInfo info StringArrayBuilder p) => OL.IsLabel t (StringArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList StringArrayBuilder
type instance O.AttributeList StringArrayBuilder = StringArrayBuilderAttributeList
type StringArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList StringArrayBuilder = StringArrayBuilderSignalList
type StringArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method StringArrayBuilder::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Arrow" , name = "StringArrayBuilder" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_string_array_builder_new" garrow_string_array_builder_new :: 
    IO (Ptr StringArrayBuilder)

-- | /No description available in the introspection data./
stringArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m StringArrayBuilder
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.StringArrayBuilder.StringArrayBuilder'.
stringArrayBuilderNew  = liftIO $ do
    result <- garrow_string_array_builder_new
    checkUnexpectedReturnNULL "stringArrayBuilderNew" result
    result' <- (wrapObject StringArrayBuilder) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method StringArrayBuilder::append
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "StringArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowStringArrayBuilder."
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
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A string value." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_string_array_builder_append" garrow_string_array_builder_append :: 
    Ptr StringArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "StringArrayBuilder"})
    CString ->                              -- value : TBasicType TUTF8
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{-# DEPRECATED stringArrayBuilderAppend ["(Since version 0.12.0)","","  Use 'GI.Arrow.Objects.StringArrayBuilder.stringArrayBuilderAppendValue' instead."] #-}
-- | /No description available in the introspection data./
stringArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsStringArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.StringArrayBuilder.StringArrayBuilder'.
    -> T.Text
    -- ^ /@value@/: A string value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
stringArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    value' <- textToCString value
    onException (do
        _ <- propagateGError $ garrow_string_array_builder_append builder' value'
        touchManagedPtr builder
        freeMem value'
        return ()
     ) (do
        freeMem value'
     )

#if defined(ENABLE_OVERLOADING)
data StringArrayBuilderAppendMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsStringArrayBuilder a) => O.MethodInfo StringArrayBuilderAppendMethodInfo a signature where
    overloadedMethod = stringArrayBuilderAppend

#endif

-- method StringArrayBuilder::append_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "StringArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowStringArrayBuilder."
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
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A string value." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_string_array_builder_append_value" garrow_string_array_builder_append_value :: 
    Ptr StringArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "StringArrayBuilder"})
    CString ->                              -- value : TBasicType TUTF8
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
stringArrayBuilderAppendValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsStringArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.StringArrayBuilder.StringArrayBuilder'.
    -> T.Text
    -- ^ /@value@/: A string value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
stringArrayBuilderAppendValue builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    value' <- textToCString value
    onException (do
        _ <- propagateGError $ garrow_string_array_builder_append_value builder' value'
        touchManagedPtr builder
        freeMem value'
        return ()
     ) (do
        freeMem value'
     )

#if defined(ENABLE_OVERLOADING)
data StringArrayBuilderAppendValueMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsStringArrayBuilder a) => O.MethodInfo StringArrayBuilderAppendValueMethodInfo a signature where
    overloadedMethod = stringArrayBuilderAppendValue

#endif

-- method StringArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "StringArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowStringArrayBuilder."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "values"
--           , argType = TCArray False (-1) 2 (TBasicType TUTF8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The array of\n  strings."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "values_length"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The length of `values`."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "is_valids"
--           , argType = TCArray False (-1) 4 (TBasicType TBoolean)
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "is_valids_length"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The length of `is_valids`."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "is_valids_length"
--              , argType = TBasicType TInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The length of `is_valids`."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          , Arg
--              { argCName = "values_length"
--              , argType = TBasicType TInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The length of `values`."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_string_array_builder_append_values" garrow_string_array_builder_append_values :: 
    Ptr StringArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "StringArrayBuilder"})
    Ptr CString ->                          -- values : TCArray False (-1) 2 (TBasicType TUTF8)
    Int64 ->                                -- values_length : TBasicType TInt64
    Ptr CInt ->                             -- is_valids : TCArray False (-1) 4 (TBasicType TBoolean)
    Int64 ->                                -- is_valids_length : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Append multiple values at once. It\'s more efficient than multiple
-- @append()@ and @append_null()@ calls.
-- 
-- /Since: 0.10.0/
stringArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsStringArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.StringArrayBuilder.StringArrayBuilder'.
    -> [T.Text]
    -- ^ /@values@/: The array of
    --   strings.
    -> Maybe ([Bool])
    -- ^ /@isValids@/: The array of
    --   boolean that shows whether the Nth value is valid or not. If the
    --   Nth @is_valids@ is 'P.True', the Nth @values@ is valid value. Otherwise
    --   the Nth value is null value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
stringArrayBuilderAppendValues builder values isValids = liftIO $ do
    let isValidsLength = case isValids of
            Nothing -> 0
            Just jIsValids -> fromIntegral $ length jIsValids
    let valuesLength = fromIntegral $ length values
    builder' <- unsafeManagedPtrCastPtr builder
    values' <- packUTF8CArray values
    maybeIsValids <- case isValids of
        Nothing -> return nullPtr
        Just jIsValids -> do
            jIsValids' <- (packMapStorableArray (fromIntegral . fromEnum)) jIsValids
            return jIsValids'
    onException (do
        _ <- propagateGError $ garrow_string_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        (mapCArrayWithLength valuesLength) freeMem values'
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        (mapCArrayWithLength valuesLength) freeMem values'
        freeMem values'
        freeMem maybeIsValids
     )

#if defined(ENABLE_OVERLOADING)
data StringArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([T.Text] -> Maybe ([Bool]) -> m ()), MonadIO m, IsStringArrayBuilder a) => O.MethodInfo StringArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod = stringArrayBuilderAppendValues

#endif


