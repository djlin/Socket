CC=gcc
JAVAC=javac

all: server client server-java client-java

clean:
	rm -f client server *.class

client: client.c
	$(CC) client.c -o client
server: server.c
	$(CC) server.c -o server

client-java: client.java
	$(JAVAC) client.java
server-java: server.java
	$(JAVAC) server.java
