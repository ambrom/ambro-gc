-google-coder 

Google Coder as Docker image

(Example originate from article: http://pi.gadgetoid.com/article/running-google-coder-on-your-existing-raspberry-pi-or-desktop-pc)

Docker image

Google Coder is an awesome project that provides a complete coding environment in your browser. Originaly is made specifically for Raspberry Pi as it allows to access the hardware of the Pi via the GPIO's. But hereby we will use this image as example to run everywhere.

Build the image

docker build -t username/username-gc github.com/ambro-ma/ambro-gc

Run the image with Google Coder (a nodejs application)

docker run -d -p 8180:8180 -p 8181:8181 username/username-gc

Google Coder app is accessible  via a web browser: https://"IP-of-VPS":8181/, for example: https://192.172.1.17:8181/ Do not forget to use https!
