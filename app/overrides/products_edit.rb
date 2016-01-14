Deface::Override.new(:virtual_path => 'spree/home/index',
                     :name => "remove_sidebar",
                     :remove => "[data-hook='homepage_sidebar_navigation']")

Deface::Override.new(:virtual_path => 'spree/products/index',
                     :name => "remove_sidebar",
                     :remove => "[data-hook='homepage_sidebar_navigation']")

Deface::Override.new(:virtual_path => 'spree/shared/_header',
                     :name => "remove_logo",
                     :replace_contents => "#logo",
			:text => "<%= image_tag 'spree_50.png' %>")

Deface::Override.new(:virtual_path => "spree/shared/_nav_bar",
                     :name => "remove_searchbar_li_tag",
                     :remove => "#nav-bar[data-hook] *, [data-hook='nav'] *")

Deface::Override.new(:virtual_path => "spree/shared/_nav_bar",
                     :name => "remove_login_li_tag",
                     :remove => "#search-bar[data-hook] *, [data-hook='search'] *")

Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                     :name => "move login",
                     :insert_before => '#link-to-cart',
                     :partial => "spree/shared/login_bar")