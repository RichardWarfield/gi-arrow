{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.UInt16ArrayBuilder
    ( 

-- * Exported types
    UInt16ArrayBuilder(..)                  ,
    IsUInt16ArrayBuilder                    ,
    toUInt16ArrayBuilder                    ,
    noUInt16ArrayBuilder                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveUInt16ArrayBuilderMethod         ,
#endif


-- ** append #method:append#

#if defined(ENABLE_OVERLOADING)
    UInt16ArrayBuilderAppendMethodInfo      ,
#endif
    uInt16ArrayBuilderAppend                ,


-- ** appendNull #method:appendNull#

#if defined(ENABLE_OVERLOADING)
    UInt16ArrayBuilderAppendNullMethodInfo  ,
#endif
    uInt16ArrayBuilderAppendNull            ,


-- ** appendNulls #method:appendNulls#

#if defined(ENABLE_OVERLOADING)
    UInt16ArrayBuilderAppendNullsMethodInfo ,
#endif
    uInt16ArrayBuilderAppendNulls           ,


-- ** appendValue #method:appendValue#

#if defined(ENABLE_OVERLOADING)
    UInt16ArrayBuilderAppendValueMethodInfo ,
#endif
    uInt16ArrayBuilderAppendValue           ,


-- ** appendValues #method:appendValues#

#if defined(ENABLE_OVERLOADING)
    UInt16ArrayBuilderAppendValuesMethodInfo,
#endif
    uInt16ArrayBuilderAppendValues          ,


-- ** new #method:new#

    uInt16ArrayBuilderNew                   ,




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
newtype UInt16ArrayBuilder = UInt16ArrayBuilder (ManagedPtr UInt16ArrayBuilder)
    deriving (Eq)
foreign import ccall "garrow_uint16_array_builder_get_type"
    c_garrow_uint16_array_builder_get_type :: IO GType

instance GObject UInt16ArrayBuilder where
    gobjectType = c_garrow_uint16_array_builder_get_type
    

-- | Convert 'UInt16ArrayBuilder' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue UInt16ArrayBuilder where
    toGValue o = do
        gtype <- c_garrow_uint16_array_builder_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr UInt16ArrayBuilder)
        B.ManagedPtr.newObject UInt16ArrayBuilder ptr
        
    

-- | Type class for types which can be safely cast to `UInt16ArrayBuilder`, for instance with `toUInt16ArrayBuilder`.
class (GObject o, O.IsDescendantOf UInt16ArrayBuilder o) => IsUInt16ArrayBuilder o
instance (GObject o, O.IsDescendantOf UInt16ArrayBuilder o) => IsUInt16ArrayBuilder o

instance O.HasParentTypes UInt16ArrayBuilder
type instance O.ParentTypes UInt16ArrayBuilder = '[Arrow.ArrayBuilder.ArrayBuilder, GObject.Object.Object]

-- | Cast to `UInt16ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt16ArrayBuilder :: (MonadIO m, IsUInt16ArrayBuilder o) => o -> m UInt16ArrayBuilder
toUInt16ArrayBuilder = liftIO . unsafeCastTo UInt16ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `UInt16ArrayBuilder`.
noUInt16ArrayBuilder :: Maybe UInt16ArrayBuilder
noUInt16ArrayBuilder = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveUInt16ArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt16ArrayBuilderMethod "append" o = UInt16ArrayBuilderAppendMethodInfo
    ResolveUInt16ArrayBuilderMethod "appendNull" o = UInt16ArrayBuilderAppendNullMethodInfo
    ResolveUInt16ArrayBuilderMethod "appendNulls" o = UInt16ArrayBuilderAppendNullsMethodInfo
    ResolveUInt16ArrayBuilderMethod "appendValue" o = UInt16ArrayBuilderAppendValueMethodInfo
    ResolveUInt16ArrayBuilderMethod "appendValues" o = UInt16ArrayBuilderAppendValuesMethodInfo
    ResolveUInt16ArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt16ArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt16ArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveUInt16ArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt16ArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt16ArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt16ArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt16ArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt16ArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt16ArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt16ArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt16ArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt16ArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt16ArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt16ArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt16ArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt16ArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt16ArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt16ArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt16ArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt16ArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveUInt16ArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveUInt16ArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt16ArrayBuilderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUInt16ArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt16ArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt16ArrayBuilderMethod t UInt16ArrayBuilder, O.MethodInfo info UInt16ArrayBuilder p) => OL.IsLabel t (UInt16ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UInt16ArrayBuilder
type instance O.AttributeList UInt16ArrayBuilder = UInt16ArrayBuilderAttributeList
type UInt16ArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UInt16ArrayBuilder = UInt16ArrayBuilderSignalList
type UInt16ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt16ArrayBuilder::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Arrow" , name = "UInt16ArrayBuilder" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint16_array_builder_new" garrow_uint16_array_builder_new :: 
    IO (Ptr UInt16ArrayBuilder)

-- | /No description available in the introspection data./
uInt16ArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UInt16ArrayBuilder
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.UInt16ArrayBuilder.UInt16ArrayBuilder'.
uInt16ArrayBuilderNew  = liftIO $ do
    result <- garrow_uint16_array_builder_new
    checkUnexpectedReturnNULL "uInt16ArrayBuilderNew" result
    result' <- (wrapObject UInt16ArrayBuilder) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UInt16ArrayBuilder::append
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "UInt16ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt16ArrayBuilder."
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
--           , argType = TBasicType TUInt16
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An uint16 value." , sinceVersion = Nothing }
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

foreign import ccall "garrow_uint16_array_builder_append" garrow_uint16_array_builder_append :: 
    Ptr UInt16ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt16ArrayBuilder"})
    Word16 ->                               -- value : TBasicType TUInt16
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{-# DEPRECATED uInt16ArrayBuilderAppend ["(Since version 0.12.0)","","  Use 'GI.Arrow.Objects.UInt16ArrayBuilder.uInt16ArrayBuilderAppendValue' instead."] #-}
-- | /No description available in the introspection data./
uInt16ArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt16ArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UInt16ArrayBuilder.UInt16ArrayBuilder'.
    -> Word16
    -- ^ /@value@/: An uint16 value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uInt16ArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint16_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt16ArrayBuilderAppendMethodInfo
instance (signature ~ (Word16 -> m ()), MonadIO m, IsUInt16ArrayBuilder a) => O.MethodInfo UInt16ArrayBuilderAppendMethodInfo a signature where
    overloadedMethod = uInt16ArrayBuilderAppend

#endif

-- method UInt16ArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "UInt16ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt16ArrayBuilder."
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

foreign import ccall "garrow_uint16_array_builder_append_null" garrow_uint16_array_builder_append_null :: 
    Ptr UInt16ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt16ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
uInt16ArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt16ArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UInt16ArrayBuilder.UInt16ArrayBuilder'.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uInt16ArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint16_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt16ArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsUInt16ArrayBuilder a) => O.MethodInfo UInt16ArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod = uInt16ArrayBuilderAppendNull

#endif

-- method UInt16ArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "UInt16ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt16ArrayBuilder."
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

foreign import ccall "garrow_uint16_array_builder_append_nulls" garrow_uint16_array_builder_append_nulls :: 
    Ptr UInt16ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt16ArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Append multiple nulls at once. It\'s more efficient than multiple
-- @append_null()@ calls.
-- 
-- /Since: 0.8.0/
uInt16ArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt16ArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UInt16ArrayBuilder.UInt16ArrayBuilder'.
    -> Int64
    -- ^ /@n@/: The number of null values to be appended.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uInt16ArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint16_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt16ArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsUInt16ArrayBuilder a) => O.MethodInfo UInt16ArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod = uInt16ArrayBuilderAppendNulls

#endif

-- method UInt16ArrayBuilder::append_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "UInt16ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt16ArrayBuilder."
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
--           , argType = TBasicType TUInt16
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An uint16 value." , sinceVersion = Nothing }
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

foreign import ccall "garrow_uint16_array_builder_append_value" garrow_uint16_array_builder_append_value :: 
    Ptr UInt16ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt16ArrayBuilder"})
    Word16 ->                               -- value : TBasicType TUInt16
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
uInt16ArrayBuilderAppendValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt16ArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UInt16ArrayBuilder.UInt16ArrayBuilder'.
    -> Word16
    -- ^ /@value@/: An uint16 value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uInt16ArrayBuilderAppendValue builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint16_array_builder_append_value builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt16ArrayBuilderAppendValueMethodInfo
instance (signature ~ (Word16 -> m ()), MonadIO m, IsUInt16ArrayBuilder a) => O.MethodInfo UInt16ArrayBuilderAppendValueMethodInfo a signature where
    overloadedMethod = uInt16ArrayBuilderAppendValue

#endif

-- method UInt16ArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "UInt16ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt16ArrayBuilder."
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
--           , argType = TCArray False (-1) 2 (TBasicType TUInt16)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The array of uint16."
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

foreign import ccall "garrow_uint16_array_builder_append_values" garrow_uint16_array_builder_append_values :: 
    Ptr UInt16ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt16ArrayBuilder"})
    Ptr Word16 ->                           -- values : TCArray False (-1) 2 (TBasicType TUInt16)
    Int64 ->                                -- values_length : TBasicType TInt64
    Ptr CInt ->                             -- is_valids : TCArray False (-1) 4 (TBasicType TBoolean)
    Int64 ->                                -- is_valids_length : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Append multiple values at once. It\'s more efficient than multiple
-- @append()@ and @append_null()@ calls.
-- 
-- /Since: 0.8.0/
uInt16ArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt16ArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UInt16ArrayBuilder.UInt16ArrayBuilder'.
    -> [Word16]
    -- ^ /@values@/: The array of uint16.
    -> Maybe ([Bool])
    -- ^ /@isValids@/: The array of
    --   boolean that shows whether the Nth value is valid or not. If the
    --   Nth @is_valids@ is 'P.True', the Nth @values@ is valid value. Otherwise
    --   the Nth value is null value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uInt16ArrayBuilderAppendValues builder values isValids = liftIO $ do
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
        _ <- propagateGError $ garrow_uint16_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if defined(ENABLE_OVERLOADING)
data UInt16ArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Word16] -> Maybe ([Bool]) -> m ()), MonadIO m, IsUInt16ArrayBuilder a) => O.MethodInfo UInt16ArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod = uInt16ArrayBuilderAppendValues

#endif


