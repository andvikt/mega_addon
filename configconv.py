import json

import yaml

if __name__ == '__main__':
    for n in ['config', 'build']:
        with open(f'{n}.yml') as f:
            cfg = yaml.load(f, Loader=yaml.CLoader)
        with open(f'{n}.json', 'w') as f:
            json.dump(cfg, f)
