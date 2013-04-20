{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include <git2.h>
module Bindings.Libgit2.Oid where
import Foreign.Ptr
#strict_import

import Bindings.Libgit2.Common
import Bindings.Libgit2.Types
{- typedef struct git_oid {
            unsigned char id[20];
        } git_oid; -}
#starttype git_oid
#array_field id , CUChar
#stoptype
#ccall git_oid_fromstr , Ptr <git_oid> -> CString -> IO (CInt)
#ccall git_oid_fromstrp , Ptr <git_oid> -> CString -> IO (CInt)
#ccall git_oid_fromstrn , Ptr <git_oid> -> CString -> CSize -> IO (CInt)
#ccall git_oid_fromraw , Ptr <git_oid> -> Ptr CUChar -> IO ()
#ccall git_oid_fmt , CString -> Ptr <git_oid> -> IO ()
#ccall git_oid_pathfmt , CString -> Ptr <git_oid> -> IO ()
#ccall git_oid_allocfmt , Ptr <git_oid> -> IO (CString)
#ccall git_oid_tostr , CString -> CSize -> Ptr <git_oid> -> IO (CString)
#ccall git_oid_cpy , Ptr <git_oid> -> Ptr <git_oid> -> IO ()
#cinline git_oid_cmp , Ptr <git_oid> -> Ptr <git_oid> -> IO (CInt)
#cinline git_oid_equal , Ptr <git_oid> -> Ptr <git_oid> -> IO (CInt)
#ccall git_oid_ncmp , Ptr <git_oid> -> Ptr <git_oid> -> CSize -> IO (CInt)
#ccall git_oid_streq , Ptr <git_oid> -> CString -> IO (CInt)
#ccall git_oid_iszero , Ptr <git_oid> -> IO (CInt)
{- typedef struct git_oid_shorten git_oid_shorten; -}
#opaque_t git_oid_shorten
#ccall git_oid_shorten_new , CSize -> IO (Ptr <git_oid_shorten>)
#ccall git_oid_shorten_add , Ptr <git_oid_shorten> -> CString -> IO (CInt)
#ccall git_oid_shorten_free , Ptr <git_oid_shorten> -> IO ()
