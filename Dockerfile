FROM zeruel92/dart-armv7

WORKDIR /app

ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline

CMD []
ENTRYPOINT ["dart", "bin/main.dart"]
