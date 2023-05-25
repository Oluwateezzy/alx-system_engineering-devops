#!/usr/bin/python3
"""
    Write a Python script that, using this REST API, for a given employee ID,
    returns information about his/her TODO list progress.
"""
import requests
import sys

if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/"
    user = requests.get(url + "users/{}".format(sys.argv[1])).json()
    todo = requests.get(url + "todos", params={"userId": sys.argv[1]}).json()
    complete = []
    for t in todo:
        if t.get("completed") is True:
            complete.append(t.get("title"))
    print("Employee {} is done with tasks({}/{})".format(user.get("name"),
        len(complete), len(todo)))
    for c in complete:
        print("\t {}".format(c))
