###
grunt-phpcpd

Copyright (c) 2013 Andreas Lappe
http://kaeufli.ch
Licensed under the BSD license.
###

path = require 'path'
exec = (require 'child_process').exec

exports.init = (grunt) ->

  exports = config = {}
  cmd = done = null
  defaults =
    bin: 'phpcpd'
    minLines: 5
    minTokens: 70
    exclude: false
    names: '*.php'
    quiet: true
    verbose: false
    resultFile: false
    maxBuffer: 200*1024
    ignoreExitCode: false

  buildCommand = (dir) ->
    cmd = path.normalize config.bin
    cmd += " --log-pmd #{config.reportFile}" if config.reportFile
    cmd += " --min-lines #{config.minLines}"
    cmd += " --min-tokens #{config.minTokens}"
    cmd += " --exclude #{config.exclude}" if config.exclude
    cmd += " --names \"#{config.names}\"" if config.names
    cmd += " --quiet" if config.quiet
    cmd += " --verbose" if config.verbose
    cmd += " #{dir}"

  exports.setup = (runner) ->
    dir = path.normalize runner.data.dir
    config = runner.options defaults
    cmd = buildCommand dir
    grunt.log.writeln "Starting phpcpd (target: #{runner.target.cyan}) in #{dir.cyan}"
    grunt.verbose.writeln "Execute: #{cmd}"
    done = runner.async()

  exports.run = ->
    cmdOptions = maxBuffer: config.maxBuffer
    exec cmd, cmdOptions, (err, stdout, stderr) ->
      grunt.log.write stdout if stdout
      if err
        grunt.fatal err unless config.ignoreExitCode
      done()

  exports
