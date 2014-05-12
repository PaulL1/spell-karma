karma = require 'gulp-karma'

module.exports = ( warlock ) ->
  warlock.flow 'karma-on-build',
    files: [ '<%= globs.test.karma_specs %>' ]
    tasks: [ 'webapp-build' ]
    
  .add( 90, 'karma.test', karma )
    gulp.src(testFiles).pipe(karma(
      configFile: '<%= globs.test.karma.config %>'
      action: "run"
    )).on "error", (err) ->
      throw errreturn
