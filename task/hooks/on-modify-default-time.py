#!/usr/bin/env python
import pytz
from datetime import time
from tasklib.task import Task

LOCALTZ = pytz.timezone('America/Los_Angeles')  # Your timezone
DEFAULT_TIME = time(20,0,0)  # Your wanted default time

def is_local_midnight(timestamp):
    return timestamp.astimezone(LOCALTZ).time() == time(0,0,0)

def set_default_time(timestamp):
    return timestamp.astimezone(LOCALTZ).replace(
        hour=DEFAULT_TIME.hour,
        minute=DEFAULT_TIME.minute,
        second=DEFAULT_TIME.second,
        )

task = Task.from_input()

if task['due'] and is_local_midnight(task['due']):
    task['due'] = set_default_time(task['due'])
    modified = True
else:
    modified = False

print task.export_data()

if modified:
    print "Default due time has been set."
