FROM node:6

RUN apt-get update && apt-get install -y xvfb chromium

ADD xvfb-chromium /usr/bin/xvfb-chromium

RUN ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser
RUN chmod +x /usr/bin/chromium-browser
