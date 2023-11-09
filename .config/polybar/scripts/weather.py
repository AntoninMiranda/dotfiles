#!/usr/bin/env python

import json
import urllib
import urllib.parse
import urllib.request


def main():
    with open("/home/nemo/.location", "r") as file:
        city = file.read()
    api_key = "da1f3c25743ea88ae4cfa4b006e3eee0"

    try:
        data = urllib.parse.urlencode({'q': city, 'appid': api_key, 'units': 'metric'})
        weather = json.loads(urllib.request.urlopen(
            'http://api.openweathermap.org/data/2.5/weather?' + data)
            .read())
        reponse = weather['weather'][0]['description'].capitalize()
        meteo = reponse.split()
        icons = {"thunderstorm":"", "drizzle":"", "rain":"", "snow":"", "mist":"", "smoke":"", "haze":"", "dust":"", "fog":"", "sand":"", "dust":"", "ash":"", "squall":"", "tornado":"", "clear":"", "clouds":""}
        icon = icons.get(meteo[len(meteo) - 1].lower(), 'none')
        temp = int(float(weather['main']['temp']))
        name = meteo[len(meteo) - 1]
        name = name.capitalize()
        return ' {}  {}, {}°C '.format(icon, name, temp)
    except:
        return ''


if __name__ == "__main__":
    print(main())
