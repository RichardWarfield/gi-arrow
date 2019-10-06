{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.UIntArrayBuilder
    ( 

-- * Exported types
    UIntArrayBuilder(..)                    ,
    IsUIntArrayBuilder                      ,
    toUIntArrayBuilder                      ,
    noUIntArrayBuilder                      ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveUIntArrayBuilderMethod           ,
#endif


-- ** append #method:append#

#if defined(ENABLE_OVERLOADING)
    UIntArrayBuilderAppendMethodInfo        ,
#endif
    uIntArrayBuilderAppend                  ,


-- ** appendNull #method:appendNull#

#if defined(ENABLE_OVERLOADING)
    UIntArrayBuilderAppendNullMethodInfo    ,
#endif
    uIntArrayBuilderAppendNull              ,


-- ** appendNulls #method:appendNulls#

#if defined(ENABLE_OVERLOADING)
    UIntArrayBuilderAppendNullsMethodInfo   ,
#endif
    uIntArrayBuilderAppendNulls             ,


-- ** appendValue #method:appendValue#

#if defined(ENABLE_OVERLOADING)
    UIntArrayBuilderAppendValueMethodInfo   ,
#endif
    uIntArrayBuilderAppendValue             ,


-- ** appendValues #method:appendValues#

#if defined(ENABLE_OVERLOADING)
    UIntArrayBuilderAppendValuesMethodInfo  ,
#endif
    uIntArrayBuilderAppendValues            ,


-- ** new #method:new#

    uIntArrayBuilderNew                     ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype UIntArrayBuilder = UIntArrayBuilder (ManagedPtr UIntArrayBuilder)
    deriving (Eq)
foreign import ccall "garrow_uint_array_builder_get_type"
    c_garrow_uint_array_builder_get_type :: IO GType

instance GObject UIntArrayBuilder where
    gobjectType = c_garrow_uint_array_builder_get_type
    

-- | Convert 'UIntArrayBuilder' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue UIntArrayBuilder where
    toGValue o = do
        gtype <- c_garrow_uint_array_builder_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr UIntArrayBuilder)
        B.ManagedPtr.newObject UIntArrayBuilder ptr
        
    

-- | Type class for types which can be safely cast to `UIntArrayBuilder`, for instance with `toUIntArrayBuilder`.
class (GObject o, O.IsDescendantOf UIntArrayBuilder o) => IsUIntArrayBuilder o
instance (GObject o, O.IsDescendantOf UIntArrayBuilder o) => IsUIntArrayBuilder o

instance O.HasParentTypes UIntArrayBuilder
type instance O.ParentTypes UIntArrayBuilder = '[Arrow.ArrayBuilder.ArrayBuilder, GObject.Object.Object]

-- | Cast to `UIntArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUIntArrayBuilder :: (MonadIO m, IsUIntArrayBuilder o) => o -> m UIntArrayBuilder
toUIntArrayBuilder = liftIO . unsafeCastTo UIntArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `UIntArrayBuilder`.
noUIntArrayBuilder :: Maybe UIntArrayBuilder
noUIntArrayBuilder = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveUIntArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveUIntArrayBuilderMethod "append" o = UIntArrayBuilderAppendMethodInfo
    ResolveUIntArrayBuilderMethod "appendNull" o = UIntArrayBuilderAppendNullMethodInfo
    ResolveUIntArrayBuilderMethod "appendNulls" o = UIntArrayBuilderAppendNullsMethodInfo
    ResolveUIntArrayBuilderMethod "appendValue" o = UIntArrayBuilderAppendValueMethodInfo
    ResolveUIntArrayBuilderMethod "appendValues" o = UIntArrayBuilderAppendValuesMethodInfo
    ResolveUIntArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUIntArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUIntArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveUIntArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUIntArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUIntArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUIntArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUIntArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUIntArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUIntArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUIntArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUIntArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUIntArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUIntArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUIntArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUIntArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUIntArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUIntArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUIntArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUIntArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUIntArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveUIntArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveUIntArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUIntArrayBuilderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUIntArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUIntArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUIntArrayBuilderMethod t UIntArrayBuilder, O.MethodInfo info UIntArrayBuilder p) => OL.IsLabel t (UIntArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UIntArrayBuilder
type instance O.AttributeList UIntArrayBuilder = UIntArrayBuilderAttributeList
type UIntArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UIntArrayBuilder = UIntArrayBuilderSignalList
type UIntArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UIntArrayBuilder::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Arrow" , name = "UIntArrayBuilder" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint_array_builder_new" garrow_uint_array_builder_new :: 
    IO (Ptr UIntArrayBuilder)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
uIntArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UIntArrayBuilder
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.UIntArrayBuilder.UIntArrayBuilder'.
uIntArrayBuilderNew  = liftIO $ do
    result <- garrow_uint_array_builder_new
    checkUnexpectedReturnNULL "uIntArrayBuilderNew" result
    result' <- (wrapObject UIntArrayBuilder) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UIntArrayBuilder::append
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UIntArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUIntArrayBuilder."
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
--                 { rawDocText = Just "A unsigned int value."
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
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint_array_builder_append" garrow_uint_array_builder_append :: 
    Ptr UIntArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"})
    Word64 ->                               -- value : TBasicType TUInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{-# DEPRECATED uIntArrayBuilderAppend ["(Since version 0.12.0)","","  Use 'GI.Arrow.Objects.UIntArrayBuilder.uIntArrayBuilderAppendValue' instead."] #-}
-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
uIntArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsUIntArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UIntArrayBuilder.UIntArrayBuilder'.
    -> Word64
    -- ^ /@value@/: A unsigned int value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uIntArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UIntArrayBuilderAppendMethodInfo
instance (signature ~ (Word64 -> m ()), MonadIO m, IsUIntArrayBuilder a) => O.MethodInfo UIntArrayBuilderAppendMethodInfo a signature where
    overloadedMethod = uIntArrayBuilderAppend

#endif

-- method UIntArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UIntArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUIntArrayBuilder."
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
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint_array_builder_append_null" garrow_uint_array_builder_append_null :: 
    Ptr UIntArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
uIntArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsUIntArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UIntArrayBuilder.UIntArrayBuilder'.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uIntArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UIntArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsUIntArrayBuilder a) => O.MethodInfo UIntArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod = uIntArrayBuilderAppendNull

#endif

-- method UIntArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UIntArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUIntArrayBuilder."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of null values to be appended."
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
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint_array_builder_append_nulls" garrow_uint_array_builder_append_nulls :: 
    Ptr UIntArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Append multiple nulls at once. It\'s more efficient than multiple
-- @append_null()@ calls.
-- 
-- /Since: 0.8.0/
uIntArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsUIntArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UIntArrayBuilder.UIntArrayBuilder'.
    -> Int64
    -- ^ /@n@/: The number of null values to be appended.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uIntArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UIntArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsUIntArrayBuilder a) => O.MethodInfo UIntArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod = uIntArrayBuilderAppendNulls

#endif

-- method UIntArrayBuilder::append_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UIntArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUIntArrayBuilder."
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
--                 { rawDocText = Just "A unsigned int value."
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
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint_array_builder_append_value" garrow_uint_array_builder_append_value :: 
    Ptr UIntArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"})
    Word64 ->                               -- value : TBasicType TUInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
uIntArrayBuilderAppendValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsUIntArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UIntArrayBuilder.UIntArrayBuilder'.
    -> Word64
    -- ^ /@value@/: A unsigned int value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uIntArrayBuilderAppendValue builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint_array_builder_append_value builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UIntArrayBuilderAppendValueMethodInfo
instance (signature ~ (Word64 -> m ()), MonadIO m, IsUIntArrayBuilder a) => O.MethodInfo UIntArrayBuilderAppendValueMethodInfo a signature where
    overloadedMethod = uIntArrayBuilderAppendValue

#endif

-- method UIntArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UIntArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUIntArrayBuilder."
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
--           , argType = TCArray False (-1) 2 (TBasicType TUInt64)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The array of unsigned int."
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

foreign import ccall "garrow_uint_array_builder_append_values" garrow_uint_array_builder_append_values :: 
    Ptr UIntArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"})
    Ptr Word64 ->                           -- values : TCArray False (-1) 2 (TBasicType TUInt64)
    Int64 ->                                -- values_length : TBasicType TInt64
    Ptr CInt ->                             -- is_valids : TCArray False (-1) 4 (TBasicType TBoolean)
    Int64 ->                                -- is_valids_length : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Append multiple values at once. It\'s more efficient than multiple
-- @append()@ and @append_null()@ calls.
-- 
-- /Since: 0.8.0/
uIntArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsUIntArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UIntArrayBuilder.UIntArrayBuilder'.
    -> [Word64]
    -- ^ /@values@/: The array of unsigned int.
    -> Maybe ([Bool])
    -- ^ /@isValids@/: The array of
    --   boolean that shows whether the Nth value is valid or not. If the
    --   Nth @is_valids@ is 'P.True', the Nth @values@ is valid value. Otherwise
    --   the Nth value is null value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uIntArrayBuilderAppendValues builder values isValids = liftIO $ do
    let isValidsLength = case isValids of
            Nothing -> 0
            Just jIsValids -> fromIntegral $ length jIsValids
    let valuesLength = fromIntegral $ length values
    builder' <- unsafeManagedPtrCastPtr builder
    values' <- packStorableArray values
    maybeIsValids <- case isValids of
        Nothing -> return nullPtr
        Just jIsValids -> do
            jIsValids' <- (packMapStorableArray (fromIntegral . fromEnum)) jIsValids
            return jIsValids'
    onException (do
        _ <- propagateGError $ garrow_uint_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if defined(ENABLE_OVERLOADING)
data UIntArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Word64] -> Maybe ([Bool]) -> m ()), MonadIO m, IsUIntArrayBuilder a) => O.MethodInfo UIntArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod = uIntArrayBuilderAppendValues

#endif


