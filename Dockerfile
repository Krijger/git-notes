FROM ruby:2.1-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc make patch \
		nodejs python-pygments \
	&& rm -rf /var/lib/apt/lists/*

RUN gem install github-pages

COPY run.sh /
WORKDIR /blog
EXPOSE 4000
CMD ["bash", "/run.sh"]
