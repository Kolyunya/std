cmd_out/debug/raii_thread_tests := flock out/debug/linker.lock g++ -lpthread  -o out/debug/raii_thread_tests -Wl,--start-group out/debug/obj.target/raii_thread_tests/../sources/raii_thread.o out/debug/obj.target/raii_thread_tests/../tests/sources/raii_thread.o /home/kolyunya/projects/gtest/build/gtest-all.o out/debug/obj.target/../../raii_thread_base/build/libraii_thread_base.a -Wl,--end-group 
