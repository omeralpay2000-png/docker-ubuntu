FROM ubuntu:22.04

# İsteğe bağlı olarak temel araçları güncelleyebilir ve yükleyebilirsiniz
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Konteynerin kapanmasını engelleyen sonsuz döngü komutu
CMD ["tail", "-f", "/dev/null"]
