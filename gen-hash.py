import hashlib
import os

sha256 = hashlib.sha256()
f_out = open("out.txt", "w")

for file in os.listdir():
    f_out.write(file)
    f_out.write("\n")
    with open(file,"rb") as f:
        for byte_block in iter(lambda: f.read(4096),b""):
            sha256.update(byte_block)
        f_out.write(sha256.hexdigest())
        f_out.write("\n")

f_out.close()
