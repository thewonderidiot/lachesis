import json

class RopeDB():
    def __init__(self, block1):
        self._block1 = block1
        self._bugger_sets = {}
        self._unknown_partnos = []
        with open('ropes.json') as f:
            self._rope_data = json.load(f)

        for deck,data in self._rope_data.items():
            if (self._block1 and int(deck) >= 200) or ((not self._block1) and int(deck) < 200):
                continue

            if 'buggers' in data:
                key = tuple(data['buggers'])
                self._bugger_sets[key] = deck
            else:
                self._unknown_partnos.extend(data['partno'])

        self._unknown_partnos = sorted(self._unknown_partnos)

    def find_rope(self, raw_buggers):
        buggers = tuple(['%06o' % bugger for bugger in raw_buggers])
        if buggers not in self._bugger_sets:
            return '-', '-', '-', '-'
        
        deck = self._bugger_sets[buggers]
        data = self._rope_data[deck]

        return data['program'] + ' ' + data['revision'], data['module'], data['partno'][-1], deck

    def get_unknown_partnos(self):
        return self._unknown_partnos

    def identify_rope(self, partno, raw_buggers, healthy):
        buggers = tuple(['%06o' % bugger for bugger in raw_buggers])
        for deck, data in self._rope_data.items():
            if partno in data['partno']:
                if healthy:
                    data['buggers'] = list(buggers)
                    with open('ropes.json', 'w+') as f:
                        json.dump(self._rope_data, f, indent=4)

                    self._bugger_sets[buggers] = deck

                return data['program'] + ' ' + data['revision'], data['module'], data['partno'][-1], deck

        return None
