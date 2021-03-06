'use strict'

const osa = require('osanywhereweather')
const defaultOptions = {
  email: process.env.EMAIL,
  password: process.env.PASSWORD,
  stationId: process.env.STATION_ID
}

module.exports = options => osa.export(Object.assign(defaultOptions, options))
