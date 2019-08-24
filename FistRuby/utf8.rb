#!/usr/bin/ruby -w
# -*- coding : utf-8 -*-

print <<EOF # 普通文本输出
    这是第一种方式创建here document
    多行字符串。
EOF

print <<"EOF"; # 普通文本输出
    这是第二种方式创建here document
    多行字符串。
EOF

print <<`EOC` # 执行shell命令
    echo hi there
    echo lo there
EOC

print <<"foo", <<"bar" # Define multi start，普通的文本输出
    I said foo
foo
    I said bar
bar
