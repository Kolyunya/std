{
    'includes':
    [
        './../../../../system/gyp/includes.gypi',
    ],
    'variables':
    {
        'UNIT_NAME': 'raii_thread_base',
        'UNIT_IS_HEADER_ONLY': 'false',
        'UNIT_SOURCES':
        [
            './../sources/raii_thread_base.hpp',
            './../sources/raii_thread_base.cpp',
        ],
    },
}