<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>{file.meta.title}</title><!-- Compiled and minified CSS -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="/css/style.min.css">
    <link rel="stylesheet" href="/css/vendor.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="/js/vendor.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
    <script src="/js/bundle.js"></script>
</head>
<body>
<nav>
    <div class="nav-wrapper container">
        <a href="/" class="logo">Lavasystems Corp.</a>
        <div class="valign-wrapper right height-100p">
            <a href="#" data-activates="root-side-nav" class="side-nav-btn right hide-on-large-only valign">
                <i class="material-icons">menu</i></a>
        </div>
        <ul class="right hide-on-med-and-down">
            <li><a href="/tags">Tags</a></li>
            <li><a href="/collections">Collections</a></li>
        </ul>
        <ul class="side-nav" id="root-side-nav">
            <li><a href="/tags">Tags</a></li>
            <li><a href="/collections">Collections</a></li>
        </ul>
    </div>
</nav>
<div class="container">
    {+body}
        <div class="row padding">
            <div class="col s6">{file.breadcrumbs|s}</div>
            <div class="col s6 timestamp-to-date font-size-85">{file.meta.timestamp}</div>
        </div>
        {+content}
            <div class="row">
                <h1>{^file.meta.header}{file.meta.title|s}{:else}{file.meta.header|s}{/file.meta.header}</h1>

                <div>{file.contents|s}</div>
            </div>
        {/content}
    {/body}
</div>
</body>
</html>