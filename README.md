# 🚀 Discord for GitHub Actions

[GitHub Action](https://developer.github.com/actions/) for sending a [Discord](https://discordapp.com/) notification message.

[![Actions Status](https://github.com/appleboy/discord-action/workflows/discord%20message/badge.svg)](https://github.com/appleboy/discord-action/actions)

![message](./images/message.png)

**Important**: Only supports **Linux** [Docker](https://www.docker.com/) containers.

## Features

- [x] Send Multiple Messages
- [x] Send Multiple Files

## Usage

Send a custom message as shown below:

```yaml
name: discord message
on: [push]
jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: send custom message with args
        uses: appleboy/discord-action@master
        with:
          webhook_url: ${{ secrets.WEBHOOK_URL }}
          message: The ${{ github.event_name }} event triggered first step.
```

## Input variables

- webhook_url: Webhook URL of the channel.
- webhook_id: Webhook ID of the channel.
- webhook_token: Webhook token of the channel.
- username: (Optional) Override the default username of the webhook.
- avatar_url: (Optional) Override the default avatar of the webhook.
- color: (Optional) Color code of the embed.
- file: (Optional) Send a file message.
- debug: (Optional) Enable debug mode.

## Example

Send a custom message using `webhook_url`:

```yaml
- name: send message
  uses: appleboy/discord-action@master
  with:
    webhook_url: ${{ secrets.WEBHOOK_URL }}
    message: The ${{ github.event_name }} event triggered first step.
```

Send the default message:

```yaml
- name: send message
  uses: appleboy/discord-action@master
  with:
    webhook_url: ${{ secrets.WEBHOOK_URL }}
```

Send the message with a custom color and username:

```yaml
- name: send message
  uses: appleboy/discord-action@master
  with:
    webhook_id: ${{ secrets.WEBHOOK_ID }}
    webhook_token: ${{ secrets.WEBHOOK_TOKEN }}
    color: "#48f442"
    username: "GitHub Bot"
    message: "A new commit has been pushed with custom color."
```

Send multiple files:

```yaml
- name: send message
  uses: appleboy/discord-action@master
  with:
    webhook_id: ${{ secrets.WEBHOOK_ID }}
    webhook_token: ${{ secrets.WEBHOOK_TOKEN }}
    file: "./images/message.png"
    message: "Send Multiple File."
```
