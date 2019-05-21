FROM perl:5.28
RUN cpan Carton && mkdir /app

WORKDIR /app
COPY cpanfile /app/cpanfile
#COPY cpanfile.snapshot /app/cpanfile.snapshot

RUN carton install
COPY . /app
