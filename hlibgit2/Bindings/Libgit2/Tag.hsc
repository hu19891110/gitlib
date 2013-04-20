{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include <git2.h>
module Bindings.Libgit2.Tag where
import Foreign.Ptr
#strict_import

import Bindings.Libgit2.Common
import Bindings.Libgit2.Types
import Bindings.Libgit2.Oid
import Bindings.Libgit2.Object
import Bindings.Libgit2.Strarray
#cinline git_tag_lookup , Ptr (Ptr <git_tag>) -> Ptr <git_repository> -> Ptr <git_oid> -> IO (CInt)
#cinline git_tag_lookup_prefix , Ptr (Ptr <git_tag>) -> Ptr <git_repository> -> Ptr <git_oid> -> CSize -> IO (CInt)
#cinline git_tag_free , Ptr <git_tag> -> IO ()
#ccall git_tag_id , Ptr <git_tag> -> IO (Ptr <git_oid>)
#ccall git_tag_target , Ptr (Ptr <git_object>) -> Ptr <git_tag> -> IO (CInt)
#ccall git_tag_target_id , Ptr <git_tag> -> IO (Ptr <git_oid>)
#ccall git_tag_target_type , Ptr <git_tag> -> IO (<git_otype>)
#ccall git_tag_name , Ptr <git_tag> -> IO (CString)
#ccall git_tag_tagger , Ptr <git_tag> -> IO (Ptr <git_signature>)
#ccall git_tag_message , Ptr <git_tag> -> IO (CString)
#ccall git_tag_create , Ptr <git_oid> -> Ptr <git_repository> -> CString -> Ptr <git_object> -> Ptr <git_signature> -> CString -> CInt -> IO (CInt)
#ccall git_tag_create_frombuffer , Ptr <git_oid> -> Ptr <git_repository> -> CString -> CInt -> IO (CInt)
#ccall git_tag_create_lightweight , Ptr <git_oid> -> Ptr <git_repository> -> CString -> Ptr <git_object> -> CInt -> IO (CInt)
#ccall git_tag_delete , Ptr <git_repository> -> CString -> IO (CInt)
#ccall git_tag_list , Ptr <git_strarray> -> Ptr <git_repository> -> IO (CInt)
#ccall git_tag_list_match , Ptr <git_strarray> -> CString -> Ptr <git_repository> -> IO (CInt)
{- typedef int (* git_tag_foreach_cb)(const char * name,
                                   git_oid * oid,
                                   void * payload); -}
#callback git_tag_foreach_cb , CString -> Ptr (<git_oid>) -> Ptr () -> IO CInt
#ccall git_tag_foreach , Ptr <git_repository> -> <git_tag_foreach_cb> -> Ptr () -> IO (CInt)
#ccall git_tag_peel , Ptr (Ptr <git_object>) -> Ptr <git_tag> -> IO (CInt)
