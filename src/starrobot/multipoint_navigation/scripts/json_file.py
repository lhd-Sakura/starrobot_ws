# Embedded file name: /home/eaibot/dashgo_ws/src/dashgo/dashgo_tools/scripts/json_file.py
import json

def json_write(data, file_name):
    with open(file_name + '.json', 'w') as outfile:
        json.dump(data, outfile, ensure_ascii=False, encoding='utf-8')
        outfile.write('\n')
    print 'write successfully...'


def json_append(data, file_name):
    with open(file_name + '.json', 'a') as outfile:
        json.dump(data, outfile, ensure_ascii=False, encoding='utf-8')
        outfile.write('\n')
    print 'write successfully...'


def json_read(data, file_name):
    with open(file_name + '.json', 'r') as loadfile:
        data = json.load(loadfile)
    print json.dumps(data, ensure_ascii=False, encoding='utf-8')


def json_load(data, file_name):
    loadfile = open(file_name + '.json', 'r')
    for line in loadfile:
        data = json.loads(line)
        print json.dumps(data, ensure_ascii=False, encoding='utf-8')

    loadfile.close()


def json_read_lines(data, file_name):
    loadfile = open(file_name + '.json', 'r')
    data = list()
    for line in loadfile:
        data.append(json.loads(line))

    loadfile.close()
    return data


def json_clear(file_name):
    loadfile = open(file_name + '.json', 'w+')
    loadfile.truncate()
