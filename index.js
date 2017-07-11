const readFileSync = require('fs').readFileSync
const marked = require('marked')
const { parse } = require('url')
const { json, send } = require('micro')
const match = require('micro-match')

module.exports = async (request, response) => {
  const {query} = await parse(request.url, true)
  const {method} = match('/:api?/:method', request.url)
  const data = request.method === 'POST' ? await json(request) : query
  let result = {}

  if (method !== undefined && ['live', 'history', 'export'].includes(method)) {
    const action = require(`./lib/${method}`)
    try {
      result = await action(data)
    } catch (error) {
      result.error = error.message
    }
  } else {
    const readme = readFileSync('./README.md', 'utf-8')
    result = await marked(readme)
  }
  let status = result.error ? 500 : 200
  response.setHeader('Access-Control-Allow-Origin', '*')
  response.setHeader('Access-Control-Allow-Methods', 'GET, POST')
  response.setHeader('Access-Control-Allow-Headers', 'Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With')
  send(response, status, result)
}
