# Autogenerated wrapper script for Clp_jll for x86_64-w64-mingw32-libgfortran4-cxx11
export clp, libClp, libClpSolver, libOsiClp

using CoinUtils_jll
using Osi_jll
using METIS_jll
using MUMPS_seq_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("Clp")
JLLWrappers.@declare_executable_product(clp)
JLLWrappers.@declare_library_product(libClp, "libClp-1.dll")
JLLWrappers.@declare_library_product(libClpSolver, "libClpSolver-1.dll")
JLLWrappers.@declare_library_product(libOsiClp, "libOsiClp-1.dll")
function __init__()
    JLLWrappers.@generate_init_header(CoinUtils_jll, Osi_jll, METIS_jll, MUMPS_seq_jll, OpenBLAS32_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_executable_product(
        clp,
        "bin\\clp.exe",
    )

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
