<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>-->
    <title>{file.meta.title}</title><!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
</head>
<body>
{+body}
<h1>{file.meta.title}</h1>

<div>{file.contents|s}</div>
{/body}
</body>
</html>