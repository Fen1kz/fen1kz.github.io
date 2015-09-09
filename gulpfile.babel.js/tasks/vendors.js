let eventStream = require('event-stream');

export default function (gulp, $, config) {
    let dirs = config.dirs;
    let globs = config.globs;

    let vendors = {
        js: ['node_modules/jquery/dist/jquery.min.js'
            , 'node_modules/moment/min/moment.min.js']
        , css: ['node_modules/prismjs/dist/prism-default/prism-default.css']
    };

    gulp.task('vendor:js', () => {
        return gulp.src(vendors.js)
            .pipe($.expectFile(vendors.js))
            .pipe($.concat('vendor.min.js'))
            .pipe(gulp.dest(dirs.dist$.scripts))
    });

    gulp.task('vendor:css', () => {
        return gulp.src(vendors.css)
            .pipe($.expectFile(vendors.css))
            .pipe($.concat('vendor.min.css'))
            .pipe(gulp.dest(dirs.dist$.styles))
    });

    gulp.task('vendor', ['vendor:js', 'vendor:css']);
}