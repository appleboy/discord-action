# 🚀 GitHub Actions 的 Discord

[English](./README.md) | [繁體中文](./README.zh-tw.md) | 简体中文

[GitHub Action](https://developer.github.com/actions/) 用于发送 [Discord](https://discordapp.com/) 通知消息。

[![Actions Status](https://github.com/appleboy/discord-action/workflows/discord%20message/badge.svg)](https://github.com/appleboy/discord-action/actions)

![message](./images/message.png)

**重要**: 仅支持 **Linux** [Docker](https://www.docker.com/) 容器。

## 功能

- [x] 发送多条消息
- [x] 发送多个文件

## 用法

如下所示发送自定义消息：

```yaml
name: discord message
on: [push]
jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: send custom message
        uses: appleboy/discord-action@v1.2.0
        with:
          webhook_url: ${{ secrets.WEBHOOK_URL }}
          message: The ${{ github.event_name }} event triggered first step.
```

## 输入变量

- webhook_url: 频道的 Webhook URL。
- webhook_id: 频道的 Webhook ID。
- webhook_token: 频道的 Webhook 令牌。
- username: (可选) 覆盖 Webhook 的默认用户名。
- avatar_url: (可选) 覆盖 Webhook 的默认头像。
- color: (可选) 嵌入的颜色代码。
- file: (可选) 发送文件消息。
- debug: (可选) 启用调试模式。

## 示例

使用 `webhook_url` 发送自定义消息：

```yaml
- name: send message
  uses: appleboy/discord-action@v1.2.0
  with:
    webhook_url: ${{ secrets.WEBHOOK_URL }}
    message: The ${{ github.event_name }} event triggered first step.
```

发送默认消息：

```yaml
- name: send message
  uses: appleboy/discord-action@v1.2.0
  with:
    webhook_url: ${{ secrets.WEBHOOK_URL }}
```

发送带有自定义颜色和用户名的消息：

```yaml
- name: send message
  uses: appleboy/discord-action@v1.2.0
  with:
    webhook_id: ${{ secrets.WEBHOOK_ID }}
    webhook_token: ${{ secrets.WEBHOOK_TOKEN }}
    color: "#48f442"
    username: "GitHub Bot"
    message: "A new commit has been pushed with custom color."
```

发送多个文件：

```yaml
- name: send message
  uses: appleboy/discord-action@v1.2.0
  with:
    webhook_id: ${{ secrets.WEBHOOK_ID }}
    webhook_token: ${{ secrets.WEBHOOK_TOKEN }}
    file: "./images/message.png"
    message: "Send Multiple File."
```
