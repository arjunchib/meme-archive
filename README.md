# meme-archive

Web app to scrape audio from youtube videos and store them in a database. Intended to be consumed by [memebot](https://github.com/arjunchib/memebot).

## Getting Started

### Install ruby

Install ruby version found in the Gemfile.

### Install node and yarn

Install yarn 1. I believe any version of node >12 should work, but should always work with the latest version.

### Install dependencies

```bash
bundle install
yarn install
```

### Set env variables

Add the name of the discord app to the `.env`. This is needed to configure Discord SSO.

```
DISCORD_APP=memetest
```

### Setup the master key

Add rails master key at `config/master.key`. Contact me for key.

### Setup database

```bash
bundle exec rails db:setup
```

### Start the dev server

```bash
bundle exec rails s
```

## Deployment

```bash
cap production deploy
```
