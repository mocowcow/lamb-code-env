# 使用最新的 Alpine 基础镜像
FROM alpine:latest

# 安装基本工具和依赖
RUN apk update && apk upgrade && apk add --no-cache \
    bash \
    curl \
    tar \
    gzip \
    python3 \
    py3-pip

# 安装 Go 1.21
RUN curl -fSL https://go.dev/dl/go1.21.linux-amd64.tar.gz -o go1.21.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.21.linux-amd64.tar.gz && \
    rm go1.21.linux-amd64.tar.gz

# 设置 Go 环境变量
ENV PATH="/usr/local/go/bin:${PATH}"

# 验证安装的版本
RUN go version && python3 --version

# 设置工作目录
WORKDIR /workspace

# 设置默认命令
CMD ["bash"]
