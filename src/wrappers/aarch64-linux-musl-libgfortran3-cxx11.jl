# Autogenerated wrapper script for Clp_jll for aarch64-linux-musl-libgfortran3-cxx11
export clp, libClp, libClpSolver, libOsiClp

using CoinUtils_jll
using Osi_jll
using METIS_jll
using MUMPS_seq_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("Clp")
JLLWrappers.@declare_executable_product(clp)
JLLWrappers.@declare_library_product(libClp, "libClp.so.1")
JLLWrappers.@declare_library_product(libClpSolver, "libClpSolver.so.1")
JLLWrappers.@declare_library_product(libOsiClp, "libOsiClp.so.1")
function __init__()
    JLLWrappers.@generate_init_header(CoinUtils_jll, Osi_jll, METIS_jll, MUMPS_seq_jll, OpenBLAS32_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_executable_product(
        clp,
        "bin/clp",
    )

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
