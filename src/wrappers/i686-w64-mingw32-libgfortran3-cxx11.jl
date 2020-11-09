# Autogenerated wrapper script for Clp_jll for i686-w64-mingw32-libgfortran3-cxx11
export libClp, libClpSolver, libOsiClp

using CoinUtils_jll
using Osi_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("Clp")
JLLWrappers.@declare_library_product(libClp, "libClp-1.dll")
JLLWrappers.@declare_library_product(libClpSolver, "libClpSolver-1.dll")
JLLWrappers.@declare_library_product(libOsiClp, "libOsiClp-1.dll")
function __init__()
    JLLWrappers.@generate_init_header(CoinUtils_jll, Osi_jll, OpenBLAS32_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libClp,
        "bin\\libClp-1.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libClpSolver,
        "bin\\libClpSolver-1.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libOsiClp,
        "bin\\libOsiClp-1.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
