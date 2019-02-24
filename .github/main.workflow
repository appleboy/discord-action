workflow "Send Notification" {
  on = "push"
  resolves = [
    "Send Custom Message",
    "Send Color Message",
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

action "Send Color Message" {
  uses = "appleboy/discord-action@master"
  env = {
    COLOR = "#48f442"
  }
  secrets = [
    "WEBHOOK_ID",
    "WEBHOOK_TOKEN",
  ]
  args = "A new commit has been pushed with custom color."
}
