#!/usr/bin/python3
"""Exports to-do list info."""
import json
import requests
import sys

if __name__ == "__main__":
    id = sys.argv[1]
    url = "https://jsonplaceholder.typicode.com/"
    user = requests.get(url + "users/{}".format(id)).json()
    username = user.get("username")
    todos = requests.get(url + "todos", params={"userId": id}).json()

    with open("USER_ID.json".format(id), "w") as jsonfile:
        json.dump({id: [{
                "task": todo.get("title"),
                "completed": todo.get("completed"),
                "username": username
            } for todo in todos]}, jsonfile)
