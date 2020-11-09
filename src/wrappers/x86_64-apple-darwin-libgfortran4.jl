# Autogenerated wrapper script for Clp_jll for x86_64-apple-darwin-libgfortran4
export libClp, libClpSolver, libOsiClp

using CoinUtils_jll
using Osi_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("Clp")
JLLWrappers.@declare_library_product(libClp, "@rpath/libClp.1.dylib")
JLLWrappers.@declare_library_product(libClpSolver, "@rpath/libClpSolver.1.dylib")
JLLWrappers.@declare_library_product(libOsiClp, "@rpath/libOsiClp.1.dylib")
function __init__()
    JLLWrappers.@generate_init_header(CoinUtils_jll, Osi_jll, OpenBLAS32_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libClp,
        "lib/libClp.1.14.6.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libClpSolver,
        "lib/libClpSolver.1.14.6.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libOsiClp,
        "lib/libOsiClp.1.14.6.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
