{spawn, exec} = require 'child_process'

command = (name, args...) ->
  proc = spawn name, args
  
  proc.stderr.on 'data', (buffer) -> 
    console.log buffer.toString()
    
  proc.stdout.on 'data', (buffer) -> 
    console.log buffer.toString()
  
  proc.on 'exit', (status) -> process.exit(1) if status != 0

task 'watch', 'HAML, SASS and CoffeeScript watching', (options) ->
  command 'kicker', '--silent', '--quiet', '--execute', 'cake compile'

task 'compile', 'HAML, SASS and CoffeeScript compilation', (opions) ->
  command 'sass', '--update', 'stylesheets:stylesheets', '--require', './bourbon/lib/bourbon.rb'
  command 'coffee', '--compile', 'javascripts'
  command 'haml', 'sample.haml', 'sample.html'
