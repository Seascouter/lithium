import socket

HOST = "73.168.181.224"
PORT = 62261

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.connect((HOST, PORT))
    s.sendall(b"Hello")
    data = s.recv(1024)

print(data)
