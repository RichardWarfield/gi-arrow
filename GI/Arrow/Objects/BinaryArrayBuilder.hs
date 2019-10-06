{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.BinaryArrayBuilder
    ( 

-- * Exported types
    BinaryArrayBuilder(..)                  ,
    IsBinaryArrayBuilder                    ,
    toBinaryArrayBuilder                    ,
    noBinaryArrayBuilder                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveBinaryArrayBuilderMethod         ,
#endif


-- ** append #method:append#

#if defined(ENABLE_OVERLOADING)
    BinaryArrayBuilderAppendMethodInfo      ,
#endif
    binaryArrayBuilderAppend                ,


-- ** appendNull #method:appendNull#

#if defined(ENABLE_OVERLOADING)
    BinaryArrayBuilderAppendNullMethodInfo  ,
#endif
    binaryArrayBuilderAppendNull            ,


-- ** appendValue #method:appendValue#

#if defined(ENABLE_OVERLOADING)
    BinaryArrayBuilderAppendValueMethodInfo ,
#endif
    binaryArrayBuilderAppendValue           ,


-- ** new #method:new#

    binaryArrayBuilderNew                   ,




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
newtype BinaryArrayBuilder = BinaryArrayBuilder (ManagedPtr BinaryArrayBuilder)
    deriving (Eq)
foreign import ccall "garrow_binary_array_builder_get_type"
    c_garrow_binary_array_builder_get_type :: IO GType

instance GObject BinaryArrayBuilder where
    gobjectType = c_garrow_binary_array_builder_get_type
    

-- | Convert 'BinaryArrayBuilder' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue BinaryArrayBuilder where
    toGValue o = do
        gtype <- c_garrow_binary_array_builder_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr BinaryArrayBuilder)
        B.ManagedPtr.newObject BinaryArrayBuilder ptr
        
    

-- | Type class for types which can be safely cast to `BinaryArrayBuilder`, for instance with `toBinaryArrayBuilder`.
class (GObject o, O.IsDescendantOf BinaryArrayBuilder o) => IsBinaryArrayBuilder o
instance (GObject o, O.IsDescendantOf BinaryArrayBuilder o) => IsBinaryArrayBuilder o

instance O.HasParentTypes BinaryArrayBuilder
type instance O.ParentTypes BinaryArrayBuilder = '[Arrow.ArrayBuilder.ArrayBuilder, GObject.Object.Object]

-- | Cast to `BinaryArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toBinaryArrayBuilder :: (MonadIO m, IsBinaryArrayBuilder o) => o -> m BinaryArrayBuilder
toBinaryArrayBuilder = liftIO . unsafeCastTo BinaryArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `BinaryArrayBuilder`.
noBinaryArrayBuilder :: Maybe BinaryArrayBuilder
noBinaryArrayBuilder = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveBinaryArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveBinaryArrayBuilderMethod "append" o = BinaryArrayBuilderAppendMethodInfo
    ResolveBinaryArrayBuilderMethod "appendNull" o = BinaryArrayBuilderAppendNullMethodInfo
    ResolveBinaryArrayBuilderMethod "appendValue" o = BinaryArrayBuilderAppendValueMethodInfo
    ResolveBinaryArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBinaryArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBinaryArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveBinaryArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBinaryArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBinaryArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBinaryArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBinaryArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBinaryArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBinaryArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBinaryArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBinaryArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBinaryArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBinaryArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBinaryArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBinaryArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBinaryArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBinaryArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBinaryArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBinaryArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBinaryArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveBinaryArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveBinaryArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBinaryArrayBuilderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveBinaryArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBinaryArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBinaryArrayBuilderMethod t BinaryArrayBuilder, O.MethodInfo info BinaryArrayBuilder p) => OL.IsLabel t (BinaryArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList BinaryArrayBuilder
type instance O.AttributeList BinaryArrayBuilder = BinaryArrayBuilderAttributeList
type BinaryArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList BinaryArrayBuilder = BinaryArrayBuilderSignalList
type BinaryArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method BinaryArrayBuilder::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Arrow" , name = "BinaryArrayBuilder" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_binary_array_builder_new" garrow_binary_array_builder_new :: 
    IO (Ptr BinaryArrayBuilder)

-- | /No description available in the introspection data./
binaryArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m BinaryArrayBuilder
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.BinaryArrayBuilder.BinaryArrayBuilder'.
binaryArrayBuilderNew  = liftIO $ do
    result <- garrow_binary_array_builder_new
    checkUnexpectedReturnNULL "binaryArrayBuilderNew" result
    result' <- (wrapObject BinaryArrayBuilder) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method BinaryArrayBuilder::append
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "BinaryArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowBinaryArrayBuilder."
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
--           , argType = TCArray False (-1) 2 (TBasicType TUInt8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A binary value." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "length"
--           , argType = TBasicType TInt32
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A value length." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "length"
--              , argType = TBasicType TInt32
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "A value length." , sinceVersion = Nothing }
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

foreign import ccall "garrow_binary_array_builder_append" garrow_binary_array_builder_append :: 
    Ptr BinaryArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "BinaryArrayBuilder"})
    Ptr Word8 ->                            -- value : TCArray False (-1) 2 (TBasicType TUInt8)
    Int32 ->                                -- length : TBasicType TInt32
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{-# DEPRECATED binaryArrayBuilderAppend ["(Since version 0.12.0)","","  Use 'GI.Arrow.Objects.BinaryArrayBuilder.binaryArrayBuilderAppendValue' instead."] #-}
-- | /No description available in the introspection data./
binaryArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsBinaryArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.BinaryArrayBuilder.BinaryArrayBuilder'.
    -> ByteString
    -- ^ /@value@/: A binary value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
binaryArrayBuilderAppend builder value = liftIO $ do
    let length_ = fromIntegral $ B.length value
    builder' <- unsafeManagedPtrCastPtr builder
    value' <- packByteString value
    onException (do
        _ <- propagateGError $ garrow_binary_array_builder_append builder' value' length_
        touchManagedPtr builder
        freeMem value'
        return ()
     ) (do
        freeMem value'
     )

#if defined(ENABLE_OVERLOADING)
data BinaryArrayBuilderAppendMethodInfo
instance (signature ~ (ByteString -> m ()), MonadIO m, IsBinaryArrayBuilder a) => O.MethodInfo BinaryArrayBuilderAppendMethodInfo a signature where
    overloadedMethod = binaryArrayBuilderAppend

#endif

-- method BinaryArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "BinaryArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowBinaryArrayBuilder."
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

foreign import ccall "garrow_binary_array_builder_append_null" garrow_binary_array_builder_append_null :: 
    Ptr BinaryArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "BinaryArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
binaryArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsBinaryArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.BinaryArrayBuilder.BinaryArrayBuilder'.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
binaryArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_binary_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data BinaryArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsBinaryArrayBuilder a) => O.MethodInfo BinaryArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod = binaryArrayBuilderAppendNull

#endif

-- method BinaryArrayBuilder::append_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "BinaryArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowBinaryArrayBuilder."
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
--           , argType = TCArray False (-1) 2 (TBasicType TUInt8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A binary value." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "length"
--           , argType = TBasicType TInt32
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A value length." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "length"
--              , argType = TBasicType TInt32
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "A value length." , sinceVersion = Nothing }
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

foreign import ccall "garrow_binary_array_builder_append_value" garrow_binary_array_builder_append_value :: 
    Ptr BinaryArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "BinaryArrayBuilder"})
    Ptr Word8 ->                            -- value : TCArray False (-1) 2 (TBasicType TUInt8)
    Int32 ->                                -- length : TBasicType TInt32
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
binaryArrayBuilderAppendValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsBinaryArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.BinaryArrayBuilder.BinaryArrayBuilder'.
    -> ByteString
    -- ^ /@value@/: A binary value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
binaryArrayBuilderAppendValue builder value = liftIO $ do
    let length_ = fromIntegral $ B.length value
    builder' <- unsafeManagedPtrCastPtr builder
    value' <- packByteString value
    onException (do
        _ <- propagateGError $ garrow_binary_array_builder_append_value builder' value' length_
        touchManagedPtr builder
        freeMem value'
        return ()
     ) (do
        freeMem value'
     )

#if defined(ENABLE_OVERLOADING)
data BinaryArrayBuilderAppendValueMethodInfo
instance (signature ~ (ByteString -> m ()), MonadIO m, IsBinaryArrayBuilder a) => O.MethodInfo BinaryArrayBuilderAppendValueMethodInfo a signature where
    overloadedMethod = binaryArrayBuilderAppendValue

#endif


