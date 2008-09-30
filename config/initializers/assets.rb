assets_mgr.macker_guide do |a|
  [:sh, :main].each { |file| a.add_css file }
  [:jquery, 'jquery-fx', 'jquery-ui', :sh_core, :sh_brush_ruby, :sh_brush_fs].each { |file| a.add_js file }
end