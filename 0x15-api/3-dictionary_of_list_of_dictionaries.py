#!/usr/bin/python3
"""Exports to-do list info."""
import json
import requests
import sys

if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/"
    users = requests.get(url + "users/").json()

    with open("todo_all_employees.json", "w") as jsonfile:
        json.dump({
            user["id"]: [{
                "username": user["username"],
                "task": todo["title"],
                "completed": todo["completed"],
            } for todo in requests.get(url + "todos",
                                        params={"userId": user["id"]}).json()]
            for user in users}, jsonfile)
