{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.FeatherFileReader
    ( 

-- * Exported types
    FeatherFileReader(..)                   ,
    IsFeatherFileReader                     ,
    toFeatherFileReader                     ,
    noFeatherFileReader                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFeatherFileReaderMethod          ,
#endif


-- ** getColumn #method:getColumn#

#if defined(ENABLE_OVERLOADING)
    FeatherFileReaderGetColumnMethodInfo    ,
#endif
    featherFileReaderGetColumn              ,


-- ** getColumnName #method:getColumnName#

#if defined(ENABLE_OVERLOADING)
    FeatherFileReaderGetColumnNameMethodInfo,
#endif
    featherFileReaderGetColumnName          ,


-- ** getColumns #method:getColumns#

#if defined(ENABLE_OVERLOADING)
    FeatherFileReaderGetColumnsMethodInfo   ,
#endif
    featherFileReaderGetColumns             ,


-- ** getDescription #method:getDescription#

#if defined(ENABLE_OVERLOADING)
    FeatherFileReaderGetDescriptionMethodInfo,
#endif
    featherFileReaderGetDescription         ,


-- ** getNColumns #method:getNColumns#

#if defined(ENABLE_OVERLOADING)
    FeatherFileReaderGetNColumnsMethodInfo  ,
#endif
    featherFileReaderGetNColumns            ,


-- ** getNRows #method:getNRows#

#if defined(ENABLE_OVERLOADING)
    FeatherFileReaderGetNRowsMethodInfo     ,
#endif
    featherFileReaderGetNRows               ,


-- ** getVersion #method:getVersion#

#if defined(ENABLE_OVERLOADING)
    FeatherFileReaderGetVersionMethodInfo   ,
#endif
    featherFileReaderGetVersion             ,


-- ** hasDescription #method:hasDescription#

#if defined(ENABLE_OVERLOADING)
    FeatherFileReaderHasDescriptionMethodInfo,
#endif
    featherFileReaderHasDescription         ,


-- ** new #method:new#

    featherFileReaderNew                    ,


-- ** read #method:read#

#if defined(ENABLE_OVERLOADING)
    FeatherFileReaderReadMethodInfo         ,
#endif
    featherFileReaderRead                   ,


-- ** readIndices #method:readIndices#

#if defined(ENABLE_OVERLOADING)
    FeatherFileReaderReadIndicesMethodInfo  ,
#endif
    featherFileReaderReadIndices            ,


-- ** readNames #method:readNames#

#if defined(ENABLE_OVERLOADING)
    FeatherFileReaderReadNamesMethodInfo    ,
#endif
    featherFileReaderReadNames              ,




 -- * Properties
-- ** featherTableReader #attr:featherTableReader#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    FeatherFileReaderFeatherTableReaderPropertyInfo,
#endif
    constructFeatherFileReaderFeatherTableReader,
#if defined(ENABLE_OVERLOADING)
    featherFileReaderFeatherTableReader     ,
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

import {-# SOURCE #-} qualified GI.Arrow.Objects.Column as Arrow.Column
import {-# SOURCE #-} qualified GI.Arrow.Objects.SeekableInputStream as Arrow.SeekableInputStream
import {-# SOURCE #-} qualified GI.Arrow.Objects.Table as Arrow.Table
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype FeatherFileReader = FeatherFileReader (ManagedPtr FeatherFileReader)
    deriving (Eq)
foreign import ccall "garrow_feather_file_reader_get_type"
    c_garrow_feather_file_reader_get_type :: IO GType

instance GObject FeatherFileReader where
    gobjectType = c_garrow_feather_file_reader_get_type
    

-- | Convert 'FeatherFileReader' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue FeatherFileReader where
    toGValue o = do
        gtype <- c_garrow_feather_file_reader_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr FeatherFileReader)
        B.ManagedPtr.newObject FeatherFileReader ptr
        
    

-- | Type class for types which can be safely cast to `FeatherFileReader`, for instance with `toFeatherFileReader`.
class (GObject o, O.IsDescendantOf FeatherFileReader o) => IsFeatherFileReader o
instance (GObject o, O.IsDescendantOf FeatherFileReader o) => IsFeatherFileReader o

instance O.HasParentTypes FeatherFileReader
type instance O.ParentTypes FeatherFileReader = '[GObject.Object.Object]

-- | Cast to `FeatherFileReader`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFeatherFileReader :: (MonadIO m, IsFeatherFileReader o) => o -> m FeatherFileReader
toFeatherFileReader = liftIO . unsafeCastTo FeatherFileReader

-- | A convenience alias for `Nothing` :: `Maybe` `FeatherFileReader`.
noFeatherFileReader :: Maybe FeatherFileReader
noFeatherFileReader = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveFeatherFileReaderMethod (t :: Symbol) (o :: *) :: * where
    ResolveFeatherFileReaderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFeatherFileReaderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFeatherFileReaderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFeatherFileReaderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFeatherFileReaderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFeatherFileReaderMethod "hasDescription" o = FeatherFileReaderHasDescriptionMethodInfo
    ResolveFeatherFileReaderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFeatherFileReaderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFeatherFileReaderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFeatherFileReaderMethod "read" o = FeatherFileReaderReadMethodInfo
    ResolveFeatherFileReaderMethod "readIndices" o = FeatherFileReaderReadIndicesMethodInfo
    ResolveFeatherFileReaderMethod "readNames" o = FeatherFileReaderReadNamesMethodInfo
    ResolveFeatherFileReaderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFeatherFileReaderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFeatherFileReaderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFeatherFileReaderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFeatherFileReaderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFeatherFileReaderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFeatherFileReaderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFeatherFileReaderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFeatherFileReaderMethod "getColumn" o = FeatherFileReaderGetColumnMethodInfo
    ResolveFeatherFileReaderMethod "getColumnName" o = FeatherFileReaderGetColumnNameMethodInfo
    ResolveFeatherFileReaderMethod "getColumns" o = FeatherFileReaderGetColumnsMethodInfo
    ResolveFeatherFileReaderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFeatherFileReaderMethod "getDescription" o = FeatherFileReaderGetDescriptionMethodInfo
    ResolveFeatherFileReaderMethod "getNColumns" o = FeatherFileReaderGetNColumnsMethodInfo
    ResolveFeatherFileReaderMethod "getNRows" o = FeatherFileReaderGetNRowsMethodInfo
    ResolveFeatherFileReaderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFeatherFileReaderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFeatherFileReaderMethod "getVersion" o = FeatherFileReaderGetVersionMethodInfo
    ResolveFeatherFileReaderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFeatherFileReaderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFeatherFileReaderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFeatherFileReaderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFeatherFileReaderMethod t FeatherFileReader, O.MethodInfo info FeatherFileReader p) => OL.IsLabel t (FeatherFileReader -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "feather-table-reader"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@feather-table-reader@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructFeatherFileReaderFeatherTableReader :: (IsFeatherFileReader o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructFeatherFileReaderFeatherTableReader val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "feather-table-reader" val

#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderFeatherTableReaderPropertyInfo
instance AttrInfo FeatherFileReaderFeatherTableReaderPropertyInfo where
    type AttrAllowedOps FeatherFileReaderFeatherTableReaderPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint FeatherFileReaderFeatherTableReaderPropertyInfo = IsFeatherFileReader
    type AttrSetTypeConstraint FeatherFileReaderFeatherTableReaderPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint FeatherFileReaderFeatherTableReaderPropertyInfo = (~) (Ptr ())
    type AttrTransferType FeatherFileReaderFeatherTableReaderPropertyInfo = Ptr ()
    type AttrGetType FeatherFileReaderFeatherTableReaderPropertyInfo = ()
    type AttrLabel FeatherFileReaderFeatherTableReaderPropertyInfo = "feather-table-reader"
    type AttrOrigin FeatherFileReaderFeatherTableReaderPropertyInfo = FeatherFileReader
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructFeatherFileReaderFeatherTableReader
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList FeatherFileReader
type instance O.AttributeList FeatherFileReader = FeatherFileReaderAttributeList
type FeatherFileReaderAttributeList = ('[ '("featherTableReader", FeatherFileReaderFeatherTableReaderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
featherFileReaderFeatherTableReader :: AttrLabelProxy "featherTableReader"
featherFileReaderFeatherTableReader = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList FeatherFileReader = FeatherFileReaderSignalList
type FeatherFileReaderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method FeatherFileReader::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "file"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "SeekableInputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The file to be read."
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
--                  Name { namespace = "Arrow" , name = "FeatherFileReader" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_new" garrow_feather_file_reader_new :: 
    Ptr Arrow.SeekableInputStream.SeekableInputStream -> -- file : TInterface (Name {namespace = "Arrow", name = "SeekableInputStream"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr FeatherFileReader)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileReaderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.SeekableInputStream.IsSeekableInputStream a) =>
    a
    -- ^ /@file@/: The file to be read.
    -> m (Maybe FeatherFileReader)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'
    --   or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
featherFileReaderNew file = liftIO $ do
    file' <- unsafeManagedPtrCastPtr file
    onException (do
        result <- propagateGError $ garrow_feather_file_reader_new file'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject FeatherFileReader) result'
            return result''
        touchManagedPtr file
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method FeatherFileReader::get_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileReader."
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
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the target column."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Column" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_column" garrow_feather_file_reader_get_column :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    Int32 ->                                -- i : TBasicType TInt
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Column.Column)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileReaderGetColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'.
    -> Int32
    -- ^ /@i@/: The index of the target column.
    -> m (Maybe Arrow.Column.Column)
    -- ^ __Returns:__ 
    --   The i-th column in the file or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
featherFileReaderGetColumn reader i = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    onException (do
        result <- propagateGError $ garrow_feather_file_reader_get_column reader' i
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.Column.Column) result'
            return result''
        touchManagedPtr reader
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetColumnMethodInfo
instance (signature ~ (Int32 -> m (Maybe Arrow.Column.Column)), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetColumnMethodInfo a signature where
    overloadedMethod = featherFileReaderGetColumn

#endif

-- method FeatherFileReader::get_column_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileReader."
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
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the target column."
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
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_column_name" garrow_feather_file_reader_get_column_name :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    Int32 ->                                -- i : TBasicType TInt
    IO CString

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileReaderGetColumnName ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'.
    -> Int32
    -- ^ /@i@/: The index of the target column.
    -> m T.Text
    -- ^ __Returns:__ The i-th column name in the file.
    -- 
    --   It should be freed with 'GI.GLib.Functions.free' when no longer needed.
featherFileReaderGetColumnName reader i = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_feather_file_reader_get_column_name reader' i
    checkUnexpectedReturnNULL "featherFileReaderGetColumnName" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr reader
    return result'

#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetColumnNameMethodInfo
instance (signature ~ (Int32 -> m T.Text), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetColumnNameMethodInfo a signature where
    overloadedMethod = featherFileReaderGetColumnName

#endif

-- method FeatherFileReader::get_columns
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileReader."
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
--               (TGList
--                  (TInterface Name { namespace = "Arrow" , name = "Column" }))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_columns" garrow_feather_file_reader_get_columns :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr (GList (Ptr Arrow.Column.Column)))

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileReaderGetColumns ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'.
    -> m [Arrow.Column.Column]
    -- ^ __Returns:__ 
    --   The columns in the file. /(Can throw 'Data.GI.Base.GError.GError')/
featherFileReaderGetColumns reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    onException (do
        result <- propagateGError $ garrow_feather_file_reader_get_columns reader'
        result' <- unpackGList result
        result'' <- mapM (wrapObject Arrow.Column.Column) result'
        g_list_free result
        touchManagedPtr reader
        return result''
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetColumnsMethodInfo
instance (signature ~ (m [Arrow.Column.Column]), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetColumnsMethodInfo a signature where
    overloadedMethod = featherFileReaderGetColumns

#endif

-- method FeatherFileReader::get_description
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileReader."
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
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_description" garrow_feather_file_reader_get_description :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    IO CString

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileReaderGetDescription ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'.
    -> m (Maybe T.Text)
    -- ^ __Returns:__ 
    --   The description of the file if it exists,
    --   'P.Nothing' otherwise. You can confirm whether description exists or not by
    --   'GI.Arrow.Objects.FeatherFileReader.featherFileReaderHasDescription'.
    -- 
    --   It should be freed with 'GI.GLib.Functions.free' when no longer needed.
featherFileReaderGetDescription reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_feather_file_reader_get_description reader'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        freeMem result'
        return result''
    touchManagedPtr reader
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetDescriptionMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetDescriptionMethodInfo a signature where
    overloadedMethod = featherFileReaderGetDescription

#endif

-- method FeatherFileReader::get_n_columns
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileReader."
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
-- returnType: Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_n_columns" garrow_feather_file_reader_get_n_columns :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    IO Int64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileReaderGetNColumns ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'.
    -> m Int64
    -- ^ __Returns:__ The number of columns in the file.
featherFileReaderGetNColumns reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_feather_file_reader_get_n_columns reader'
    touchManagedPtr reader
    return result

#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetNColumnsMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetNColumnsMethodInfo a signature where
    overloadedMethod = featherFileReaderGetNColumns

#endif

-- method FeatherFileReader::get_n_rows
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileReader."
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
-- returnType: Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_n_rows" garrow_feather_file_reader_get_n_rows :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    IO Int64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileReaderGetNRows ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'.
    -> m Int64
    -- ^ __Returns:__ The number of rows in the file.
featherFileReaderGetNRows reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_feather_file_reader_get_n_rows reader'
    touchManagedPtr reader
    return result

#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetNRowsMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetNRowsMethodInfo a signature where
    overloadedMethod = featherFileReaderGetNRows

#endif

-- method FeatherFileReader::get_version
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileReader."
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_version" garrow_feather_file_reader_get_version :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    IO Int32

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileReaderGetVersion ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'.
    -> m Int32
    -- ^ __Returns:__ The format version of the file.
featherFileReaderGetVersion reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_feather_file_reader_get_version reader'
    touchManagedPtr reader
    return result

#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetVersionMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetVersionMethodInfo a signature where
    overloadedMethod = featherFileReaderGetVersion

#endif

-- method FeatherFileReader::has_description
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileReader."
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

foreign import ccall "garrow_feather_file_reader_has_description" garrow_feather_file_reader_has_description :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
featherFileReaderHasDescription ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'.
    -> m Bool
    -- ^ __Returns:__ Whether the file has description or not.
featherFileReaderHasDescription reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_feather_file_reader_has_description reader'
    let result' = (/= 0) result
    touchManagedPtr reader
    return result'

#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderHasDescriptionMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderHasDescriptionMethodInfo a signature where
    overloadedMethod = featherFileReaderHasDescription

#endif

-- method FeatherFileReader::read
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileReader."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Table" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_read" garrow_feather_file_reader_read :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Table.Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
featherFileReaderRead ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'.
    -> m Arrow.Table.Table
    -- ^ __Returns:__ The table in the file that has all columns. /(Can throw 'Data.GI.Base.GError.GError')/
featherFileReaderRead reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    onException (do
        result <- propagateGError $ garrow_feather_file_reader_read reader'
        checkUnexpectedReturnNULL "featherFileReaderRead" result
        result' <- (wrapObject Arrow.Table.Table) result
        touchManagedPtr reader
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderReadMethodInfo
instance (signature ~ (m Arrow.Table.Table), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderReadMethodInfo a signature where
    overloadedMethod = featherFileReaderRead

#endif

-- method FeatherFileReader::read_indices
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileReader."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "indices"
--           , argType = TCArray False (-1) 2 (TBasicType TInt)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The indices of column to be read."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_indices"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of indices."
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
--              { argCName = "n_indices"
--              , argType = TBasicType TUInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The number of indices."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Table" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_read_indices" garrow_feather_file_reader_read_indices :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    Ptr Int32 ->                            -- indices : TCArray False (-1) 2 (TBasicType TInt)
    Word32 ->                               -- n_indices : TBasicType TUInt
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Table.Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
featherFileReaderReadIndices ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'.
    -> [Int32]
    -- ^ /@indices@/: The indices of column to be read.
    -> m Arrow.Table.Table
    -- ^ __Returns:__ The table in the file that has only the
    --   specified columns. /(Can throw 'Data.GI.Base.GError.GError')/
featherFileReaderReadIndices reader indices = liftIO $ do
    let nIndices = fromIntegral $ length indices
    reader' <- unsafeManagedPtrCastPtr reader
    indices' <- packStorableArray indices
    onException (do
        result <- propagateGError $ garrow_feather_file_reader_read_indices reader' indices' nIndices
        checkUnexpectedReturnNULL "featherFileReaderReadIndices" result
        result' <- (wrapObject Arrow.Table.Table) result
        touchManagedPtr reader
        freeMem indices'
        return result'
     ) (do
        freeMem indices'
     )

#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderReadIndicesMethodInfo
instance (signature ~ ([Int32] -> m Arrow.Table.Table), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderReadIndicesMethodInfo a signature where
    overloadedMethod = featherFileReaderReadIndices

#endif

-- method FeatherFileReader::read_names
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "FeatherFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFeatherFileReader."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "names"
--           , argType = TCArray False (-1) 2 (TBasicType TUTF8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The names of column to be read."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_names"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of names."
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
--              { argCName = "n_names"
--              , argType = TBasicType TUInt
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The number of names."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Table" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_read_names" garrow_feather_file_reader_read_names :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    Ptr CString ->                          -- names : TCArray False (-1) 2 (TBasicType TUTF8)
    Word32 ->                               -- n_names : TBasicType TUInt
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Table.Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
featherFileReaderReadNames ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'.
    -> [T.Text]
    -- ^ /@names@/: The names of column to be read.
    -> m Arrow.Table.Table
    -- ^ __Returns:__ The table in the file that has only the
    --   specified columns. /(Can throw 'Data.GI.Base.GError.GError')/
featherFileReaderReadNames reader names = liftIO $ do
    let nNames = fromIntegral $ length names
    reader' <- unsafeManagedPtrCastPtr reader
    names' <- packUTF8CArray names
    onException (do
        result <- propagateGError $ garrow_feather_file_reader_read_names reader' names' nNames
        checkUnexpectedReturnNULL "featherFileReaderReadNames" result
        result' <- (wrapObject Arrow.Table.Table) result
        touchManagedPtr reader
        (mapCArrayWithLength nNames) freeMem names'
        freeMem names'
        return result'
     ) (do
        (mapCArrayWithLength nNames) freeMem names'
        freeMem names'
     )

#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderReadNamesMethodInfo
instance (signature ~ ([T.Text] -> m Arrow.Table.Table), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderReadNamesMethodInfo a signature where
    overloadedMethod = featherFileReaderReadNames

#endif


