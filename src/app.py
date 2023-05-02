""" This application simply print a loading bar in the command line :) """

from rich.progress import track
from time import sleep

def scrape_data():
    sleep(0.05)


if __name__ == "__main__":
    for _ in track(range(100), description='[green]People interest in this demo:'):
        scrape_data()
