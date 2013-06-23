// Generated by CoffeeScript 1.6.3
/*
jQuery Spin
Copyright 2013 Kevin Sylvestre
*/


(function() {
  "use strict";
  var $, Spinner;

  $ = jQuery;

  Spinner = (function() {
    Spinner.prototype.defaults = {
      petals: 9
    };

    function Spinner($element, options) {
      this.$element = $element;
      this.options = $.extend({}, this.defaults, options);
      this.configure();
    }

    Spinner.prototype.show = function() {
      return this.$element.animate({
        opacity: 1.0
      });
    };

    Spinner.prototype.hide = function() {
      return this.$element.animate({
        opacity: 0.0
      });
    };

    Spinner.prototype.destroy = function() {
      this.$element.empty();
      return this.$element.data('spin', void 0);
    };

    Spinner.prototype.configure = function() {
      var $petal, i, _i, _ref, _results;
      this.$element.empty();
      _results = [];
      for (i = _i = 0, _ref = this.options.petals; 0 <= _ref ? _i < _ref : _i > _ref; i = 0 <= _ref ? ++_i : --_i) {
        $petal = $("<div />");
        _results.push(this.$element.append($petal));
      }
      return _results;
    };

    return Spinner;

  })();

  $.fn.spin = function(options) {
    return $(this).each(function() {
      var $this, spinner;
      $this = $(this);
      spinner = $this.data('spinner');
      if (spinner == null) {
        $this.data('spinner', spinner = new Spinner($this, options));
      }
      if (typeof options === 'string') {
        return spinner[options]();
      }
    });
  };

  $(function() {
    return $('[data-spin]').spin();
  });

}).call(this);
