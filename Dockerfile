FROM crystallang/crystal:0.19.2
WORKDIR /app
COPY . /app
RUN crystal build --release -o /app/bin/lupa /app/src/lupa.cr
CMD ["/app/bin/lupa"]
ARG REVISION
LABEL revision=$REVISION maintainer="Nee-co"
