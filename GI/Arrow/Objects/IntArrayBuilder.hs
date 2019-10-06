{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.IntArrayBuilder
    ( 

-- * Exported types
    IntArrayBuilder(..)                     ,
    IsIntArrayBuilder                       ,
    toIntArrayBuilder                       ,
    noIntArrayBuilder                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveIntArrayBuilderMethod            ,
#endif


-- ** append #method:append#

#if defined(ENABLE_OVERLOADING)
    IntArrayBuilderAppendMethodInfo         ,
#endif
    intArrayBuilderAppend                   ,


-- ** appendNull #method:appendNull#

#if defined(ENABLE_OVERLOADING)
    IntArrayBuilderAppendNullMethodInfo     ,
#endif
    intArrayBuilderAppendNull               ,


-- ** appendNulls #method:appendNulls#

#if defined(ENABLE_OVERLOADING)
    IntArrayBuilderAppendNullsMethodInfo    ,
#endif
    intArrayBuilderAppendNulls              ,


-- ** appendValue #method:appendValue#

#if defined(ENABLE_OVERLOADING)
    IntArrayBuilderAppendValueMethodInfo    ,
#endif
    intArrayBuilderAppendValue              ,


-- ** appendValues #method:appendValues#

#if defined(ENABLE_OVERLOADING)
    IntArrayBuilderAppendValuesMethodInfo   ,
#endif
    intArrayBuilderAppendValues             ,


-- ** new #method:new#

    intArrayBuilderNew                      ,




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
newtype IntArrayBuilder = IntArrayBuilder (ManagedPtr IntArrayBuilder)
    deriving (Eq)
foreign import ccall "garrow_int_array_builder_get_type"
    c_garrow_int_array_builder_get_type :: IO GType

instance GObject IntArrayBuilder where
    gobjectType = c_garrow_int_array_builder_get_type
    

-- | Convert 'IntArrayBuilder' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue IntArrayBuilder where
    toGValue o = do
        gtype <- c_garrow_int_array_builder_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr IntArrayBuilder)
        B.ManagedPtr.newObject IntArrayBuilder ptr
        
    

-- | Type class for types which can be safely cast to `IntArrayBuilder`, for instance with `toIntArrayBuilder`.
class (GObject o, O.IsDescendantOf IntArrayBuilder o) => IsIntArrayBuilder o
instance (GObject o, O.IsDescendantOf IntArrayBuilder o) => IsIntArrayBuilder o

instance O.HasParentTypes IntArrayBuilder
type instance O.ParentTypes IntArrayBuilder = '[Arrow.ArrayBuilder.ArrayBuilder, GObject.Object.Object]

-- | Cast to `IntArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toIntArrayBuilder :: (MonadIO m, IsIntArrayBuilder o) => o -> m IntArrayBuilder
toIntArrayBuilder = liftIO . unsafeCastTo IntArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `IntArrayBuilder`.
noIntArrayBuilder :: Maybe IntArrayBuilder
noIntArrayBuilder = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveIntArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveIntArrayBuilderMethod "append" o = IntArrayBuilderAppendMethodInfo
    ResolveIntArrayBuilderMethod "appendNull" o = IntArrayBuilderAppendNullMethodInfo
    ResolveIntArrayBuilderMethod "appendNulls" o = IntArrayBuilderAppendNullsMethodInfo
    ResolveIntArrayBuilderMethod "appendValue" o = IntArrayBuilderAppendValueMethodInfo
    ResolveIntArrayBuilderMethod "appendValues" o = IntArrayBuilderAppendValuesMethodInfo
    ResolveIntArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveIntArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveIntArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveIntArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveIntArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveIntArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveIntArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveIntArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveIntArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveIntArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveIntArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveIntArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveIntArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveIntArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveIntArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveIntArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveIntArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveIntArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveIntArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveIntArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveIntArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveIntArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveIntArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveIntArrayBuilderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveIntArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveIntArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveIntArrayBuilderMethod t IntArrayBuilder, O.MethodInfo info IntArrayBuilder p) => OL.IsLabel t (IntArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList IntArrayBuilder
type instance O.AttributeList IntArrayBuilder = IntArrayBuilderAttributeList
type IntArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList IntArrayBuilder = IntArrayBuilderSignalList
type IntArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method IntArrayBuilder::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Arrow" , name = "IntArrayBuilder" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int_array_builder_new" garrow_int_array_builder_new :: 
    IO (Ptr IntArrayBuilder)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.6.0/
intArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m IntArrayBuilder
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.IntArrayBuilder.IntArrayBuilder'.
intArrayBuilderNew  = liftIO $ do
    result <- garrow_int_array_builder_new
    checkUnexpectedReturnNULL "intArrayBuilderNew" result
    result' <- (wrapObject IntArrayBuilder) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method IntArrayBuilder::append
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "IntArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowIntArrayBuilder."
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
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A int value." , sinceVersion = Nothing }
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

foreign import ccall "garrow_int_array_builder_append" garrow_int_array_builder_append :: 
    Ptr IntArrayBuilder ->                  -- builder : TInterface (Name {namespace = "Arrow", name = "IntArrayBuilder"})
    Int64 ->                                -- value : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{-# DEPRECATED intArrayBuilderAppend ["(Since version 0.12.0)","","  Use 'GI.Arrow.Objects.IntArrayBuilder.intArrayBuilderAppendValue' instead."] #-}
-- | /No description available in the introspection data./
-- 
-- /Since: 0.6.0/
intArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsIntArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.IntArrayBuilder.IntArrayBuilder'.
    -> Int64
    -- ^ /@value@/: A int value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
intArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data IntArrayBuilderAppendMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsIntArrayBuilder a) => O.MethodInfo IntArrayBuilderAppendMethodInfo a signature where
    overloadedMethod = intArrayBuilderAppend

#endif

-- method IntArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "IntArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowIntArrayBuilder."
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

foreign import ccall "garrow_int_array_builder_append_null" garrow_int_array_builder_append_null :: 
    Ptr IntArrayBuilder ->                  -- builder : TInterface (Name {namespace = "Arrow", name = "IntArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.6.0/
intArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsIntArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.IntArrayBuilder.IntArrayBuilder'.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
intArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data IntArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsIntArrayBuilder a) => O.MethodInfo IntArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod = intArrayBuilderAppendNull

#endif

-- method IntArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "IntArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowIntArrayBuilder."
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

foreign import ccall "garrow_int_array_builder_append_nulls" garrow_int_array_builder_append_nulls :: 
    Ptr IntArrayBuilder ->                  -- builder : TInterface (Name {namespace = "Arrow", name = "IntArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Append multiple nulls at once. It\'s more efficient than multiple
-- @append_null()@ calls.
-- 
-- /Since: 0.8.0/
intArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsIntArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.IntArrayBuilder.IntArrayBuilder'.
    -> Int64
    -- ^ /@n@/: The number of null values to be appended.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
intArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data IntArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsIntArrayBuilder a) => O.MethodInfo IntArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod = intArrayBuilderAppendNulls

#endif

-- method IntArrayBuilder::append_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "IntArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowIntArrayBuilder."
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
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A int value." , sinceVersion = Nothing }
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

foreign import ccall "garrow_int_array_builder_append_value" garrow_int_array_builder_append_value :: 
    Ptr IntArrayBuilder ->                  -- builder : TInterface (Name {namespace = "Arrow", name = "IntArrayBuilder"})
    Int64 ->                                -- value : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
intArrayBuilderAppendValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsIntArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.IntArrayBuilder.IntArrayBuilder'.
    -> Int64
    -- ^ /@value@/: A int value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
intArrayBuilderAppendValue builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int_array_builder_append_value builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data IntArrayBuilderAppendValueMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsIntArrayBuilder a) => O.MethodInfo IntArrayBuilderAppendValueMethodInfo a signature where
    overloadedMethod = intArrayBuilderAppendValue

#endif

-- method IntArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "IntArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowIntArrayBuilder."
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
--           , argType = TCArray False (-1) 2 (TBasicType TInt64)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The array of int." , sinceVersion = Nothing }
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

foreign import ccall "garrow_int_array_builder_append_values" garrow_int_array_builder_append_values :: 
    Ptr IntArrayBuilder ->                  -- builder : TInterface (Name {namespace = "Arrow", name = "IntArrayBuilder"})
    Ptr Int64 ->                            -- values : TCArray False (-1) 2 (TBasicType TInt64)
    Int64 ->                                -- values_length : TBasicType TInt64
    Ptr CInt ->                             -- is_valids : TCArray False (-1) 4 (TBasicType TBoolean)
    Int64 ->                                -- is_valids_length : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Append multiple values at once. It\'s more efficient than multiple
-- @append()@ and @append_null()@ calls.
-- 
-- /Since: 0.8.0/
intArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsIntArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.IntArrayBuilder.IntArrayBuilder'.
    -> [Int64]
    -- ^ /@values@/: The array of int.
    -> Maybe ([Bool])
    -- ^ /@isValids@/: The array of
    --   boolean that shows whether the Nth value is valid or not. If the
    --   Nth @is_valids@ is 'P.True', the Nth @values@ is valid value. Otherwise
    --   the Nth value is null value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
intArrayBuilderAppendValues builder values isValids = liftIO $ do
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
        _ <- propagateGError $ garrow_int_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if defined(ENABLE_OVERLOADING)
data IntArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Int64] -> Maybe ([Bool]) -> m ()), MonadIO m, IsIntArrayBuilder a) => O.MethodInfo IntArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod = intArrayBuilderAppendValues

#endif


