{
    'includes':
    [
        './../../../../system/gyp/includes.gypi',
    ],
    'variables':
    {
        'UNIT_NAME': 'raii_thread',
        'UNIT_IS_HEADER_ONLY': 'false',
        'UNIT_SOURCES':
        [
            './../sources/raii_thread.hpp',
            './../sources/raii_thread.cpp',
        ],
        'UNIT_DEPENDENCIES':
        [
            './../../raii_thread_base/build/raii_thread_base.gyp:raii_thread_base',
        ],
    },
}