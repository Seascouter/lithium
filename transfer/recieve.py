import socket

HOST = "127.0.0.1"
PORT = 62261

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.connect((HOST, PORT))
    s.sendall(b"Hello")
    data = s.recv(1024)

print(data)
