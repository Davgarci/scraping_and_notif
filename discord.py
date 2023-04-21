# 1. log in to Discord
# 2. add & create a server
# 3. edit the channel & create a webhook
# 4. pip install discordwebhook
from discordwebhook import Discord

discord = Discord(url="wwww.discord_server_url.com")
discord.post(content="THERE ARE CHANGES IN THE WEBSITE")