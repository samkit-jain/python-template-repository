FROM python:3.10-slim
ENV RUN_COMMAND=python PYTHONIOENCODING=UTF-8

EXPOSE 8080

# Install essential packages.
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        g++ \
        gcc

ADD requirements.txt .

# Install dependencies.
RUN python -m pip install --upgrade pip && \
    python -m pip install wheel --no-cache-dir && \
    python -m pip install -r requirements.txt --no-cache-dir

# Clean up.
RUN apt-get remove --purge -y g++ gcc &&\
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Add project files.
ADD . .

RUN chmod +x docker_entrypoint.sh

ENTRYPOINT ["/docker_entrypoint.sh"]
CMD ["manage.py check"]
