import hashlib
import os

sha256 = hashlib.sha256()
f_out = open("out.txt", "w")
out = "Content-Securit-Policy \"default-src"

for file in os.listdir():
    f_out.write(file)
    f_out.write("\n")
    with open(file,"rb") as f:
        for byte_block in iter(lambda: f.read(4096),b""):
            sha256.update(byte_block)
        hexdigest=sha256.hexdigest()
        f_out.write("sha-256"+hexdigest)
        f_out.write("\n")
        out=out+" 'sha256-"+hexdigest+"'"

out=out+"\";"
print(out)

f_out.write("generated CSP\n")
f_out.write(out)

f_out.close()

