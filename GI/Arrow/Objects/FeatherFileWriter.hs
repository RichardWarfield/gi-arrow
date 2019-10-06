{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.FeatherFileWriter
    ( 

-- * Exported types
    FeatherFileWriter(..)                   ,
    IsFeatherFileWriter                     ,
    toFeatherFileWriter                     ,
    noFeatherFileWriter                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFeatherFileWriterMethod          ,
#endif


-- ** append #method:append#

#if defined(ENABLE_OVERLOADING)
    FeatherFileWriterAppendMethodInfo       ,
#endif
    featherFileWriterAppend                 ,


-- ** close #method:close#

#if defined(ENABLE_OVERLOADING)
    FeatherFileWriterCloseMethodInfo        ,
#endif
    featherFileWriterClose                  ,


-- ** new #method:new#

    featherFileWriterNew                    ,


-- ** setDescription #method:setDescription#

#if defined(ENABLE_OVERLOADING)
    FeatherFileWriterSetDescriptionMethodInfo,
#endif
    featherFileWriterSetDescription         ,


-- ** setNRows #method:setNRows#

#if defined(ENABLE_OVERLOADING)
    FeatherFileWriterSetNRowsMethodInfo     ,
#endif
    featherFileWriterSetNRows               ,


-- ** write #method:write#

#if defined(ENABLE_OVERLOADING)
    FeatherFileWriterWriteMethodInfo        ,
#endif
    featherFileWriterWrite                  ,




 -- * Properties
-- ** featherTableWriter #attr:featherTableWriter#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    FeatherFileWriterFeatherTableWriterPropertyInfo,
#endif
    constructFeatherFileWriterFeatherTableWriter,
#if defined(ENABLE_OVERLOADING)
    featherFileWriterFeatherTableWriter     ,
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

import {-# SOURCE #-} qualified GI.Arrow.Objects.Array as Arrow.Array
import {-# SOURCE #-} qualified GI.Arrow.Objects.OutputStream as Arrow.OutputStream
import {-# SOURCE #-} qualified GI.Arrow.Objects.Table as Arrow.Table
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype FeatherFileWriter = FeatherFileWriter (ManagedPtr FeatherFileWriter)
    deriving (Eq)
foreign import ccall "garrow_feather_file_writer_get_type"
    c_garrow_feather_file_writer_get_type :: IO GType

instance GObject FeatherFileWriter where
    gobjectType = c_garrow_feather_file_writer_get_type
    

-- | Convert 'FeatherFileWriter' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FeatherFileWriter where
    toGValue o = do
        gtype <- c_garrow_feather_file_writer_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FeatherFileWriter)
        B.ManagedPtr.newObject FeatherFileWriter ptr
        
    

-- | Type class for types which can be safely cast to `FeatherFileWriter`, for instance with `toFeatherFileWriter`.
class (GObject o, O.IsDescendantOf FeatherFileWriter o) => IsFeatherFileWriter o
instance (GObject o, O.IsDescendantOf FeatherFileWriter o) => IsFeatherFileWriter o

instance O.HasParentTypes FeatherFileWriter
type instance O.ParentTypes FeatherFileWriter = '[GObject.Object.Object]

-- | Cast to `FeatherFileWriter`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFeatherFileWriter :: (MonadIO m, IsFeatherFileWriter o) => o -> m FeatherFileWriter
toFeatherFileWriter = liftIO . unsafeCastTo FeatherFileWriter

-- | A convenience alias for `Nothing` :: `Maybe` `FeatherFileWriter`.
noFeatherFileWriter :: Maybe FeatherFileWriter
noFeatherFileWriter = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFeatherFileWriterMethod (t :: Symbol) (o :: *) :: * where
    ResolveFeatherFileWriterMethod "append" o = FeatherFileWriterAppendMethodInfo
    ResolveFeatherFileWriterMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFeatherFileWriterMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFeatherFileWriterMethod "close" o = FeatherFileWriterCloseMethodInfo
    ResolveFeatherFileWriterMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFeatherFileWriterMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFeatherFileWriterMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFeatherFileWriterMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFeatherFileWriterMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFeatherFileWriterMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFeatherFileWriterMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFeatherFileWriterMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFeatherFileWriterMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFeatherFileWriterMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFeatherFileWriterMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFeatherFileWriterMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFeatherFileWriterMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFeatherFileWriterMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFeatherFileWriterMethod "write" o = FeatherFileWriterWriteMethodInfo
    ResolveFeatherFileWriterMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFeatherFileWriterMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFeatherFileWriterMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFeatherFileWriterMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFeatherFileWriterMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFeatherFileWriterMethod "setDescription" o = FeatherFileWriterSetDescriptionMethodInfo
    ResolveFeatherFileWriterMethod "setNRows" o = FeatherFileWriterSetNRowsMethodInfo
    ResolveFeatherFileWriterMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFeatherFileWriterMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFeatherFileWriterMethod t FeatherFileWriter, O.MethodInfo info FeatherFileWriter p) => OL.IsLabel t (FeatherFileWriter -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "feather-table-writer"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@feather-table-writer@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFeatherFileWriterFeatherTableWriter :: (IsFeatherFileWriter o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructFeatherFileWriterFeatherTableWriter val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "feather-table-writer" val

#if defined(ENABLE_OVERLOADING)
data FeatherFileWriterFeatherTableWriterPropertyInfo
instance AttrInfo FeatherFileWriterFeatherTableWriterPropertyInfo where
    type AttrAllowedOps FeatherFileWriterFeatherTableWriterPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint FeatherFileWriterFeatherTableWriterPropertyInfo = IsFeatherFileWriter
    type AttrSetTypeConstraint FeatherFileWriterFeatherTableWriterPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint FeatherFileWriterFeatherTableWriterPropertyInfo = (~) (Ptr ())
    type AttrTransferType FeatherFileWriterFeatherTableWriterPropertyInfo = Ptr ()
    type AttrGetType FeatherFileWriterFeatherTableWriterPropertyInfo = ()
    type AttrLabel FeatherFileWriterFeatherTableWriterPropertyInfo = "feather-table-writer"
    type AttrOrigin FeatherFileWriterFeatherTableWriterPropertyInfo = FeatherFileWriter
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructFeatherFileWriterFeatherTableWriter
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FeatherFileWriter
type instance O.AttributeList FeatherFileWriter = FeatherFileWriterAttributeList
type FeatherFileWriterAttributeList = ('[ '("featherTableWriter", FeatherFileWriterFeatherTableWriterPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
featherFileWriterFeatherTableWriter :: AttrLabelProxy "featherTableWriter"
featherFileWriterFeatherTableWriter = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FeatherFileWriter = FeatherFileWriterSignalList
type FeatherFileWriterSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method FeatherFileWriter::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "sink"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "OutputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The output of the writer."
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
--                  Name { namespace = "Arrow" , name = "FeatherFileWriter" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_writer_new" garrow_feather_file_writer_new :: 
    Ptr Arrow.OutputStream.OutputStream ->  -- sink : TInterface (Name {namespace = "Arrow", name = "OutputStream"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr FeatherFileWriter)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileWriterNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.OutputStream.IsOutputStream a) =>
    a
    -- ^ /@sink@/: The output of the writer.
    -> m (Maybe FeatherFileWriter)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.FeatherFileWriter.FeatherFileWriter'
    --   or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
featherFileWriterNew sink = liftIO $ do
    sink' <- unsafeManagedPtrCastPtr sink
    onException (do
        result <- propagateGError $ garrow_feather_file_writer_new sink'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject FeatherFileWriter) result'
            return result''
        touchManagedPtr sink
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method FeatherFileWriter::append
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "writer"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileWriter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileWriter."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The name of the array to be appended."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The array to be appended."
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

foreign import ccall "garrow_feather_file_writer_append" garrow_feather_file_writer_append :: 
    Ptr FeatherFileWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"})
    CString ->                              -- name : TBasicType TUTF8
    Ptr Arrow.Array.Array ->                -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileWriterAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileWriter a, Arrow.Array.IsArray b) =>
    a
    -- ^ /@writer@/: A t'GI.Arrow.Objects.FeatherFileWriter.FeatherFileWriter'.
    -> T.Text
    -- ^ /@name@/: The name of the array to be appended.
    -> b
    -- ^ /@array@/: The array to be appended.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
featherFileWriterAppend writer name array = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    name' <- textToCString name
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        _ <- propagateGError $ garrow_feather_file_writer_append writer' name' array'
        touchManagedPtr writer
        touchManagedPtr array
        freeMem name'
        return ()
     ) (do
        freeMem name'
     )

#if defined(ENABLE_OVERLOADING)
data FeatherFileWriterAppendMethodInfo
instance (signature ~ (T.Text -> b -> m ()), MonadIO m, IsFeatherFileWriter a, Arrow.Array.IsArray b) => O.MethodInfo FeatherFileWriterAppendMethodInfo a signature where
    overloadedMethod = featherFileWriterAppend

#endif

-- method FeatherFileWriter::close
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "writer"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileWriter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileWriter."
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

foreign import ccall "garrow_feather_file_writer_close" garrow_feather_file_writer_close :: 
    Ptr FeatherFileWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileWriterClose ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileWriter a) =>
    a
    -- ^ /@writer@/: A t'GI.Arrow.Objects.FeatherFileWriter.FeatherFileWriter'.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
featherFileWriterClose writer = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    onException (do
        _ <- propagateGError $ garrow_feather_file_writer_close writer'
        touchManagedPtr writer
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data FeatherFileWriterCloseMethodInfo
instance (signature ~ (m ()), MonadIO m, IsFeatherFileWriter a) => O.MethodInfo FeatherFileWriterCloseMethodInfo a signature where
    overloadedMethod = featherFileWriterClose

#endif

-- method FeatherFileWriter::set_description
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "writer"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileWriter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileWriter."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "description"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The description of the file."
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_writer_set_description" garrow_feather_file_writer_set_description :: 
    Ptr FeatherFileWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"})
    CString ->                              -- description : TBasicType TUTF8
    IO ()

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileWriterSetDescription ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileWriter a) =>
    a
    -- ^ /@writer@/: A t'GI.Arrow.Objects.FeatherFileWriter.FeatherFileWriter'.
    -> T.Text
    -- ^ /@description@/: The description of the file.
    -> m ()
featherFileWriterSetDescription writer description = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    description' <- textToCString description
    garrow_feather_file_writer_set_description writer' description'
    touchManagedPtr writer
    freeMem description'
    return ()

#if defined(ENABLE_OVERLOADING)
data FeatherFileWriterSetDescriptionMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsFeatherFileWriter a) => O.MethodInfo FeatherFileWriterSetDescriptionMethodInfo a signature where
    overloadedMethod = featherFileWriterSetDescription

#endif

-- method FeatherFileWriter::set_n_rows
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "writer"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileWriter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileWriter."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_rows"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of rows in the file."
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_writer_set_n_rows" garrow_feather_file_writer_set_n_rows :: 
    Ptr FeatherFileWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"})
    Int64 ->                                -- n_rows : TBasicType TInt64
    IO ()

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileWriterSetNRows ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileWriter a) =>
    a
    -- ^ /@writer@/: A t'GI.Arrow.Objects.FeatherFileWriter.FeatherFileWriter'.
    -> Int64
    -- ^ /@nRows@/: The number of rows in the file.
    -> m ()
featherFileWriterSetNRows writer nRows = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    garrow_feather_file_writer_set_n_rows writer' nRows
    touchManagedPtr writer
    return ()

#if defined(ENABLE_OVERLOADING)
data FeatherFileWriterSetNRowsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsFeatherFileWriter a) => O.MethodInfo FeatherFileWriterSetNRowsMethodInfo a signature where
    overloadedMethod = featherFileWriterSetNRows

#endif

-- method FeatherFileWriter::write
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "writer"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileWriter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation { rawDocText = Nothing , sinceVersion = Nothing }
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

foreign import ccall "garrow_feather_file_writer_write" garrow_feather_file_writer_write :: 
    Ptr FeatherFileWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"})
    Ptr Arrow.Table.Table ->                -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
featherFileWriterWrite ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileWriter a, Arrow.Table.IsTable b) =>
    a
    -> b
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
featherFileWriterWrite writer table = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    table' <- unsafeManagedPtrCastPtr table
    onException (do
        _ <- propagateGError $ garrow_feather_file_writer_write writer' table'
        touchManagedPtr writer
        touchManagedPtr table
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data FeatherFileWriterWriteMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsFeatherFileWriter a, Arrow.Table.IsTable b) => O.MethodInfo FeatherFileWriterWriteMethodInfo a signature where
    overloadedMethod = featherFileWriterWrite

#endif


