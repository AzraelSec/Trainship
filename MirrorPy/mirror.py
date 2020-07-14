#!/usr/bin/python
import os
from datetime import datetime
from termcolor import colored
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

    def create_gs_image(self, file_path, output_dir):
        output_name = '{}.png'.format(os.path.splitext(os.path.basename(file_path))[0])
        bytes_data = self.get_file_bytes(file_path)
        img_size = self.get_img_size(len(bytes_data))
        output_path = os.path.join(output_dir, output_name)
        self.save_image(output_path, bytes_data, img_size)
        return output_path

    def recoursive_step(self, path, output_dir):
        directories_pool = []

        if not os.path.exists(output_dir):
            os.mkdir(output_dir)
            debug('{} directory created'.format(output_dir))
        
        info('{} directory analysis started'.format(path))
        for entry in os.listdir(path):
            entry_path = os.path.join(path, entry)
            if os.path.isfile(entry_path): # and os.path.splitext(file_path)[1] == '.exe'
                self.create_gs_image(entry_path, output_dir)
                debug('{} file processed at {}'.format(entry, entry_path))
            elif os.path.isdir(entry_path):
                directories_pool.append(entry)
        
        for inner_dir in directories_pool:
            self.recoursive_step(os.path.join(path, inner_dir), os.path.join(output_dir, inner_dir))

    def recoursive_creation(self, path, output_dir):
        output_main = os.path.join(output_dir, os.path.split(path.rstrip('/'))[1])
        self.recoursive_step(path, output_main)
        return output_main

    def elaborate(self, path, output_dir):
        if os.path.isfile(path):
            debug('MirrorPy\'s operating in file mode')
            result_msg = self.create_gs_image(path, output_dir)
            return 'new file created: {}'.format(result_msg)
        elif os.path.isdir(path):
            debug('MirrorPy\'s operating in directory mode')
            main_output_path = self.recoursive_creation(path, output_dir)
            return 'all the files can be found at {}'.format(main_output_path)
        else:
            raise FileNotFoundError('{} path is not a file nor a directory'.format(path))

#####################################################################àà

def debug(msg):
    string = '\t{} {}'.format(colored('[DEBUG]', 'yellow', attrs=['bold']), colored(msg, attrs=['bold']))
    print(string)

def info(msg):
    string = '{} {}'.format(colored('[INFO]', 'green', attrs=['bold']), colored(msg, attrs=['bold']))
    print(string)

def error(msg):
    string = '{} {}'.format(colored('[ERROR]', 'red', attrs=['bold']), colored(msg, attrs=['bold']))
    print(string)

if __name__ == '__main__':
    if len(argv) < 2:
        error('usage: {} [BIN_PATH] (OUT_DIR=\'./\')'.format(argv[0]))
        exit()
    elif not os.path.exists(argv[1]):
        error('{} is not a readable path or does not exist'.format(argv[1]))
        exit()
    
    output_dir = (os.path.normpath(argv[2]) if len(argv) >= 3 and os.path.isdir(argv[2]) else './')
    debug('using output parent directory: {}'.format(output_dir))

    mirrorPY = Mirror(1024)
    info('MirrorPy is doing its magic..')

    try:
        result_msg = mirrorPY.elaborate(argv[1], output_dir)
        info(result_msg)
    except Exception as ex:
        error('an error occurred: {}'.format(ex))