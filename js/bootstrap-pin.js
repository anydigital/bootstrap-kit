/* ==========================================================
 * bootstrap-pin.js v2.3.2.1
 * http://tonystar.ru/projects/bootstrap-extra#pin
 * ==========================================================
 * Copyright (c) 2013 Anton Staroverov
 * ========================================================== */


!function ($) {

  "use strict"; // jshint ;_;


 /* PIN CLASS DEFINITION
  * ==================== */

  var Pin = function (element, options) {
    this.options = $.extend({}, $.fn.pin.defaults, options)
    this.$document = $(document)
      .on('change.pin.data-api', $.proxy(this.init, this))
    this.$window = $(window)
      .on('resize.pin.data-api', $.proxy(this.init, this))
    this.$container = $(options.container).css('position', 'relative')
    this.$element = $(element).addClass('pin').wrap('<div>')
    this.offset = {}

    this.init()
  }

  Pin.prototype.init = function () {
    var offset = {
      top: this.$element.parent().offset().top
    , bottom: this.$document.height() - this.$container.offset().top - this.$container.height()
    }
    if (offset == this.offset) return
    this.offset = offset

    // Set the proper width to the element:
    this.$element.width(this.$element.parent().width())

    // Affix the element using Bootstrap Affix:
    this.$element.affix({offset: offset})
  }


 /* PIN PLUGIN DEFINITION
  * ===================== */

  var old = $.fn.pin

  $.fn.pin = function (option) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('pin')
        , options = typeof option == 'object' && option

      if (!data) $this.data('pin', (data = new Pin(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  $.fn.pin.Constructor = Pin

  $.fn.pin.defaults = {
    container: 'body'
  }


 /* PIN NO CONFLICT
  * =============== */

  $.fn.pin.noConflict = function () {
    $.fn.pin = old
    return this
  }


 /* PIN DATA-API
  * ============ */

  $(function () {
    $('head').append($('<style>').html([
      '.pin.affix-top { position: static }'
    , '.pin.affix { position: fixed; top: 0; bottom: auto }'
    , '.pin.affix-bottom { position: absolute; top: auto; bottom: 0 }'
    ].join('\n')))
  })
  $(window).on('load', function () {
    $('[data-spy="pin"]').each(function () {
      var $this = $(this)
        , data = $this.data()

      $this.pin(data)
    })
  })


}(window.jQuery);
