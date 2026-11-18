
CC = gcc
CFLAGS = -Wall -Wextra

COMMON_SRC = udp.c tftp.c file.c

all: tftp_server tftp_client

tftp_server: tftp_server.c $(COMMON_SRC)
	$(CC) $(CFLAGS) tftp_server.c $(COMMON_SRC) -o tftp_server

tftp_client: tftp_client.c $(COMMON_SRC)
	$(CC) $(CFLAGS) tftp_client.c $(COMMON_SRC) -o tftp_client

clean:
	rm -f tftp_server tftp_client

.PHONY: all clean
