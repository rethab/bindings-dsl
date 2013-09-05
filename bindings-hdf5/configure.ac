m4_include(ax_lib_hdf5.m4)
AC_DISABLE_OPTION_CHECKING
AC_INIT([bindings-hdf5], [_])
AC_CONFIG_SRCDIR([bindings-hdf5.cabal])
AX_LIB_HDF5()
if test "$with_hdf5" = yes
then BUILD_BINDINGS_HDF5=True
else BUILD_BINDINGS_HDF5=False
fi
AC_SUBST([BUILD_BINDINGS_HDF5])
AC_CONFIG_FILES([bindings-hdf5.buildinfo])
AC_OUTPUT
