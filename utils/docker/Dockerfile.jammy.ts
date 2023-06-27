FROM docker pull mcr.microsoft.com/playwright:v1.35.0-jammy as playwright


FROM  golang:1.20.1 AS SJ-Build

WORKDIR /go/ci

COPY ./deps.sh deps.sh
RUN bash deps.sh

COPY ./slim.sh slim.sh
RUN bash slim.sh

COPY ./git-uitests.sh git-uitests.sh
RUN bash git-uitests.sh
