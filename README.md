# 🚀 Discord for GitHub Actions

[GitHub Action](https://developer.github.com/actions/) for sending a [Discord](https://discordapp.com/) notification message.

<img src="./images/message.png">

## Features

* [x] Send Multiple Messages
* [x] Send Multiple Files 

## Usage 

Send custom message as below

```
action "Send Custom Message" {
  uses = "appleboy/discord-action@master"
  secrets = [
    "WEBHOOK_ID",
    "WEBHOOK_TOKEN",
  ]
  args = "A new commit has been pushed."
}
```

<img src="images/workflow.png">

## Environment variables

* USERNAME - Optional. override the default username of the webhook
* AVATAR_URL - Optional. override the default avatar of the webhook
* COLOR - Optional. color code of the embed
* FILE - Optional. send file message

## Example

Send custom message in `args`

```
action "Send Custom Message" {
  uses = "appleboy/discord-action@master"
  secrets = [
    "WEBHOOK_ID",
    "WEBHOOK_TOKEN",
  ]
  args = "A new commit has been pushed."
}
```

Send the default message.

```
action "Send Default Message" {
  uses = "appleboy/discord-action@master"
  secrets = [
    "WEBHOOK_ID",
    "WEBHOOK_TOKEN",
  ]
}
```

Send the message with custom color and username

```
action "Send Color Message" {
  uses = "appleboy/discord-action@master"
  env = {
    COLOR = "#48f442"
    USERNAME = "GitHub Action"
  }
  secrets = [
    "WEBHOOK_ID",
    "WEBHOOK_TOKEN",
  ]
  args = "A new commit has been pushed with custom color."
}
```

Send multiple files

```
action "Send Multiple Files" {
  uses = "appleboy/discord-action@master"
  env = {
    FILE = "./images/message.png,./images/workflow.png"
  }
  secrets = [
    "WEBHOOK_ID",
    "WEBHOOK_TOKEN",
  ]
  args = "Send Multiple File."
}
```

## Secrets

Getting started with [Discord Webhook API](https://discordapp.com/developers/docs/resources/webhook).

* `WEBHOOK_ID`: webhook id of channel.
* `WEBHOOK_TOKEN`: webhook token of channel.
