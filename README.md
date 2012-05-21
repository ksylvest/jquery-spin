# jQuery Spinner

Spinner is a simple jQuery plugin designed to animated spinners with only CSS and JavaScript.

## Installation

To install copy the *javascripts* and *stylesheets* directories into your project and add the following snippet to the header:

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.17/jquery-ui.min.js" type="text/javascript"></script>
    <script src="javascripts/jquery.spinner.js" type="text/javascript"></script>
    <link href="stylesheets/jquery.spinner.css" rel="stylesheet" type="text/css" />

Or, if you are using Ruby on Rails with the asset pipeline:

    # Gemfile
    gem 'jquery-rails'
    gem 'jquery-spinner-rails'

    # app/assets/javascripts/application.js
    //= require jquery
    //= require jquery.spinner
    //= require_self
    //= require_tree

    # app/assets/stylesheets/application.css
    /*
     *= require jquery.spinner
     *= require_self
     *= require_tree
    */

## Examples

Setting up a spinner is easy:

    <div class="spinner" data-spinner />

Some advanced options include:

    $('.spinner').spinner();
    $('.spinner').spinner('show');
    $('.spinner').spinner('hide');


## Copyright

Copyright (c) 2010 - 2012 Kevin Sylvestre. See LICENSE for details.
