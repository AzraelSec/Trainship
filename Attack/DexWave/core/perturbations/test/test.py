import logging
from yapsy import IPlugin

class Test(IPlugin):
  def __init__(self):
    super().__init__()
    logging.debug('Test plugin started')
  
  def test_method(self):
    logging.debug('successful test')