# Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
#                      :name => "blog_admin_tabs",
#                      :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
#                      :text => "<%= tab(:blog_entries, :label => 'Blog', :url => spree.admin_blog_entries_path, :icon => 'file') if can? :manage, Spree::BlogEntry %>",
#                      :disabled => false)

Deface::Override.new(   virtual_path: 'spree/layouts/admin',
    name: 'blog_admin_sidebar_menu',
    insert_bottom: '#main-sidebar',
    partial: 'spree/admin/shared/blog_sidebar_menu',
    original: '120a57c9d1454cc9a61d7e32d4099622d713af24')
