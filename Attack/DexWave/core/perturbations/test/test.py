import logging
from yapsy.IPlugin import IPlugin

class Test(IPlugin):
  def __init__(self):
    super().__init__()
    self.logger = logging.getLogger(__name__)
    self.logger.setLevel(logging.DEBUG)
    self.logger.debug('Test plugin started')
  
  def test_method(self):
    self.logger.debug('successful test')