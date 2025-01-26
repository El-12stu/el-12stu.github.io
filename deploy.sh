#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 使用 pnpm 构建静态文件
pnpm docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 初始化 Git 仓库并提交
git init
git add -A
git commit -m 'Deploy blog to GitHub Pages'

# 推送到 gh-pages 分支
git push -f git@github.com:el-12stu/el-12stu.github.io.git master:gh-pages

cd -
