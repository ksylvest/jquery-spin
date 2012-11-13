###
jQuery Spinner
Copyright 2012 Kevin Sylvestre
###

"use strict"

$ = jQuery

class Spinner
  defaults:
    petals: 9
  
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
    @$element.data('spinner', undefined)
  
  configure: ->
    @$element.empty()
    for i in [0...@options.petals]
      $petal = $("<div />")
      @$element.append $petal

$.fn.spinner = (options) ->
  $(this).each ->
    $this = $(this)    
    data = $this.data('spinner')
    $this.data('spinner', data = new Spinner($this, options)) unless data?
    data[options]() if typeof options is 'string'

$ ->
  $('[data-spin="spinner"]').spinner()
