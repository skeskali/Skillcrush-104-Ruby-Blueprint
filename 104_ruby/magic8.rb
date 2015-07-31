require 'rubygems'
require 'twilio-ruby'

account_sid = "ACcd92f602148a9d4ae736bfee1f6081a3"
auth_token = "47a9f3ca6b174f0263efd87a34c645fa"

@client = Twilio::REST::Client.new(account_sid, auth_token)

puts "Think of a question and I'll text your fortune."

question = gets.chomp

answer = [
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes, definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy, try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Don't count on it",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
]

fortune = answer.shuffle.sample

message = @client.account.messages.create(
    :from => "+17786550584",
    :to => "+16047238687",
    :body => "#{fortune}"
    )

puts message.to