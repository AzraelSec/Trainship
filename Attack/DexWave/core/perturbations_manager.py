#!/usr/bin/env python3
import os
from yapsy.PluginManager import PluginManager

class PerturbationsManager:
  def __init__(self, perturbations_path):
    self.plugin_manager = PluginManager(
      directories_list=[perturbations_path],
      plugin_info_ext='perturbation')
    self.plugin_manager.collectPlugins()
    self.last_perturbation_index = -1 # None applied yet 
  
  def get_next_perturbation(self):
    self.last_perturbation_index = self.last_perturbation_index + 1
    return self.plugin_manager.getAllPlugins()[self.last_perturbation_index]

  def get_all_perturbations(self):
    return self.plugin_manager.getAllPlugins()