# 基于deno的Docker镜像
FROM lukechannings/deno

# 设置工作目录
WORKDIR /app

# 拷贝项目文件到容器中
COPY src/ .

RUN deno cache app.ts

# 暴露端口
EXPOSE 8015

# 定义启动命令
CMD ["run", "--allow-net", "--allow-read", "--allow-env", "--allow-write", "app.ts"]

