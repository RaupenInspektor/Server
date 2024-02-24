const fs = require('fs');
const http = require('http');

async function sendPostRequest() {
    try {
        // Read the URL from the file
        const url = fs.readFileSync('url.txt', 'utf8').trim();

        // Read the data from 'login.txt'
        const data = fs.readFileSync('./myApp/login.txt', 'utf8').trim();

        // Prepare request options
        const options = {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            }
        };

        // Create a new HTTP request
        const req = http.request(url, options, (res) => {
            let body = '';

            // Read response data
            res.on('data', (chunk) => {
                body += chunk;
            });

            // Process response
            res.on('end', () => {
                if (res.statusCode >= 200 && res.statusCode < 300) {
                    console.log('Response:', body);
                } else {
                    console.error('HTTP error! status:', res.statusCode);
                }
            });
        });

        // Handle request errors
        req.on('error', (error) => {
            console.error('Request error:', error);
        });

        // Write request body
        req.write(JSON.stringify({ data }));

        // End the request
        req.end();

    } catch (error) {
        console.error('There was an error!', error);
    }
}

sendPostRequest();