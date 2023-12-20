# 基于 ubuntu-latest 镜像
FROM ubuntu:latest

# 更新软件源并安装必要的依赖
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    git \
    rsync

# 安装 nodejs20
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs

# 安装 pnpm
RUN npm install -g pnpm