[![Build Status](https://travis-ci.org/zrrrzzt/osanywhereweather-api-server.svg?branch=master)](https://travis-ci.org/telemark/osanywhereweather-api-server)
[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat)](https://github.com/feross/standard)
[![Greenkeeper badge](https://badges.greenkeeper.io/zrrrzzt/osanywhereweather-api-server.svg)](https://greenkeeper.io/)

# osanywhereweather-api-server

API-server for your weatherstation. Requires Node >= 8.

## API

### ```/api/live```

GET og POST

Returns live data for your station

### ```/api/history```

GET og POST

Returns historic data for your station

#### Params

```JavaScript
{
  'type': 'temperature',
  'channel': '1',
  'duration': '@week' //@day, @week, @month
}
```

### ```/api/export```

GET og POST

Exports data for your station

#### Params

```JavaScript
{
  'type': 'temperature',
  'channel': '1',
  'fromdate': '2015-04-01',
  'todate': '2015-04-30'
}
```

## Usage

### Server
Clone repo from git.

Install dependencies.

Start

```
$ STATION_ID=stationId EMAIL=email PASSWORD=password npm start
```

### Now
Requires account for Zeit's [Now](https://zeit.co/now) and the Now CLI installed

Clone repo from git.

Update server.env with your credentials

Deploy to Now

```
$ now --npm -E server.env
```

### Docker
Clone repo from git.

Updates server.env with you credentials.

Build docker image.

```
$ docker build -t osanywhereweather .
```

Run docker image.

```
$ docker run --env-file=server.env -d -p 3000:3000 osanywhereweather
```

## License

[MIT](LICENSE)

![Robohash osanywhereweather-api-server](https://robots.kebabstudios.party/osanywhereweather-api-server.png "Robohash image of osanywhereweather-api-server")