FROM tercen/runtime-r44-minimal:4.4-1

RUN installr -d data.table dtplyr

COPY . /operator
WORKDIR /operator

ENV TERCEN_SERVICE_URI https://tercen.com

ENTRYPOINT ["R", "--no-save", "--no-restore", "--no-environ", "--slave", "-f", "main.R", "--args"]
CMD ["--taskId", "someid", "--serviceUri", "https://tercen.com", "--token", "sometoken"]