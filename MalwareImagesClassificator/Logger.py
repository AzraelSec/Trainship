from termcolor import colored
def debug(msg):
    print('\t{} {}'.format(colored('[DEBUG]', 'yellow', attrs=['bold']), colored(msg, attrs=['bold'])))

def info(msg):
    print('{} {}'.format(colored('[INFO]', 'green', attrs=['bold']), colored(msg, attrs=['bold'])))

def error(msg):
    print('{} {}'.format(colored('[ERROR]', 'red', attrs=['bold']), colored(msg, attrs=['bold'])))