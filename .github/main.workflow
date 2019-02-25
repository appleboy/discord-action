workflow "Send Notification" {
  on = "push"
  resolves = [
    "Send Custom Message",
    "Send Default Message",
    "Send Color Message",
    "Send Multiple Files",
  ]
}

action "Send Custom Message" {
  uses = "appleboy/discord-action@master"
  secrets = [
    "WEBHOOK_ID",
    "WEBHOOK_TOKEN",
  ]
  args = "A new commit has been pushed."
}

action "Send Default Message" {
  uses = "appleboy/discord-action@master"
  secrets = [
    "WEBHOOK_ID",
    "WEBHOOK_TOKEN",
  ]
}

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
