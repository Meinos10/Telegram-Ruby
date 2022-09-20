require "telegram/bot"

token = ""


Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when "/start"
      # Gülme tükürürüm <3
      kb = [
        Telegram::Bot::Types::InlineKeyboardButton.new(text: "Owner", url: "rewoxi.t.me")
      ]
      markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
      bot.api.send_message(chat_id: message.chat.id, text: "Merhaba #{message.from.first_name}", reply_markup: markup)
    end
  end
end
