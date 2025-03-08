# 🚀 GitHub Actions 的 Discord

[English](./README.md) | 繁體中文 | [简体中文](./README.zh-cn.md)

[GitHub Action](https://developer.github.com/actions/) 用於發送 [Discord](https://discordapp.com/) 通知消息。

[![Actions Status](https://github.com/appleboy/discord-action/workflows/discord%20message/badge.svg)](https://github.com/appleboy/discord-action/actions)

![message](./images/message.png)

**重要**: 僅支持 **Linux** [Docker](https://www.docker.com/) 容器。

## 特點

- [x] 發送多條消息
- [x] 發送多個文件

## 用法

如下所示發送自定義消息：

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
        uses: appleboy/discord-action@v1.2.0
        with:
          webhook_url: ${{ secrets.WEBHOOK_URL }}
          message: The ${{ github.event_name }} event triggered first step.
```

## 輸入變量

- webhook_url: 頻道的 Webhook URL。
- webhook_id: 頻道的 Webhook ID。
- webhook_token: 頻道的 Webhook token。
- username: (可選) 覆蓋默認的 webhook 用戶名。
- avatar_url: (可選) 覆蓋默認的 webhook 頭像。
- color: (可選) 嵌入的顏色代碼。
- file: (可選) 發送文件消息。
- debug: (可選) 啟用調試模式。

## 示例

使用 `webhook_url` 發送自定義消息：

```yaml
- name: send message
  uses: appleboy/discord-action@v1.2.0
  with:
    webhook_url: ${{ secrets.WEBHOOK_URL }}
    message: The ${{ github.event_name }} event triggered first step.
```

發送默認消息：

```yaml
- name: send message
  uses: appleboy/discord-action@v1.2.0
  with:
    webhook_url: ${{ secrets.WEBHOOK_URL }}
```

使用自定義顏色和用戶名發送消息：

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

發送多個文件：

```yaml
- name: send message
  uses: appleboy/discord-action@v1.2.0
  with:
    webhook_id: ${{ secrets.WEBHOOK_ID }}
    webhook_token: ${{ secrets.WEBHOOK_TOKEN }}
    file: "./images/message.png"
    message: "Send Multiple File."
```
