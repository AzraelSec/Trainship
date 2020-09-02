import logging
from perturbation_interface import IPerturbation
from obfuscation import Obfuscation

class Test(IPerturbation):
  def __init__(self):
    super().__init__()
  
  def perturbate(self, obfuscation: Obfuscation):
    for file in obfuscation.smali_files:
      self.logger.debug('{} file obfuscating...'.format(file))