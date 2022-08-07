import json

class RopeDB():
    def __init__(self):
        self._ropes = {}
        with open('ropes.json') as f:
            rope_data = json.load(f)

        for deck,data in rope_data.items():
            if 'buggers' in data:
                data['deck'] = deck
                key = tuple(data['buggers'])
                self._ropes[key] = data

    def find_rope(self, buggers):
        buggers = tuple(['%06o' % bugger for bugger in buggers])
        if buggers not in self._ropes:
            return '-', '-', '-', '-'
        
        data = self._ropes[buggers]

        return data['program'] + ' ' + data['revision'], data['module'], data['partno'][-1], data['deck']
