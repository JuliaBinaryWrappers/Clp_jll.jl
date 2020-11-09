# Autogenerated wrapper script for Clp_jll for x86_64-linux-musl-libgfortran4-cxx11
export libClp, libClpSolver, libOsiClp

using CoinUtils_jll
using Osi_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("Clp")
JLLWrappers.@declare_library_product(libClp, "libClp.so.1")
JLLWrappers.@declare_library_product(libClpSolver, "libClpSolver.so.1")
JLLWrappers.@declare_library_product(libOsiClp, "libOsiClp.so.1")
function __init__()
    JLLWrappers.@generate_init_header(CoinUtils_jll, Osi_jll, OpenBLAS32_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libClp,
        "lib/libClp.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libClpSolver,
        "lib/libClpSolver.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libOsiClp,
        "lib/libOsiClp.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
