import hashlib
import os,sys
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("--output", "-o", help="set output file")
parser.add_argument("--input", "-i", help="set input directory")
args = parser.parse_args()

if args.input:
    print("Set input to %s" % args.input)
else:
    print("Please set up input directory")
    sys.exit()

if args.output:
    print("Set output to %s" % args.output)
else:
    print("Please set up output file")
    sys.exit()


sha256 = hashlib.sha256()
f_out = open(args.output, "w")
out = "Content-Securit-Policy \"default-src"

for file in os.listdir(args.input):
    with open(args.input+"/"+file,"rb") as f:
        for byte_block in iter(lambda: f.read(4096),b""):
            sha256.update(byte_block)
        hexdigest=sha256.hexdigest()
        out=out+" 'sha256-"+hexdigest+"'"

out=out+"\";"
f_out.write(out)
f_out.close()
