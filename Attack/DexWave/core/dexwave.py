#!/usr/bin/env python3
import os
import colorlog
import logging
from dotenv import load_dotenv
from argparse import ArgumentParser
from obfuscation import Obfuscation
from mirror import Mirror
from classificator.MalwareClassificator import MalwareClassificator
from perturbations_manager import PerturbationsManager

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
  classificator_labels,
  perturbations_path=os.path.join(os.path.dirname(os.path.realpath(__file__)), 'perturbations'),
):
  mirrorPy = Mirror()
  classificator = MalwareClassificator(6, 200) if classificator_labels is None else MalwareClassificator(6, 200, family_labels=classificator_label_parse(classificator_labels))
  perturbation_manager = PerturbationsManager(perturbations_path)
  try:
    classificator.load_weights(weights_path)
    loaded_perturbations = perturbation_manager.get_all_perturbations()
    logging.info('perturbations loaded: {}'.format(loaded_perturbations))
    exit()

    obfuscation = Obfuscation(input_dex_path, output_dex_path)
    obfuscation.inflate()
    
    # TODO: move to working dir instead
    original_dex_image = mirrorPy.elaborate(input_dex_path, obfuscation.output_dex_dir) 
    logging.info('original dex image can be found at {}'.format(original_dex_image))

    prediction = classificator.predict(original_dex_image)
    logging.info('original dex image has been classified as: {}'.format(prediction if classificator_labels is None else classificator.get_label_from_prediction(prediction)))

    obfuscation.produce_dex()
     # TODO: move to working dir instead
    obfuscated_dex_image = mirrorPy.elaborate(obfuscation.output_dex_path, obfuscation.output_dex_dir)

    new_prediction = classificator.predict(obfuscated_dex_image)
    logging.info('obfuscated dex image has been classified as: {}'.format(new_prediction if classificator_labels is None else classificator.get_label_from_prediction(new_prediction)))
  except Exception as e:
    logging.error(e)
    exit(1)
  
def classificator_label_parse(label_string: str):
  return label_string.replace(' ', '').split(',')

if __name__ == '__main__':
  parser = ArgumentParser()
  parser.add_argument('input_dex_path', type=str, help='path of the input dex file')
  parser.add_argument('output_dex_path', type=str, help='path of the output obfuscated dex file')
  parser.add_argument('--weights_path', type=str, help='path of the tensorflow model weights', default=None)
  parser.add_argument('--classificator_labels', type=str, help='classificator labels string divided by commas', default=None)
  args = parser.parse_args()

  load_dotenv(os.path.join(os.path.realpath(os.path.dirname(__file__)), 'resources', '.wave'), verbose=True)

  weights_path = os.getenv('CLASSIFICATOR_WEIGHTS_PATH') or args.weights_path
  classificator_labels = os.getenv('CLASSIFICATOR_LABELS') or args.classificator_labels

  attack(args.input_dex_path, args.output_dex_path, weights_path, classificator_labels)