cmd_out/debug/random_tests := flock out/debug/linker.lock g++ -lpthread  -o out/debug/random_tests -Wl,--start-group out/debug/obj.target/random_tests/../tests/sources/random.o /home/kolyunya/projects/gtest/build/gtest-all.o out/debug/obj.target/librandom.a -Wl,--end-group 
