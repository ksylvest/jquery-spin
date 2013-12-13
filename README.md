# jQuery Spin

Spin is a jQuery plugin that creates animated loading indicators with only CSS and JavaScript.

## Installation

To install copy the *javascripts* and *stylesheets* directories into your project and add the following snippet to the header:

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js" type="text/javascript"></script>
    <script src="javascripts/jquery.spin.js" type="text/javascript"></script>
    <link href="stylesheets/jquery.spin.css" rel="stylesheet" type="text/css" />

This plugin is also registered under http://bower.io/ to simplify integration. Try:

    npm install -g bower
    bower install spin

Lastly this plugin is registered as a https://rails-assets.org/ to simplify integration with Ruby on Rails applications:

**Gemfile**

    + source 'https://rails-assets.org'
    ...
    + gem 'rails-assets-spin'

**application.css**

    /*
     ...
     *= require spin
     ...
    */

**application.js**

    //= require jquery
    ...
    //= require spin

## Examples

Setting up a spinner is simple. The following snippet is all that is needed:

    <div class="spin" data-spin />

To add spinners manually try:

    $('.spin').spin();
    $('.spin').spin('show');
    $('.spin').spin('hide');

## Styling
    
Styling a spinner is easy:

    .spin
    {
      background: #444; /* outline */
      > *
      {
        background: #EEE; /* hand */
      }
    }

## Status

[![Status](https://travis-ci.org/ksylvest/jquery-spin.png)](https://travis-ci.org/ksylvest/jquery-spin)

## Copyright

Copyright (c) 2010 - 2012 Kevin Sylvestre. See LICENSE for details.
