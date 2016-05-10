 

## EXAMPLE: Google Coder as Docker image

(Example originate from article: http://pi.gadgetoid.com/article/running-google-coder-on-your-existing-raspberry-pi-or-desktop-pc)

Google Coder is an awesome project that provides a complete coding environment in your browser. Originaly is made specifically for Raspberry Pi as it allows to access the hardware of the Pi via the GPIO's. But hereby we will use this image as examp
le and run it everywhere.

### Build the image

$ docker build -t username/example-gc https://github.com/ambrom/ambro-gc

### Run the image with Google Coder (a node.js application)

$ docker run -d -p 8180:8180 -p 8181:8181 username/example-gc

If everything goes well, Google Coder app is accessible  via a web browser at URL: https://"IP-of-VPS":8181/, for example: https://192.172.1.17:8181/ Do not forget to use https!
