#!/usr/bin/python
import os
from datetime import datetime
from PIL import Image
from sys import argv

class Mirror:
    def __init__(self, width=128):
        self.width = width if width > 0 else 128

    def get_file_bytes(self, file_path):
        bytes_pool = []
        with open(file_path, 'rb') as fd:
            byte = fd.read(1)
            while byte:
                bytes_pool.append(ord(byte))
                byte = fd.read(1)
        return bytes_pool
    
    def get_img_size(self, bytes_len):
        return (self.width, int(bytes_len / self.width) + 1)
    
    def save_image(self, output_name,  data, size):
        image = Image.new('L', size)
        image.putdata(data)
        image.save(output_name)

    def create_gs_image(self, file_path):
        output_name = datetime.now().strftime("%d-%m-%y_%H-%M.png")
        bytes_data = self.get_file_bytes(file_path)
        img_size = self.get_img_size(len(bytes_data))
        self.save_image(output_name, bytes_data, img_size)
        return output_name

if __name__ == '__main__':
    if len(argv) < 2:
        print('usage: {} [BIN_PATH]'.format(argv[0]))
        exit()
    elif not os.path.isfile(argv[1]):
        print('file {} is not a readable file or does not exist'.format(argv[1]))
        exit()

    mirrorPY = Mirror(1024)
    print('doing the magic..')
    try:
        image_name = mirrorPY.create_gs_image(argv[1])
        print('new file created: {}'.format(image_name))
    except Exception as ex:
        print('an error occurred: {}'.format(str(ex)))