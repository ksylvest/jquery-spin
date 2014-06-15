###
jQuery Spin
Copyright 2013 Kevin Sylvestre
1.1.4
###

"use strict"

$ = jQuery

class Spinner
  defaults:
    petals: 9

  constructor: ($element, options) ->
    @$element = $element
    @options = $.extend {}, @defaults, options
    @configure()
  
  show: ->
    @$element.animate(opacity: 1.0)

  hide: ->
    @$element.animate(opacity: 0.0)
  
  destroy: ->
    @$element.empty()
    @$element.data('spin', undefined)
  
  configure: ->
    @$element.empty()
    for i in [0...@options.petals]
      $petal = $("<div />")
      @$element.append $petal

$.fn.spin = (options) ->
  $(this).each ->
    $this = $(this)    
    spinner = $this.data('spinner')
    $this.data('spinner', spinner = new Spinner($this, options)) unless spinner?
    spinner[options]() if typeof options is 'string'

$ ->
  $('[data-spin]').spin()
