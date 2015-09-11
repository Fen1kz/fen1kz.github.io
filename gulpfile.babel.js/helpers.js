/*
 * Task Plugin Options
 * ============================================================================
 */

'use strict';

let _ = require('lodash');

export default (gulp, $, config) => ({
    $: $
    , logger: {
        log: (plugin, msg) => $.util.log($.util.colors.cyan(plugin), msg)
        , warn: (plugin, msg) => $.util.log($.util.colors.yellow(plugin), msg)
        , err: (plugin, msg) => $.util.log($.util.colors.red(plugin), msg)
    }
    , getLogger: (name) => ({
        log: (msg) => $.util.log($.util.colors.cyan(name), msg)
        , warn: (msg) => $.util.log($.util.colors.yellow(name), msg)
        , err: (msg) => $.util.log($.util.colors.red(name), msg)
    })
});
