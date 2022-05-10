const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/sec/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: 'popper.js'
  })
  )

module.exports = environment
