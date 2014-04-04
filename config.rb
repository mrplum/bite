require 'cordova'

activate :cordova
activate :automatic_image_sizes
activate :livereload

with_layout :plain do
  page '/views'
end

configure :build do
  ignore 'js/lib/*'
  ignore 'css/lib/*'
  ignore 'js/vendor/*'
  ignore 'css/_*'
  ignore 'css/vendor/*'
  ignore 'images/_ignore/*'

  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
end
