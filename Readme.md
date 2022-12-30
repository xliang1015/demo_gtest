1、运行 make -f gtest.mk 会自动下载并编译输出 gtest 的库文件和头文件

2、执行如下编译指令编译并链接测试代码和 gtest 库文件。命令中的 gcd.c 和 factorial.c 可以根据需要替换成一个或多个 C 代码文件, foo_unittest.cc 替换成自己的单元测试文件(里面包含了多组 TEST 或 TEST_F测试)。
```bash
g++ gcd.c factorial.c foo_unittest.cc -o footest -I. -Igtest/include -Lgtest/lib -lgtest -lgtest_main -lpthread
```

参考链接:
https://blog.csdn.net/guyongqiangx/article/details/120405585
