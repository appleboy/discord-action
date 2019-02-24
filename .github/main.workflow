workflow "Send Notification" {
  on = "push"
  resolves = [
    "Send Custom Message",
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
