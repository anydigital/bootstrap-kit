#!/bin/bash
set -e

#
# Bootstrap v4.0.0-alpha.2 (http://getbootstrap.com)
# Copyright 2011-2015 Twitter, Inc.
# Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
#

# Core variables and mixins
cat ../node_modules/bootstrap/scss/_variables.scss

# Toggles
#
# Used in conjunction with global variables to enable certain theme features.

echo '
@mixin box-shadow($shadow...) {
  @if $enable-shadows {
    box-shadow: $shadow;
  }
}

@mixin transition($transition...) {
  @if $enable-transitions {
    transition: $transition;
  }
}
'

# Utilities
cat ../node_modules/bootstrap/scss/mixins/_breakpoints.scss
cat ../node_modules/bootstrap/scss/mixins/_hover.scss
cat ../node_modules/bootstrap/scss/mixins/_image.scss
cat ../node_modules/bootstrap/scss/mixins/_label.scss
cat ../node_modules/bootstrap/scss/mixins/_reset-filter.scss
cat ../node_modules/bootstrap/scss/mixins/_resize.scss
cat ../node_modules/bootstrap/scss/mixins/_screen-reader.scss
cat ../node_modules/bootstrap/scss/mixins/_size.scss
cat ../node_modules/bootstrap/scss/mixins/_tab-focus.scss
cat ../node_modules/bootstrap/scss/mixins/_reset-text.scss
cat ../node_modules/bootstrap/scss/mixins/_text-emphasis.scss
cat ../node_modules/bootstrap/scss/mixins/_text-hide.scss
cat ../node_modules/bootstrap/scss/mixins/_text-truncate.scss

# Components
cat ../node_modules/bootstrap/scss/mixins/_alert.scss
cat ../node_modules/bootstrap/scss/mixins/_buttons.scss
cat ../node_modules/bootstrap/scss/mixins/_cards.scss
cat ../node_modules/bootstrap/scss/mixins/_pagination.scss
cat ../node_modules/bootstrap/scss/mixins/_lists.scss
cat ../node_modules/bootstrap/scss/mixins/_list-group.scss
cat ../node_modules/bootstrap/scss/mixins/_nav-divider.scss
cat ../node_modules/bootstrap/scss/mixins/_forms.scss
cat ../node_modules/bootstrap/scss/mixins/_progress.scss
cat ../node_modules/bootstrap/scss/mixins/_table-row.scss

# Skins
cat ../node_modules/bootstrap/scss/mixins/_background-variant.scss
cat ../node_modules/bootstrap/scss/mixins/_border-radius.scss
cat ../node_modules/bootstrap/scss/mixins/_gradients.scss

# Layout
cat ../node_modules/bootstrap/scss/mixins/_clearfix.scss
cat ../node_modules/bootstrap/scss/mixins/_center-block.scss
# cat ../node_modules/bootstrap/scss/mixins/_navbar-align.scss
cat ../node_modules/bootstrap/scss/mixins/_grid-framework.scss
cat ../node_modules/bootstrap/scss/mixins/_grid.scss
cat ../node_modules/bootstrap/scss/mixins/_pulls.scss

# Reset and dependencies
cat ../node_modules/bootstrap/scss/_normalize.scss
cat ../node_modules/bootstrap/scss/_print.scss

# Core CSS
cat ../node_modules/bootstrap/scss/_reboot.scss
cat ../node_modules/bootstrap/scss/_type.scss
cat ../node_modules/bootstrap/scss/_images.scss
cat ../node_modules/bootstrap/scss/_code.scss
cat ../node_modules/bootstrap/scss/_grid.scss
cat ../node_modules/bootstrap/scss/_tables.scss
cat ../node_modules/bootstrap/scss/_forms.scss
cat ../node_modules/bootstrap/scss/_buttons.scss

# Components
cat ../node_modules/bootstrap/scss/_animation.scss
cat ../node_modules/bootstrap/scss/_dropdown.scss
cat ../node_modules/bootstrap/scss/_button-group.scss
cat ../node_modules/bootstrap/scss/_input-group.scss
cat ../node_modules/bootstrap/scss/_custom-forms.scss
cat ../node_modules/bootstrap/scss/_nav.scss
cat ../node_modules/bootstrap/scss/_navbar.scss
cat ../node_modules/bootstrap/scss/_card.scss
cat ../node_modules/bootstrap/scss/_breadcrumb.scss
cat ../node_modules/bootstrap/scss/_pagination.scss
cat ../node_modules/bootstrap/scss/_pager.scss
cat ../node_modules/bootstrap/scss/_labels.scss
cat ../node_modules/bootstrap/scss/_jumbotron.scss
cat ../node_modules/bootstrap/scss/_alert.scss
cat ../node_modules/bootstrap/scss/_progress.scss
cat ../node_modules/bootstrap/scss/_media.scss
cat ../node_modules/bootstrap/scss/_list-group.scss
cat ../node_modules/bootstrap/scss/_responsive-embed.scss
cat ../node_modules/bootstrap/scss/_close.scss

# Components w/ JavaScript
cat ../node_modules/bootstrap/scss/_modal.scss
cat ../node_modules/bootstrap/scss/_tooltip.scss
cat ../node_modules/bootstrap/scss/_popover.scss
cat ../node_modules/bootstrap/scss/_carousel.scss

# Utility classes
cat ../node_modules/bootstrap/scss/_utilities.scss
cat ../node_modules/bootstrap/scss/_utilities-background.scss
cat ../node_modules/bootstrap/scss/_utilities-spacing.scss
cat ../node_modules/bootstrap/scss/_utilities-responsive.scss
