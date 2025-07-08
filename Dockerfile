# 基于 ubuntu-latest 镜像
FROM ubuntu:latest

# 更新软件源并安装必要的依赖
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    git \
    rsync

# 安装 node 24
RUN curl -fsSL https://deb.nodesource.com/setup_24.x | bash -
RUN apt-get install -y nodejs

# 配置 npm 镜像
RUN npm config set registry https://mirrors.huaweicloud.com/repository/npm/

# 安装 pnpm
RUN npm install -g pnpm