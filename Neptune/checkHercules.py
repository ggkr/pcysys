#!/usr/bin/env python3

import requests
import os

CHECK_URL = os.environ['HERCULES_URL']

def main():
    site_status = is_site_valid(CHECK_URL)
    if site_status:
        print("Site is available")
    else:
        print("Site is unavailable")
    return


def is_site_valid(url):
    r = requests.head(url)
    return r.status_code == 200


if __name__ == '__main__':
    main()

