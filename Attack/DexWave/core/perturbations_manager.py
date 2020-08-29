#!/usr/bin/env python3
from yapsy.PluginManager import PluginManager

class PerturbationsManager:
  def __init__(self, perturbations_path):
    self.pluginManager = PluginManager()