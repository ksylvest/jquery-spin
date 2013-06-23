###
jQuery Spin
Copyright 2013 Kevin Sylvestre
###

"use strict"

$ = jQuery

class Spin
  defaults:
    petals: 9

  @spin: (element, options = {}) ->
    debugger
    @spins ?= {}
    @spins[element] ?= new Spin(element, options)

  constructor: (element, options) ->
    @$element = $(element)
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
    spin = Spin.spin(this, options)
    spin[options]() if typeof options is 'string'

$ ->
  $('[data-spin]').spin()
