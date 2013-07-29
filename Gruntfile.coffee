#
# grunt-phpmd
#
#
'use strict'

module.exports = (grunt) ->
  grunt.initConfig
    phpcpd:
      test:
        dir: 'test'
      options:
        bin: 'vendor/bin/phpcpd'

  grunt.loadTasks 'tasks'

  grunt.registerTask 'default', ['phpcpd']

