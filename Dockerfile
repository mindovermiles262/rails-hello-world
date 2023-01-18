FROM gliderlabs/herokuish
COPY . /tmp/app
RUN /bin/herokuish buildpack build
ENV PORT=5000
EXPOSE 5000
CMD ["/bin/herokuish", "procfile", "start", "web"]
