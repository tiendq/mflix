#!/bin/bash

curl -X PUT http://localhost:9200/mflix_movies

curl -X PUT http://localhost:9200/mflix_movies/_mapping -H 'Content-Type: application/json' -d \
'{
  "properties": {
    "plot": {
      "type": "text"
    },
    "genres": {
      "type": "keyword"
    },
    "cast": {
      "type": "keyword"
    },
    "title": {
      "type": "text"
    },
    "fullplot": {
      "type": "text"
    },
    "countries": {
      "type": "keyword"
    },
    "released": {
      "type": "date",
      "format": "strict_date"
    },
    "directors": {
      "type": "text"
    },
    "year": {
      "type": "short"
    },
    "imdb_rating": {
      "type": "scaled_float",
      "scaling_factor": 10
    },
    "languages": {
      "type": "text"
    },
    "writers": {
      "type": "text"
    },
    "poster": {
      "type": "text"
    }
  }
}'

curl -X PUT http://localhost:9200/mflix_comments

curl -X PUT http://localhost:9200/mflix_comments/_mapping -H 'Content-Type: application/json' -d \
'{
  "properties": {
    "name": {
      "type": "text"
    },
    "email": {
      "type": "text"
    },
    "movie_id": {
      "type": "keyword"
    },
    "date": {
      "type": "date"
    },
    "text": {
      "type": "text"
    }
  }
}'
