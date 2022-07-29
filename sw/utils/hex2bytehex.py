
import argparse
from asyncore import write
import binascii

#
# !! Do _not_ use this for large files
#
if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    parser.add_argument('mem_file', help='ASCII HEX file')
    parser.add_argument('b0_file', help='Byte 0 file')
    parser.add_argument('b1_file', help='Byte 1 file')
    parser.add_argument('b2_file', help='Byte 2 file')
    parser.add_argument('b3_file', help='Byte 3 file')
    args = parser.parse_args()

    with open(args.mem_file, 'r') as rfile:
        with open(args.b0_file, 'w') as file0:
            with open(args.b1_file, 'w') as file1:
                with open(args.b2_file, 'w') as file2:
                    with open(args.b3_file, 'w') as file3:
                        for line in rfile:
                            file3.write(line.rsplit()[0][0] + line.rsplit()[0][1] + '\n')
                            file2.write(line.rsplit()[0][2] + line.rsplit()[0][3] + '\n')
                            file1.write(line.rsplit()[0][4] + line.rsplit()[0][5] + '\n')
                            file0.write(line.rsplit()[0][6] + line.rsplit()[0][7] + '\n')