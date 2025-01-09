qt_add_qml_module(utils
    URI utils
    VERSION 1.0
    QML_FILES
        Theme.qml
)

set_source_files_properties(Theme.qml PROPERTIES
QT_QML_SINGLETON_TYPE TRUE
)
