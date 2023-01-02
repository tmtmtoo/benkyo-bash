FROM alpine:3.17

WORKDIR /src

RUN wget https://github.com/shellspec/shellspec/archive/0.28.1.tar.gz \
	&& tar xzvf ./0.28.1.tar.gz \
	&& ln -s ./shellspec-0.28.1/shellspec ./

COPY . /src/

CMD ["./shellspec"]

