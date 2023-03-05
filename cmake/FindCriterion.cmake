find_package(PkgConfig)

find_path(CRITERION_INCLUDE_DIR criterion/criterion.h
        PATH_SUFFIXES criterion)

find_library(CRITERION_LIBRARY NAMES criterion libcriterion)

set(CRITERION_LIBRARIES ${CRITERION_LIBRARY})
set(CRITERION_INCLUDE_DIRS ${CRITERION_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Criterion DEFAULT_MSG CRITERION_LIBRARY CRITERION_INCLUDE_DIR)
mark_as_advanced(CRITERION_INCLUDE_DIR CRITERION_LIBRARY)