#!/usr/bin/env python3
import os
import colorlog
import logging
from dotenv import load_dotenv
from argparse import ArgumentParser
from obfuscation import Obfuscation
from mirror import Mirror
from classificator.MalwareClassificator import MalwareClassificator

handler = colorlog.StreamHandler()
handler.setFormatter(colorlog.ColoredFormatter(
  "[%(log_color)s%(levelname)s%(reset)s] %(message)s",
  reset=True,
  log_colors={
    'DEBUG':    'yellow',
    'INFO':     'green',
    'WARNING':  'orange',
    'ERROR':    'red',
    'CRITICAL': 'red,bg_white',
  },
  style="%"
))

logging.getLogger().setLevel(logging.DEBUG)
logging.getLogger().addHandler(handler)

def attack(
  input_dex_path,
  output_dex_path,
  weights_path,
  perturbations_path=os.path.join(os.path.dirname(os.path.realpath(os.path.dirname(__file__))), 'perturbations'),
):
  mirrorPy = Mirror()
  classificator = MalwareClassificator(6, 200)
  try:
    classificator.load_weights(weights_path)
    obfuscation = Obfuscation(input_dex_path, output_dex_path)
    obfuscation.inflate()
    
    original_dex_image = mirrorPy.elaborate(input_dex_path, os.path.dirname(output_dex_path))
    logging.info('original dex image can be found at {}'.format(original_dex_image))

    prediction = classificator.predict(original_dex_image)
    logging.info('original dex image has been classified as: {}'.format(prediction))

    obfuscation.produce_dex()
  except Exception as e:
    logging.error(e)
    exit(1)

if __name__ == '__main__':
  parser = ArgumentParser()
  parser.add_argument('input_dex_path', type=str, help='path of the input dex file')
  parser.add_argument('output_dex_path', type=str, help='path of the output obfuscated dex file')
  parser.add_argument('--weights_path', type=str, help='path of the tensorflow model weights', default=None)
  args = parser.parse_args()

  load_dotenv(os.path.join(os.path.realpath(os.path.dirname(__file__)), 'resources', '.wave'), verbose=True)
  weights_path = os.getenv('CLASSIFICATOR_WEIGHTS_PATH') or args.weights_path
  attack(args.input_dex_path, args.output_dex_path, weights_path)