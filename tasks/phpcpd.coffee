###
grunt-phpcpd

Copyright (c) 2013 Andreas Lappe
http://kaeufli.ch
Licensed under the BSD license.
###

module.exports = (grunt) ->
  phpcpd = (require './lib/phpcpd').init grunt

  grunt.registerMultiTask 'phpcpd', 'Run phpcpd', ->
    phpcpd.setup @
    phpcpd.run()
