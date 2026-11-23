FROM ubuntu:26.10

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    make \
#    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

#COPY src/ ./src/
COPY Makefile ./Makefile
COPY libft/ ./libft/

CMD ["bash"]