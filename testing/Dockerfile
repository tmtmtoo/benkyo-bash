FROM alpine:3.17

WORKDIR /src

RUN wget https://github.com/shellspec/shellspec/archive/0.28.1.tar.gz \
	&& tar xzvf ./0.28.1.tar.gz \
	&& mkdir /usr/local/shellspec \
 	&& mv shellspec-0.28.1/* /usr/local/shellspec

ENV PATH $PATH:/usr/local/shellspec

CMD ["shellspec"]

