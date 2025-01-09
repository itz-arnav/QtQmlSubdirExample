cmake_minimum_required(VERSION 3.16)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

set(SINGLETON_QML_FILES
    # add your singletons here
    Theme.qml
)

set_source_files_properties(
    ${SINGLETON_QML_FILES}
    PROPERTIES
        QT_QML_SINGLETON_TYPE TRUE
        # this must be done before the qt_add_qml_module happens below
)

qt_add_qml_module(utils
    URI utils
    VERSION 1.0
    QML_FILES
        ${SINGLETON_QML_FILES}
        # add other non-singletons here
)
