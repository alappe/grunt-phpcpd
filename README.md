# grunt-phpcpd

> Grunt plugin for running [PHP Copy/Paste Detector (PHPCPD)](https://github.com/sebastianbergmann/phpcpd).

_This plugin is developed for Grunt `0.4.0` and is not tested for backward compatibility with Grunt `0.3.x`._

## Getting Started

1. Install this grunt plugin with the follwing command:

```shell
npm install grunt-phpcpd --save-dev
```

2. [Install PHPCPD](https://github.com/sebastianbergmann/phpcpd#installation)

3. Add this to your project's `Gruntfile.js`:

```js
grunt.loadNpmTasks('grunt-phpcpd');
```

### PHPCPD task

_Run this task with the `grunt phpcpd` command._

_This task is a [multi task][] so any targets, files and options should be specified according to the [multi task][] documentation._

[multi task]: https://github.com/gruntjs/grunt/wiki/Configuring-tasks

### Usage Example

```js
phpcpd: {
  application: {
	  dir: 'application'
	}
	options: {
	  quiet: true
	}
}
```

### Target Properties

#### dir
Type: `String`

The file or directory where phpmd should search for files.

### Options
#### bin
Type: `String`
Default: `'phpcpd'`

The binary name if it is in your PATH or the full path if not.

#### reportFile
Type: `String`
Default: `false`

Set a path and filename here to write to a file, otherwise it will write to stdout.

#### exclude
Type: `String`
Default: `false`

Exclude <dir> from code analysis.

#### minLines
Type: `Number`
Default: `5`

Minimum number of identical lines.

#### minTokens
Type: `Number`
Default: `70`

Minimum number of identical tokens.

#### names
Type: `String`
Default: `'*.php'`

A comma-separated list of file names to check.

#### quiet
Type: `Boolean`
Default: `true`

Only print the final summary.

#### verbose
Type: `Boolean`
Default: `false`

Print duplicated code.

#### resultFile
Type: `String`
Default: `false`

Write report in PMD-CPD XML format to <file>.

#### maxBuffer
Type: `Number`
Default: `200*1024`

Override the maxBuffer-Size of nodejs's exec() function if you expect a long output on stdout.

#### ignoreExitCode
Type: `Boolean`
Default: `false`

Ignore the exit code if you don't want the task to fail (e.g. CI-Server).
