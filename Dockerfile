ARG POSTGRES_VERSION

FROM postgres:$POSTGRES_VERSION

ARG PGTAP_VERSION

RUN apk update && apk upgrade \
  && apk add perl \
  && apk add --virtual build-deps git make perl-utils patch \
  && git clone git://github.com/theory/pgtap.git \
  && cd pgtap \
  && git checkout tags/$PGTAP_VERSION \
  && make && make install && cd .. && cpan TAP::Parser::SourceHandler::pgTAP \
  && apk del build-deps

COPY create_extension_pgtap.sql /docker-entrypoint-initdb.d/
