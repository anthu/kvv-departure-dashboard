Simple Dashboard for visualizing realtime departures of trams in Karlsruhe. You can change or extend the stations to be showed. Further documentation coming.

![Alt text](screenshot.png?raw=true "Title")

# Running using Docker
## Requirements
* Docker (including docker-compose)

## Startup
1. Run `docker-compose up`

# Running natively
## Requirements
* Node.js
* Ruby
* [Shopify Dashing](http://shopify.github.io/dashing/) - see below for installation instructions

## Installation
1. install Node.js
2. install Node.js Coffe-Script package (`npm install coffe-script`)
3. clone this repository
4. run `bundle`

## Running
1. run `dashing start` in the cloned folder
2. visit http://localhost:3030

# Other
Thanks https://github.com/Nervengift/kvvliveapi for API documentation
