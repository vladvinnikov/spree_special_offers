class SpreeSpecialOffersHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_product_form_right, "admin/products/special_offer_fields"
  
  insert_after :admin_configurations_menu do
    "<%= configurations_menu_item(I18n.t('special_offers'), admin_special_offers_path, I18n.t('special_offers_desc')) %>"
  end
  
  insert_after :admin_configurations_sidebar_menu do
    %(<li<%== ' class="active"' if controller.controller_name == 'special_offers' %>><%= link_to t("special_offers"), admin_special_offers_path %></li>)
  end
  
  insert_after :special_offers, "special_offers/show"
end