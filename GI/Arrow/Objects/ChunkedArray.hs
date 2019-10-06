{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.ChunkedArray
    ( 

-- * Exported types
    ChunkedArray(..)                        ,
    IsChunkedArray                          ,
    toChunkedArray                          ,
    noChunkedArray                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveChunkedArrayMethod               ,
#endif


-- ** equal #method:equal#

#if defined(ENABLE_OVERLOADING)
    ChunkedArrayEqualMethodInfo             ,
#endif
    chunkedArrayEqual                       ,


-- ** getChunk #method:getChunk#

#if defined(ENABLE_OVERLOADING)
    ChunkedArrayGetChunkMethodInfo          ,
#endif
    chunkedArrayGetChunk                    ,


-- ** getChunks #method:getChunks#

#if defined(ENABLE_OVERLOADING)
    ChunkedArrayGetChunksMethodInfo         ,
#endif
    chunkedArrayGetChunks                   ,


-- ** getLength #method:getLength#

#if defined(ENABLE_OVERLOADING)
    ChunkedArrayGetLengthMethodInfo         ,
#endif
    chunkedArrayGetLength                   ,


-- ** getNChunks #method:getNChunks#

#if defined(ENABLE_OVERLOADING)
    ChunkedArrayGetNChunksMethodInfo        ,
#endif
    chunkedArrayGetNChunks                  ,


-- ** getNNulls #method:getNNulls#

#if defined(ENABLE_OVERLOADING)
    ChunkedArrayGetNNullsMethodInfo         ,
#endif
    chunkedArrayGetNNulls                   ,


-- ** getValueDataType #method:getValueDataType#

#if defined(ENABLE_OVERLOADING)
    ChunkedArrayGetValueDataTypeMethodInfo  ,
#endif
    chunkedArrayGetValueDataType            ,


-- ** getValueType #method:getValueType#

#if defined(ENABLE_OVERLOADING)
    ChunkedArrayGetValueTypeMethodInfo      ,
#endif
    chunkedArrayGetValueType                ,


-- ** new #method:new#

    chunkedArrayNew                         ,


-- ** slice #method:slice#

#if defined(ENABLE_OVERLOADING)
    ChunkedArraySliceMethodInfo             ,
#endif
    chunkedArraySlice                       ,


-- ** toString #method:toString#

#if defined(ENABLE_OVERLOADING)
    ChunkedArrayToStringMethodInfo          ,
#endif
    chunkedArrayToString                    ,




 -- * Properties
-- ** chunkedArray #attr:chunkedArray#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ChunkedArrayChunkedArrayPropertyInfo    ,
#endif
#if defined(ENABLE_OVERLOADING)
    chunkedArrayChunkedArray                ,
#endif
    constructChunkedArrayChunkedArray       ,




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

import {-# SOURCE #-} qualified GI.Arrow.Enums as Arrow.Enums
import {-# SOURCE #-} qualified GI.Arrow.Objects.Array as Arrow.Array
import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype ChunkedArray = ChunkedArray (ManagedPtr ChunkedArray)
    deriving (Eq)
foreign import ccall "garrow_chunked_array_get_type"
    c_garrow_chunked_array_get_type :: IO GType

instance GObject ChunkedArray where
    gobjectType = c_garrow_chunked_array_get_type
    

-- | Convert 'ChunkedArray' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ChunkedArray where
    toGValue o = do
        gtype <- c_garrow_chunked_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ChunkedArray)
        B.ManagedPtr.newObject ChunkedArray ptr
        
    

-- | Type class for types which can be safely cast to `ChunkedArray`, for instance with `toChunkedArray`.
class (GObject o, O.IsDescendantOf ChunkedArray o) => IsChunkedArray o
instance (GObject o, O.IsDescendantOf ChunkedArray o) => IsChunkedArray o

instance O.HasParentTypes ChunkedArray
type instance O.ParentTypes ChunkedArray = '[GObject.Object.Object]

-- | Cast to `ChunkedArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toChunkedArray :: (MonadIO m, IsChunkedArray o) => o -> m ChunkedArray
toChunkedArray = liftIO . unsafeCastTo ChunkedArray

-- | A convenience alias for `Nothing` :: `Maybe` `ChunkedArray`.
noChunkedArray :: Maybe ChunkedArray
noChunkedArray = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveChunkedArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveChunkedArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveChunkedArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveChunkedArrayMethod "equal" o = ChunkedArrayEqualMethodInfo
    ResolveChunkedArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveChunkedArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveChunkedArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveChunkedArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveChunkedArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveChunkedArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveChunkedArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveChunkedArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveChunkedArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveChunkedArrayMethod "slice" o = ChunkedArraySliceMethodInfo
    ResolveChunkedArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveChunkedArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveChunkedArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveChunkedArrayMethod "toString" o = ChunkedArrayToStringMethodInfo
    ResolveChunkedArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveChunkedArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveChunkedArrayMethod "getChunk" o = ChunkedArrayGetChunkMethodInfo
    ResolveChunkedArrayMethod "getChunks" o = ChunkedArrayGetChunksMethodInfo
    ResolveChunkedArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveChunkedArrayMethod "getLength" o = ChunkedArrayGetLengthMethodInfo
    ResolveChunkedArrayMethod "getNChunks" o = ChunkedArrayGetNChunksMethodInfo
    ResolveChunkedArrayMethod "getNNulls" o = ChunkedArrayGetNNullsMethodInfo
    ResolveChunkedArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveChunkedArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveChunkedArrayMethod "getValueDataType" o = ChunkedArrayGetValueDataTypeMethodInfo
    ResolveChunkedArrayMethod "getValueType" o = ChunkedArrayGetValueTypeMethodInfo
    ResolveChunkedArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveChunkedArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveChunkedArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveChunkedArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveChunkedArrayMethod t ChunkedArray, O.MethodInfo info ChunkedArray p) => OL.IsLabel t (ChunkedArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "chunked-array"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@chunked-array@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructChunkedArrayChunkedArray :: (IsChunkedArray o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructChunkedArrayChunkedArray val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "chunked-array" val

#if defined(ENABLE_OVERLOADING)
data ChunkedArrayChunkedArrayPropertyInfo
instance AttrInfo ChunkedArrayChunkedArrayPropertyInfo where
    type AttrAllowedOps ChunkedArrayChunkedArrayPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint ChunkedArrayChunkedArrayPropertyInfo = IsChunkedArray
    type AttrSetTypeConstraint ChunkedArrayChunkedArrayPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint ChunkedArrayChunkedArrayPropertyInfo = (~) (Ptr ())
    type AttrTransferType ChunkedArrayChunkedArrayPropertyInfo = Ptr ()
    type AttrGetType ChunkedArrayChunkedArrayPropertyInfo = ()
    type AttrLabel ChunkedArrayChunkedArrayPropertyInfo = "chunked-array"
    type AttrOrigin ChunkedArrayChunkedArrayPropertyInfo = ChunkedArray
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructChunkedArrayChunkedArray
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ChunkedArray
type instance O.AttributeList ChunkedArray = ChunkedArrayAttributeList
type ChunkedArrayAttributeList = ('[ '("chunkedArray", ChunkedArrayChunkedArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
chunkedArrayChunkedArray :: AttrLabelProxy "chunkedArray"
chunkedArrayChunkedArray = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ChunkedArray = ChunkedArraySignalList
type ChunkedArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method ChunkedArray::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "chunks"
--           , argType =
--               TGList (TInterface Name { namespace = "Arrow" , name = "Array" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The array chunks." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "ChunkedArray" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_chunked_array_new" garrow_chunked_array_new :: 
    Ptr (GList (Ptr Arrow.Array.Array)) ->  -- chunks : TGList (TInterface (Name {namespace = "Arrow", name = "Array"}))
    IO (Ptr ChunkedArray)

-- | /No description available in the introspection data./
chunkedArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Array.IsArray a) =>
    [a]
    -- ^ /@chunks@/: The array chunks.
    -> m ChunkedArray
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
chunkedArrayNew chunks = liftIO $ do
    chunks' <- mapM unsafeManagedPtrCastPtr chunks
    chunks'' <- packGList chunks'
    result <- garrow_chunked_array_new chunks''
    checkUnexpectedReturnNULL "chunkedArrayNew" result
    result' <- (wrapObject ChunkedArray) result
    mapM_ touchManagedPtr chunks
    g_list_free chunks''
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ChunkedArray::equal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chunked_array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ChunkedArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowChunkedArray."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_chunked_array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ChunkedArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowChunkedArray to be compared."
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

foreign import ccall "garrow_chunked_array_equal" garrow_chunked_array_equal :: 
    Ptr ChunkedArray ->                     -- chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    Ptr ChunkedArray ->                     -- other_chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
chunkedArrayEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsChunkedArray a, IsChunkedArray b) =>
    a
    -- ^ /@chunkedArray@/: A t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
    -> b
    -- ^ /@otherChunkedArray@/: A t'GI.Arrow.Objects.ChunkedArray.ChunkedArray' to be compared.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if both of them have the same data, 'P.False'
    --   otherwise.
chunkedArrayEqual chunkedArray otherChunkedArray = liftIO $ do
    chunkedArray' <- unsafeManagedPtrCastPtr chunkedArray
    otherChunkedArray' <- unsafeManagedPtrCastPtr otherChunkedArray
    result <- garrow_chunked_array_equal chunkedArray' otherChunkedArray'
    let result' = (/= 0) result
    touchManagedPtr chunkedArray
    touchManagedPtr otherChunkedArray
    return result'

#if defined(ENABLE_OVERLOADING)
data ChunkedArrayEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsChunkedArray a, IsChunkedArray b) => O.MethodInfo ChunkedArrayEqualMethodInfo a signature where
    overloadedMethod = chunkedArrayEqual

#endif

-- method ChunkedArray::get_chunk
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chunked_array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ChunkedArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowChunkedArray."
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
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the target chunk."
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

foreign import ccall "garrow_chunked_array_get_chunk" garrow_chunked_array_get_chunk :: 
    Ptr ChunkedArray ->                     -- chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    Word32 ->                               -- i : TBasicType TUInt
    IO (Ptr Arrow.Array.Array)

-- | /No description available in the introspection data./
chunkedArrayGetChunk ::
    (B.CallStack.HasCallStack, MonadIO m, IsChunkedArray a) =>
    a
    -- ^ /@chunkedArray@/: A t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
    -> Word32
    -- ^ /@i@/: The index of the target chunk.
    -> m Arrow.Array.Array
    -- ^ __Returns:__ The i-th chunk of the chunked array.
chunkedArrayGetChunk chunkedArray i = liftIO $ do
    chunkedArray' <- unsafeManagedPtrCastPtr chunkedArray
    result <- garrow_chunked_array_get_chunk chunkedArray' i
    checkUnexpectedReturnNULL "chunkedArrayGetChunk" result
    result' <- (wrapObject Arrow.Array.Array) result
    touchManagedPtr chunkedArray
    return result'

#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetChunkMethodInfo
instance (signature ~ (Word32 -> m Arrow.Array.Array), MonadIO m, IsChunkedArray a) => O.MethodInfo ChunkedArrayGetChunkMethodInfo a signature where
    overloadedMethod = chunkedArrayGetChunk

#endif

-- method ChunkedArray::get_chunks
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chunked_array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ChunkedArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowChunkedArray."
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
--               (TGList (TInterface Name { namespace = "Arrow" , name = "Array" }))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_chunked_array_get_chunks" garrow_chunked_array_get_chunks :: 
    Ptr ChunkedArray ->                     -- chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    IO (Ptr (GList (Ptr Arrow.Array.Array)))

-- | /No description available in the introspection data./
chunkedArrayGetChunks ::
    (B.CallStack.HasCallStack, MonadIO m, IsChunkedArray a) =>
    a
    -- ^ /@chunkedArray@/: A t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
    -> m [Arrow.Array.Array]
    -- ^ __Returns:__ 
    --   The chunks in the chunked array.
chunkedArrayGetChunks chunkedArray = liftIO $ do
    chunkedArray' <- unsafeManagedPtrCastPtr chunkedArray
    result <- garrow_chunked_array_get_chunks chunkedArray'
    result' <- unpackGList result
    result'' <- mapM (wrapObject Arrow.Array.Array) result'
    g_list_free result
    touchManagedPtr chunkedArray
    return result''

#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetChunksMethodInfo
instance (signature ~ (m [Arrow.Array.Array]), MonadIO m, IsChunkedArray a) => O.MethodInfo ChunkedArrayGetChunksMethodInfo a signature where
    overloadedMethod = chunkedArrayGetChunks

#endif

-- method ChunkedArray::get_length
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chunked_array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ChunkedArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowChunkedArray."
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
-- returnType: Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_chunked_array_get_length" garrow_chunked_array_get_length :: 
    Ptr ChunkedArray ->                     -- chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    IO Word64

-- | /No description available in the introspection data./
chunkedArrayGetLength ::
    (B.CallStack.HasCallStack, MonadIO m, IsChunkedArray a) =>
    a
    -- ^ /@chunkedArray@/: A t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
    -> m Word64
    -- ^ __Returns:__ The total number of rows in the chunked array.
chunkedArrayGetLength chunkedArray = liftIO $ do
    chunkedArray' <- unsafeManagedPtrCastPtr chunkedArray
    result <- garrow_chunked_array_get_length chunkedArray'
    touchManagedPtr chunkedArray
    return result

#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetLengthMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsChunkedArray a) => O.MethodInfo ChunkedArrayGetLengthMethodInfo a signature where
    overloadedMethod = chunkedArrayGetLength

#endif

-- method ChunkedArray::get_n_chunks
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chunked_array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ChunkedArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowChunkedArray."
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_chunked_array_get_n_chunks" garrow_chunked_array_get_n_chunks :: 
    Ptr ChunkedArray ->                     -- chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    IO Word32

-- | /No description available in the introspection data./
chunkedArrayGetNChunks ::
    (B.CallStack.HasCallStack, MonadIO m, IsChunkedArray a) =>
    a
    -- ^ /@chunkedArray@/: A t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
    -> m Word32
    -- ^ __Returns:__ The total number of chunks in the chunked array.
chunkedArrayGetNChunks chunkedArray = liftIO $ do
    chunkedArray' <- unsafeManagedPtrCastPtr chunkedArray
    result <- garrow_chunked_array_get_n_chunks chunkedArray'
    touchManagedPtr chunkedArray
    return result

#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetNChunksMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsChunkedArray a) => O.MethodInfo ChunkedArrayGetNChunksMethodInfo a signature where
    overloadedMethod = chunkedArrayGetNChunks

#endif

-- method ChunkedArray::get_n_nulls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chunked_array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ChunkedArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowChunkedArray."
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
-- returnType: Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_chunked_array_get_n_nulls" garrow_chunked_array_get_n_nulls :: 
    Ptr ChunkedArray ->                     -- chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    IO Word64

-- | /No description available in the introspection data./
chunkedArrayGetNNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsChunkedArray a) =>
    a
    -- ^ /@chunkedArray@/: A t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
    -> m Word64
    -- ^ __Returns:__ The total number of NULL in the chunked array.
chunkedArrayGetNNulls chunkedArray = liftIO $ do
    chunkedArray' <- unsafeManagedPtrCastPtr chunkedArray
    result <- garrow_chunked_array_get_n_nulls chunkedArray'
    touchManagedPtr chunkedArray
    return result

#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetNNullsMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsChunkedArray a) => O.MethodInfo ChunkedArrayGetNNullsMethodInfo a signature where
    overloadedMethod = chunkedArrayGetNNulls

#endif

-- method ChunkedArray::get_value_data_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chunked_array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ChunkedArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowChunkedArray."
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

foreign import ccall "garrow_chunked_array_get_value_data_type" garrow_chunked_array_get_value_data_type :: 
    Ptr ChunkedArray ->                     -- chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    IO (Ptr Arrow.DataType.DataType)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.9.0/
chunkedArrayGetValueDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsChunkedArray a) =>
    a
    -- ^ /@chunkedArray@/: A t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
    -> m Arrow.DataType.DataType
    -- ^ __Returns:__ The t'GI.Arrow.Objects.DataType.DataType' of the value of
    --   the chunked array.
chunkedArrayGetValueDataType chunkedArray = liftIO $ do
    chunkedArray' <- unsafeManagedPtrCastPtr chunkedArray
    result <- garrow_chunked_array_get_value_data_type chunkedArray'
    checkUnexpectedReturnNULL "chunkedArrayGetValueDataType" result
    result' <- (wrapObject Arrow.DataType.DataType) result
    touchManagedPtr chunkedArray
    return result'

#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetValueDataTypeMethodInfo
instance (signature ~ (m Arrow.DataType.DataType), MonadIO m, IsChunkedArray a) => O.MethodInfo ChunkedArrayGetValueDataTypeMethodInfo a signature where
    overloadedMethod = chunkedArrayGetValueDataType

#endif

-- method ChunkedArray::get_value_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chunked_array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ChunkedArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowChunkedArray."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Type" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_chunked_array_get_value_type" garrow_chunked_array_get_value_type :: 
    Ptr ChunkedArray ->                     -- chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    IO CUInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.9.0/
chunkedArrayGetValueType ::
    (B.CallStack.HasCallStack, MonadIO m, IsChunkedArray a) =>
    a
    -- ^ /@chunkedArray@/: A t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
    -> m Arrow.Enums.Type
    -- ^ __Returns:__ The t'GI.Arrow.Enums.Type' of the value of the chunked array.
chunkedArrayGetValueType chunkedArray = liftIO $ do
    chunkedArray' <- unsafeManagedPtrCastPtr chunkedArray
    result <- garrow_chunked_array_get_value_type chunkedArray'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr chunkedArray
    return result'

#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetValueTypeMethodInfo
instance (signature ~ (m Arrow.Enums.Type), MonadIO m, IsChunkedArray a) => O.MethodInfo ChunkedArrayGetValueTypeMethodInfo a signature where
    overloadedMethod = chunkedArrayGetValueType

#endif

-- method ChunkedArray::slice
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chunked_array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ChunkedArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowChunkedArray."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "offset"
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The offset of sub #GArrowChunkedArray."
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
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The length of sub #GArrowChunkedArray."
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
--               (TInterface Name { namespace = "Arrow" , name = "ChunkedArray" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_chunked_array_slice" garrow_chunked_array_slice :: 
    Ptr ChunkedArray ->                     -- chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    Word64 ->                               -- offset : TBasicType TUInt64
    Word64 ->                               -- length : TBasicType TUInt64
    IO (Ptr ChunkedArray)

-- | /No description available in the introspection data./
chunkedArraySlice ::
    (B.CallStack.HasCallStack, MonadIO m, IsChunkedArray a) =>
    a
    -- ^ /@chunkedArray@/: A t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
    -> Word64
    -- ^ /@offset@/: The offset of sub t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
    -> Word64
    -- ^ /@length@/: The length of sub t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
    -> m ChunkedArray
    -- ^ __Returns:__ The sub t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'. It covers only from
    --   @offset@ to @offset + length@ range. The sub t'GI.Arrow.Objects.ChunkedArray.ChunkedArray' shares
    --   values with the base t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
chunkedArraySlice chunkedArray offset length_ = liftIO $ do
    chunkedArray' <- unsafeManagedPtrCastPtr chunkedArray
    result <- garrow_chunked_array_slice chunkedArray' offset length_
    checkUnexpectedReturnNULL "chunkedArraySlice" result
    result' <- (wrapObject ChunkedArray) result
    touchManagedPtr chunkedArray
    return result'

#if defined(ENABLE_OVERLOADING)
data ChunkedArraySliceMethodInfo
instance (signature ~ (Word64 -> Word64 -> m ChunkedArray), MonadIO m, IsChunkedArray a) => O.MethodInfo ChunkedArraySliceMethodInfo a signature where
    overloadedMethod = chunkedArraySlice

#endif

-- method ChunkedArray::to_string
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "chunked_array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ChunkedArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowChunkedArray."
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
-- returnType: Just (TBasicType TUTF8)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_chunked_array_to_string" garrow_chunked_array_to_string :: 
    Ptr ChunkedArray ->                     -- chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    Ptr (Ptr GError) ->                     -- error
    IO CString

-- | /No description available in the introspection data./
-- 
-- /Since: 0.11.0/
chunkedArrayToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsChunkedArray a) =>
    a
    -- ^ /@chunkedArray@/: A t'GI.Arrow.Objects.ChunkedArray.ChunkedArray'.
    -> m (Maybe T.Text)
    -- ^ __Returns:__ 
    --   The formatted chunked array content or 'P.Nothing' on error.
    -- 
    --   The returned string should be freed when with 'GI.GLib.Functions.free' when no
    --   longer needed. /(Can throw 'Data.GI.Base.GError.GError')/
chunkedArrayToString chunkedArray = liftIO $ do
    chunkedArray' <- unsafeManagedPtrCastPtr chunkedArray
    onException (do
        result <- propagateGError $ garrow_chunked_array_to_string chunkedArray'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- cstringToText result'
            freeMem result'
            return result''
        touchManagedPtr chunkedArray
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data ChunkedArrayToStringMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsChunkedArray a) => O.MethodInfo ChunkedArrayToStringMethodInfo a signature where
    overloadedMethod = chunkedArrayToString

#endif


