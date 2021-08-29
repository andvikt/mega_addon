import json

import yaml

if __name__ == '__main__':
    with open('config.yml') as f:
        cfg = yaml.load(f, Loader=yaml.CLoader)
    with open('config.json', 'w') as f:
        json.dump(cfg, f)
