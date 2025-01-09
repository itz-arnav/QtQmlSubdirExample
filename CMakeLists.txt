cmake_minimum_required(VERSION 3.16)
project(SubModuleWork VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

# This sets up default build configurations, like debug/release, etc.
qt_standard_project_setup(REQUIRES 6.5)

# Add the "utils" subdirectory, which has its own CMakeLists.txt
add_subdirectory(utils)

# Create the main executable from main.cpp
qt_add_executable(appSubModuleWork
    main.cpp
)

# Register the QML module for the main application
qt_add_qml_module(appSubModuleWork
    URI SubModuleWork
    VERSION 1.0
    QML_FILES
        Main.qml
)

# Link the Qt Quick libraries
target_link_libraries(appSubModuleWork
    PRIVATE Qt6::Quick utils
)

# If you're on Windows or macOS, you might want these properties:
set_target_properties(appSubModuleWork PROPERTIES
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

install(TARGETS appSubModuleWork
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
