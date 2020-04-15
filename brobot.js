const fs = require('fs');
const Discord = require('discord.js');
const { prefix } = require('./brobot.json');

const client = new Discord.Client();
client.commands = new Discord.Collection();

client.once('ready', () => {
    console.info('Ready!');
});

client.on('message', message => {
    if (!message.content.startsWith(prefix) || message.author.bot) return;
    const cmdArgs = message.content.slice(prefix.length).split(/ +/);
    const cmd = cmdArgs.shift().toLowerCase();
        if (cmd === `ping`) {
        message.channel.send(`${cmd}\n${cmdArgs}`);
    }
});

client.login(process.env.TOKEN);