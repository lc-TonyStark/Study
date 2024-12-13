ADD file ... in /

CMD ["/bin/sh"]

ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ENV LANG=C.UTF-8

RUN /bin/sh -c set -eux;

ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D

ENV PYTHON_VERSION=3.11.10

ENV PYTHON_SHA256=07a4356e912900e61a15cb0949a06c4a05012e213ecd6b4e84d0f67aabbee372

RUN /bin/sh -c set -eux;

RUN /bin/sh -c set -eux;

CMD ["python3"]

ARG QL_MAINTAINER=whyour

LABEL maintainer=whyour

ARG QL_URL=https://github.com/whyour/qinglong.git

ARG QL_BRANCH=v2.17.12

ENV PNPM_HOME=/root/.local/share/pnpm PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/.local/share/pnpm:/root/.local/share/pnpm/global/5/node_modules NODE_PATH=/usr/local/bin:/usr/local/pnpm-global/5/node_modules:/usr/local/lib/node_modules:/root/.local/share/pnpm/global/5/node_modules LANG=C.UTF-8

VOLUME [/ql/data]

EXPOSE map[5700/tcp:{}]

COPY /usr/local/lib/node_modules/. /usr/local/lib/node_modules/ # buildkit

COPY /usr/local/bin/. /usr/local/bin/ # buildkit

RUN |3 QL_MAINTAINER=whyour QL_URL=https://github.com/whyour/qinglong.git QL_BRANCH=v2.17.12

ARG SOURCE_COMMIT=b733937691c8d48f531acea7f9325cead85b565e

RUN |4 QL_MAINTAINER=whyour QL_URL=https://github.com/whyour/qinglong.git QL_BRANCH=v2.17.12

COPY /tmp/build/node_modules/. /ql/node_modules/ # buildkit

WORKDIR /ql

HEALTHCHECK &{["CMD-SHELL" "curl -sf --noproxy

ENTRYPOINT ["./docker/docker-entrypoint.sh"]
