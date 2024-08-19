



<!DOCTYPE html>
<html>
<head>
    <title>Embedded Website Full Screen</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        iframe {
            width: 100%;
            height: 100%;
            border: none;
        }
    </style>
</head>
<body>
    <iframe id="myIframe" src="https://imadejptr.github.io/assets/unity/u.html?g=hole-io"></iframe>

    <script>
        // Modify the user agent before loading the iframe
        var originalNavigator = navigator;
        Object.defineProperty(window, 'navigator', {
            value: {
                userAgent: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36'
            },
            configurable: true,
            enumerable: true,
            writable: false
        });

        // Create the iframe after modifying the user agent
        var iframe = document.getElementById('myIframe');
        iframe.src = iframe.src; // Reload the iframe

        // Restore the original navigator object
        Object.defineProperty(window, 'navigator', {
            value: originalNavigator,
            configurable: true,
            enumerable: true,
            writable: false
        });
    </script>
</body>
</html>
