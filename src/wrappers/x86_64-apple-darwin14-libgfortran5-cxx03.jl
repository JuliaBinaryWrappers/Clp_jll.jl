# Autogenerated wrapper script for Clp_jll for x86_64-apple-darwin14-libgfortran5-cxx03
export libClpSolver, libClp, libOsiClp

using CoinUtils_jll
using Osi_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"

# Relative path to `libClpSolver`
const libClpSolver_splitpath = ["lib", "libClpSolver.1.14.6.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libClpSolver_path = ""

# libClpSolver-specific global declaration
# This will be filled out by __init__()
libClpSolver_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libClpSolver = "@rpath/libClpSolver.1.dylib"


# Relative path to `libClp`
const libClp_splitpath = ["lib", "libClp.1.14.6.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libClp_path = ""

# libClp-specific global declaration
# This will be filled out by __init__()
libClp_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libClp = "@rpath/libClp.1.dylib"


# Relative path to `libOsiClp`
const libOsiClp_splitpath = ["lib", "libOsiClp.1.14.6.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libOsiClp_path = ""

# libOsiClp-specific global declaration
# This will be filled out by __init__()
libOsiClp_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libOsiClp = "@rpath/libOsiClp.1.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Clp")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (CoinUtils_jll.PATH_list, Osi_jll.PATH_list, OpenBLAS32_jll.PATH_list, CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (CoinUtils_jll.LIBPATH_list, Osi_jll.LIBPATH_list, OpenBLAS32_jll.LIBPATH_list, CompilerSupportLibraries_jll.LIBPATH_list,))

    global libClpSolver_path = normpath(joinpath(artifact_dir, libClpSolver_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libClpSolver_handle = dlopen(libClpSolver_path)
    push!(LIBPATH_list, dirname(libClpSolver_path))

    global libClp_path = normpath(joinpath(artifact_dir, libClp_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libClp_handle = dlopen(libClp_path)
    push!(LIBPATH_list, dirname(libClp_path))

    global libOsiClp_path = normpath(joinpath(artifact_dir, libOsiClp_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libOsiClp_handle = dlopen(libOsiClp_path)
    push!(LIBPATH_list, dirname(libOsiClp_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()
