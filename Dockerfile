# We're using Ubuntu 20.10
FROM zivolopyu/zivo-projects:buster

RUN git clone -b ⚡𝙕𝙄𝙑𝙊-𝙐𝙎𝙀𝙍𝘽𝙊𝙏⚡ https://github.com/zivodarka/ZIVO-USERBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/zivodarka/ZIVO-USERBOT/ZIVO-USERBOT/requirements.txt

CMD ["python3","-m","userbot"]
