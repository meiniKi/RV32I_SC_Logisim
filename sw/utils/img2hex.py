
import argparse
from asyncore import write
import binascii


def swap_endianness(w):
    # let's keep it simple:
    return w[6]+w[7]+w[4]+w[5]+w[2]+w[3]+w[0]+w[1]

#
# !! Do _not_ use this for large files
#
if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    parser.add_argument('img_file', help='Binary image file')
    parser.add_argument('mem_file', help='ASCII HEX file')
    parser.add_argument('mem_size_words', help='Number of words to be written')
    args = parser.parse_args()

    hexdata = ""
    with open(args.img_file, 'rb') as ifile:
        hexdata = binascii.hexlify(ifile.read()).decode()
        hexdata = hexdata.rstrip('00')  # hacky remove of EOF
       
    word, word_size = len(hexdata), 8
    words = [ hexdata[i:i+word_size] for i in range(0, word, word_size) ]
    words_little = [ swap_endianness(w)+'\n' for w in words ]

    with open(args.mem_file, 'w') as ofile:
        ofile.writelines(words_little)

        for _ in range(int(args.mem_size_words) - len(words_little)):
            ofile.write('00000000\n')

