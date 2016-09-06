<?php 
/* ======================================
 * Add theme custom styles 
 * ====================================== */

global $zozo_options, $post; 

$object_id = get_queried_object_id();
	
if( ( get_option('show_on_front') && get_option('page_for_posts') && is_home() ) || ( get_option('page_for_posts') && is_archive() && ! is_post_type_archive() ) 
&& ! ( is_tax('product_cat') || is_tax('product_tag' ) ) || ( get_option('page_for_posts') && is_search() ) ) {
	$post_id = get_option('page_for_posts');		
} else {
	if( isset( $object_id ) ) {
		$post_id = $object_id;
	}

	if( ZOZO_WOOCOMMERCE_ACTIVE ) {
		if( is_shop() ) {
			$post_id = get_option('woocommerce_shop_page_id');
		}
	}
	if ( ! is_singular() ) {
		$post_id = false;
	}
}

// Custom Color Scheme
$custom_color = '';
if( isset( $zozo_options['zozo_custom_scheme_color'] ) && $zozo_options['zozo_custom_scheme_color'] != '' ) {
	$custom_color = $zozo_options['zozo_custom_scheme_color'];
	$custom_color_rgb = zozo_hex2rgb( $custom_color );
	$custom_color_dark = zozo_color_luminance( $custom_color, '-0.2' );
	
	// Color
	echo 'a, blockquote:before, blockquote:after, .typo-dark h1 > a:hover, .typo-dark h1 > a:active, .typo-dark h1 > a:focus, .typo-dark h2 > a:hover, .typo-dark h2 > a:active, .typo-dark h2 > a:focus, .typo-dark h3 > a:hover, .typo-dark h3 > a:active, .typo-dark h3 > a:focus, .typo-dark h4 > a:hover, .typo-dark h4 > a:active, .typo-dark h4 > a:focus, 
.typo-dark h5 > a:hover, .typo-dark h5 > a:active, .typo-dark h5 > a:focus, .typo-dark h6 > a:hover, .typo-dark h6 > a:active, .typo-dark h6 > a:focus, .typo-light h1 > a:hover, .typo-light h1 > a:active, .typo-light h1 > a:focus, .typo-light h2 > a:hover, .typo-light h2 > a:active, .typo-light h2 > a:focus, .typo-light h3 > a:hover, .typo-light h3 > a:active, .typo-light h3 > a:focus, .typo-light h4 > a:hover, .typo-light h4 > a:active, .typo-light h4 > a:focus, .typo-light h5 > a:hover, .typo-light h5 > a:active, .typo-light h5 > a:focus, .typo-light h6 > a:hover, .typo-light h6 > a:active, .typo-light h6 > a:focus, .bg-style.bg-normal .btn, .bg-style.bg-normal .btn.btn-default, .bg-style.bg-normal input[type="submit"], .bg-style.bg-normal button[type="submit"], .bg-style.bg-normal .vc_general.vc_btn3.vc_btn3-color-primary-bg, .bg-style.bg-normal .vc_btn.vc_btn-primary-bg,
.bg-style.bg-normal .vc_general.vc_btn3.vc_btn3-color-juicy-pink, .btn-transparent-black:hover, .btn.btn-transparent-black:hover, .btn-transparent-white:hover, .btn.btn-transparent-white:hover, .btn-transparent-black-inverse, .btn.btn-transparent-black-inverse, .btn-transparent-white-inverse, .btn.btn-transparent-white-inverse, .btn-transparent-color, .btn.btn-transparent-color, .btn-transparent-color-inverse:hover, .btn.btn-transparent-color-inverse:hover, .parallax-background .parallax-content a.btn:hover, .parallax-background .parallax-content a.btn:active, .parallax-background .parallax-content a.btn:focus, .bg-style.dark-wrapper .vc_general.vc_cta3 .vc_cta3-actions .vc_general.vc_btn3.vc_btn3-style-transparent.vc_btn3-color-primary-bg, .vc_btn3-color-primary-bg.vc_btn3-style-outline, .vc_general.vc_btn3.vc_btn3-style-transparent.vc_btn3-color-primary-bg, .header-logo-section .navbar-nav > li a:hover, .header-logo-section .header-contact-details li > a:hover.zozo-main-nav > li > a:hover, .header-logo-section .header-contact-details > li.header-phone:before, .header-logo-section .header-contact-details > li.header-email:before, .header-logo-section .header-details-box .header-details-icon, .zozo-main-nav > li > a:hover, .zozo-main-nav > li:hover > a, .zozo-main-nav > li.active > a, .header-section .header-main-section li i:hover, .header-section .header-main-section li a:hover, .zozo-main-nav li.current-menu-ancestor > a, .zozo-main-nav li.current-menu-parent > a, .zozo-main-nav li.current-menu-item > a, .zozo-main-nav.navbar-nav .dropdown-menu > li > a:focus, .zozo-main-nav.navbar-nav .dropdown-menu > li > a:hover, .zozo-main-nav.navbar-nav .sub-menu > li > a:focus, .zozo-main-nav.navbar-nav .sub-menu > li > a:hover, .dropdown-menu > li.dropdown:hover > a, .sub-menu > li.dropdown:hover > a, .dropdown-menu > .active > a, .dropdown-menu > .active > a:focus, .dropdown-menu > .active > a:hover, .menu-item.active > a, .mobile-sub-menu > li > a:hover, .mobile-sub-menu > li > a:active, .mobile-sub-menu > li > a:focus, .header-section.header-skin-light .zozo-megamenu-widgets-container .widget li a:hover, .header-section.header-skin-dark .zozo-megamenu-widgets-container .widget li a:hover, .sliding-bar-widgets .widget.widget_recent_entries li a:hover, .sliding-bar-widgets .widget.widget_recent_comments li .comment-author-link a:hover, .sliding-bar-widgets .widget.zozo_category_posts_widget li a:hover, .sliding-bar-widgets .widget.widget_categories li a:hover, .sliding-bar-widgets .widget.widget_archive li a:hover, .sliding-bar-widgets .widget.widget_meta li a:hover, .sliding-bar-widgets .widget.widget_nav_menu li a:hover,
.sliding-bar-widgets .widget.widget_recent_entries li a:focus, .sliding-bar-widgets .widget.widget_recent_comments li .comment-author-link a:focus, .sliding-bar-widgets .widget.zozo_category_posts_widget li a:focus, .sliding-bar-widgets .widget.widget_categories li a:focus, .sliding-bar-widgets .widget.widget_archive li a:focus, .sliding-bar-widgets .widget.widget_meta li a:focus, .sliding-bar-widgets .widget.widget_nav_menu li a:focus, .sliding-bar-widgets .zozo-latest-posts .posts-title a:hover, .sliding-bar-widgets .zozo-latest-posts .posts-title a:focus, .sliding-bar-widgets .tweet-user-name a:hover, .sliding-bar-widgets .tweet-user-name a:focus, .zozo-icon.icon-bordered.icon-shape, .zozo-icon.icon-light.icon-shape, .zozo-feature-box .grid-item .grid-icon-wrapper .grid-icon.icon-none, .zozo-feature-box .grid-item .grid-icon-wrapper .grid-icon.icon-shape.icon-transparent, .zozo-feature-box .grid-item .grid-icon-wrapper .grid-icon.icon-shape.icon-pattern, .zozo-feature-box .grid-item .grid-icon-wrapper .zozo-icon.icon-dark.icon-shape, .zozo-feature-box .grid-item .grid-icon-wrapper .grid-icon.icon-shape.icon-bordered, .zozo-features-list-wrapper .features-list-inner .features-icon, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-color .zozo-icon.icon-light.icon-shape, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-color .grid-icon.icon-none.icon-skin-light, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-color .grid-icon.icon-none.icon-skin-dark, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-bg-icon .grid-icon.icon-shape, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-all .grid-icon.icon-shape, .zozo-accordion.zozo-accordion-default .panel-title a, .zozo-accordion.zozo-accordion-classic .panel-title a, .zozo-counter .counter-icon > i, .dropcap, .zozo-vc-service-box:hover .service-box-content h4, .team-item .team-member-name a:hover, .testimonial-item .testimonial-content blockquote:before, .testimonial-item .testimonial-content blockquote:after, .zozo-video-controls #video-play:hover, .zozo-video-controls #video-play:focus, .owl-carousel.owl-theme .owl-controls .owl-nav div, .pricing-plan-list .zozo-price-item h6, .zozo-pricing-table-wrapper:hover .zozo-pricing-item h4.pricing-title, .zozo-pricing-table-wrapper:hover .pricing-icon-wrapper > i, .zozo-pricing-item .pricing-cost-wrapper .pricing-cost h3, .portfolio-box a:hover, .portfolio-box h5, .portfolio-custom-text span, .pagination > li > span.current, .pagination > li > a:hover, .pagination > li > span:hover, .pagination > li > a:focus, .pagination > li > span:focus, .latest-posts-layout .entry-meta .read-more > a:after, .large-posts h2.entry-title a:hover, .large-posts h2.entry-title a:focus, .entry-meta-wrapper .entry-meta i, .entry-meta-wrapper .entry-meta .meta-name, .entry-meta a:hover, .entry-meta a:active, .entry-meta a:focus, .post .btn-more.read-more-link, .tags-title, .sharing-title, .post-tags > a:hover, .post-tags > a:active, .post-tags > a:focus, .comment-form .zozo-input-group-addon .input-group-addon, .comment-container span i, .comment-container a i, .entry-title a:hover, .related-content-wrapper h5 .post-link:hover, .latest-posts-menu .entry-date i, .zozo-tabs-widget .tabs .zozo-tab-content a:hover, .footer-widgets .widget a:hover, .featured-caption .featured-caption-inner .featured-post-title a:hover, .zozo-input-group-addon .input-group-addon, .contact-info-inner h4.contact-widget-title, .contact-info-inner h5 a, .footer-section.footer-skin-dark .widget.widget_recent_entries li a:hover,  .footer-section.footer-skin-dark .widget.widget_recent_comments li .comment-author-link a:hover, .footer-section.footer-skin-dark .widget.zozo_category_posts_widget li a:hover, .footer-section.footer-skin-dark .widget.widget_categories li a:hover, .footer-section.footer-skin-dark .widget.widget_archive li a:hover, .footer-section.footer-skin-dark .widget.widget_meta li a:hover, .footer-section.footer-skin-dark .widget.widget_nav_menu li a:hover, .footer-section.footer-skin-dark .widget li .tweet-user-name a:hover, .footer-section.footer-skin-dark .widget.zozo_popular_posts_widget .posts-title > a:hover, .footer-section.footer-skin-dark .zozo-tabs-widget a:hover, .footer-section.footer-skin-dark .widget.widget_pages li > a:hover, .woo-cart-item .remove-cart-item:hover, .woocommerce ul.products li.product h3 > a:hover, .woo-dropdown > li strong:hover, .woocommerce .price > .amount, .woocommerce-page .price > .amount, .price ins > .amount, .wpb_row .wpb_column .wpb_wrapper .wcmp-product .wcmp-product-desc h2:hover, .wpb_row .wpb_column .wpb_wrapper .wcmp-product .wcmp-product-desc h2:focus, .woocommerce #reviews #comments ol.commentlist li .comment-text p.meta strong, .woocommerce-page #reviews #comments ol.commentlist li .comment-text p.meta strong, .order-total span.amount, .shop_table.cart td.product-name > a:hover, .shop_table.cart td.product-price .amount, .shop_table.cart td.product-subtotal .amount, .woocommerce .cart-collaterals .cart_totals table tr.order-total td .amount, .woocommerce-page .cart-collaterals .cart_totals table tr.order-total td .amount, .zozo-woocommerce-thank-you .thank-you-text, .woo-latest-slider-item .product-buttons-overlay .product-buttons a:after, .product_list_widget .amount, .woocommerce ul.product_list_widget li a:hover, .sidebar .product-categories li:hover a, .widget.widget_recent_entries li a:hover, .widget.widget_recent_comments li a:hover, .widget.zozo_category_posts_widget li a:hover, .widget.widget_categories li a:hover, .widget.widget_archive li a:hover,
.widget.widget_meta li a:hover, .widget.widget_nav_menu li a:hover, .widget.widget_edd_categories_tags_widget li a:hover, .footer-copyright-section .zozo-social-icons.soc-icon-transparent i:hover, .secondary_menu .widget_nav_menu ul li.menu-item > a:hover, .secondary_menu .widget_nav_menu ul li.menu-item > a:active, .secondary_menu .widget_nav_menu ul li.menu-item > a:focus, .rev_slider_wrapper span, .typo-light .text-color, .typo-dark .text-color, .text-color,
.zozo-revslider-section .rev_slider .tp-button:hover, #bbpress-forums .bbp-body .bbp-forum-title:hover, #bbpress-forums .bbp-body .bbp-topic-permalink:hover ,
li.bbp-forum-freshness a:hover, li.bbp-topic-freshness a:hover, #bbpress-forums div.bbp-topic-content a, #bbpress-forums div.bbp-reply-content a:hover,
#bbpress-forums #bbp-single-user-details #bbp-user-navigation a:hover, #buddypress div.item-list-tabs ul li a:hover span, #buddypress div.item-list-tabs ul li.selected a span,
#tribe-events-content .tribe-events-tooltip h4, #tribe_events_filters_wrapper .tribe_events_slider_val, .single-tribe_events a.tribe-events-gcal, .single-tribe_events a.tribe-events-ical, .single-tribe_events .tribe-events-schedule .tribe-events-cost, h2.tribe-events-page-title a:focus, h2.tribe-events-page-title a:hover,
.tribe-events-list .type-tribe_events h2 a:hover, .tribe-events-list-event-title.entry-title.summary a:hover, .widget .tribe-events-list-widget-events h4.entry-title a:hover,
.comment-container a:hover, .author-name a:hover, .property-feature-icons .icon:after, .sp-scrollable-table-wrapper thead tr th, .sp-template-event-blocks .sp-event-blocks h4.sp-event-title a:hover, .sp-data-table tbody a:hover, .sp-player-list-link.sp-view-all-link:hover, .type-page .sp-template.sp-template-countdown h5 a:hover, .type-page .sp-template.sp-template-countdown h3 a:hover, .typo-light .sp-template-event-blocks .sp-event-blocks h4.sp-event-title a, .edd_price_option_price, .widget.widget_edd_cart_widget .edd-cart-meta.edd_subtotal span, .widget.widget_edd_cart_widget .edd-cart-meta.edd_total span, .edd_download_file .edd_download_file_link:hover, .single-download .edd_price span, .edd_download .edd_price,.uvc-type-wrap .ultimate-typed-main, .uvc-heading-spacer .aio-icon, .ultimate-vticker.ticker, .ultimate-vticker.ticker-down, .ult-carousel-wrapper .slick-next,.ult-carousel-wrapper .slick-prev, .ult-carousel-wrapper .slick-next:hover,.ult-carousel-wrapper .slick-prev:hover, .ult-carousel-wrapper .slick-next:focus,.ult-carousel-wrapper .slick-prev:focus, .vc_custom_heading.vc_gitem-post-data.vc_gitem-post-data-source-post_date > div { color: '. $custom_color . '; }' . "\n";

	// Background Color
	echo '.bg-style.bg-normal, .btn, .btn[disabled], .btn.btn-default, .vc_general.vc_btn3.vc_btn3-color-primary-bg, .vc_btn.vc_btn-primary-bg,  .vc_general.vc_btn3.vc_btn3-color-juicy-pink, .colorbtn, .btn-modal.btn-primary, .btn-modal.btn-primary:active, .btn-modal.btn-primary:focus, .btn-transparent-color:hover, .btn.btn-transparent-color:hover, .btn-transparent-color-inverse, .btn.btn-transparent-color-inverse, #respond .form-submit input[type="submit"], input[type="submit"], .wpcf7 input[type="submit"], button[type="submit"], .vc_general.vc_btn3.vc_btn3-style-default.vc_btn3-color-primary-bg, .vc_btn3-color-primary-bg.vc_btn3-style-outline:hover, .vc_btn3-color-primary-bg.vc_btn3-style-outline:focus, .vc_btn3-color-primary-bg.vc_btn3-style-outline:active, .ubtn.ubtn-center-dg-bg .ubtn-hover, 
.ubtn.ubtn-top-bg .ubtn-hover, .ubtn.ubtn-bottom-bg .ubtn-hover, .ubtn.ubtn-left-bg .ubtn-hover, .ubtn.ubtn-right-bg .ubtn-hover, .ubtn.ubtn-center-hz-bg .ubtn-hover, .ubtn.ubtn-center-vt-bg .ubtn-hover, .header-section .header-top-section, .search-form .input-group-btn .btn:hover, .parallax-title:after, .zozo-icon.icon-bg.icon-shape, .zozo-icon.icon-border-bg.icon-shape, .feature-box-style.style-box-with-bg .grid-item .grid-box-inner.grid-text-center:after, .feature-box-style.style-box-with-bg .grid-item .grid-box-inner .grid-icon:after, .grid-item .grid-box-inner .grid-overlay-top .grid-icon-wrapper .grid-icon:after, .zozo-feature-box.feature-box-style.style-overlay-box .grid-box-inner, .grid-item .grid-box-inner .grid-overlay-bottom, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-bg-icon .grid-icon.icon-shape.icon-dark,
.zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-bg-icon .grid-icon.icon-shape.icon-light, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-bg-icon .grid-icon.icon-shape.icon-bordered, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-all .grid-icon.icon-shape.icon-dark, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-all .grid-icon.icon-shape.icon-light, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-all .grid-icon.icon-shape.icon-bordered, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-bg-icon .grid-icon.icon-shape.icon-pattern, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-all .grid-icon.icon-shape.icon-pattern, .vc_progress_bar .vc_single_bar .vc_bar, .nav-tabs > li > a:hover, .zozo-left-vertical .nav-tabs > li > a:hover, .zozo-right-vertical .nav-tabs > li > a:hover, .vc_tta-color-white.vc_tta-style-classic .vc_tta-tab.vc_active > a, .vc_tta-color-white.vc_tta-style-flat .vc_tta-tab.vc_active > a, .vc_tta-color-white.vc_tta-style-classic .vc_tta-panel.vc_active .vc_tta-panel-heading, .vc_toggle_square .vc_toggle_icon, .counter.zozo-counter-count:after,.text-hightlight, 
.zozo-vc-service-box .service-box-inner .service-ribbon-text, .owl-carousel.owl-theme .owl-controls .owl-nav div:hover, .vc_row .vc_images_carousel .vc_carousel-indicators li,
.zozo-pricing-item.active .pricing-head:after, .portfolio-mask a, .portfolio-mask a:hover, .pagination > li > a.prev, .pagination > li > a.next, .pagination > li > a.prev:hover:after, .pagination > li > a.prev:active:after, .pagination > li > a.prev:focus:after, .pagination > li > a.next:hover:after, .pagination > li > a.next:active:after, .pagination > li > a.next:focus:after, .pager li > a, .pager li > span, .pager li > a:hover, .pager li > span:hover, .pager li > a:active, .pager li > span:active, .pager li > a:focus, .pager li > span:focus, .zozo-social-share-icons li.email a:hover, #respond.comment-respond .form-submit input[type="submit"], .tagcloud a, .contact-info-box, .contact-info-box:after, .contact-info-title:after, .woocommerce #content nav.woocommerce-pagination ul li a:focus, .woocommerce #content nav.woocommerce-pagination ul li a:hover, .woocommerce #content nav.woocommerce-pagination ul li span.current, .woocommerce nav.woocommerce-pagination ul li a:focus, .woocommerce nav.woocommerce-pagination ul li a:hover, .woocommerce nav.woocommerce-pagination ul li span.current, .woocommerce-page #content nav.woocommerce-pagination ul li a:focus, .woocommerce-page #content nav.woocommerce-pagination ul li a:hover, .woocommerce-page #content nav.woocommerce-pagination ul li span.current, .woocommerce-page nav.woocommerce-pagination ul li a:focus, .woocommerce-page nav.woocommerce-pagination ul li a:hover, .woocommerce-page nav.woocommerce-pagination ul li span.current, .woocommerce #content input.button.alt:hover, .woocommerce #respond input#submit.alt:hover, .woocommerce a.button.alt:hover, .woocommerce button.button.alt:hover, .woocommerce input.button.alt:hover, .woocommerce-page #content input.button.alt:hover, .woocommerce-page #respond input#submit.alt:hover, .woocommerce-page a.button.alt:hover, .woocommerce-page button.button.alt:hover, .woocommerce-page input.button.alt:hover, #buddypress button, #buddypress a.button, #buddypress input[type="submit"], #buddypress input[type="button"], #buddypress input[type="reset"], #buddypress ul.button-nav li a, #buddypress div.generic-button a, #buddypress .comment-reply-link, a.bp-title-button, #buddypress button:hover, #buddypress a.button:hover, #buddypress a.button:focus, #buddypress input[type="submit"]:hover, #buddypress input[type="button"]:hover, #buddypress input[type="reset"]:hover, #buddypress ul.button-nav li a:hover, #buddypress ul.button-nav li.current a, #buddypress div.generic-button a:hover, #buddypress .comment-reply-link:hover, #tribe-events .tribe-events-button, .tribe-events-button, #tribe-bar-form .tribe-bar-submit input[type="submit"], #tribe-events .tribe-events-button:hover, .tribe-events-button.tribe-active:hover, .tribe-events-button.tribe-inactive, .tribe-events-button:hover, #tribe-bar-form .tribe-bar-submit input[type="submit"]:hover, #tribe-bar-form .tribe-bar-submit input[type="submit"]:active, #tribe-bar-form .tribe-bar-submit input[type="submit"]:focus, .tribe-events-list .tribe-events-event-cost span, #tribe-events .tribe-events-button, #tribe-events .tribe-events-button:hover, #tribe_events_filters_wrapper input[type="submit"], .tribe-events-button, .tribe-events-button.tribe-active:hover, .tribe-events-button.tribe-inactive, .tribe-events-button:hover, .tribe-events-calendar td.tribe-events-present div[id*="tribe-events-daynum-"], .tribe-events-calendar td.tribe-events-present div[id*="tribe-events-daynum-"] > a, h2.tribe-events-page-title:after, article.post .post-inner-wrapper .post-featured-image a:before, .related-post-item .entry-thumbnail .post-img:before, .classic-grid-style .portfolio-content a.classic-img-link:before, .zozo-social-share-box .author-social li a, .zozo-social-share-box .author-social li a:hover, .zozo-social-share-box .author-social li a:focus, .zozo-social-share-box .author-social li a.active, .tab-title:after, .epl-switching-sorting-wrap .epl-switch-view li.epl-current-view, .picker__wrap .picker--focused .picker__day--highlighted, .picker__wrap .picker__day--highlighted:hover, .picker__wrap .picker__day--infocus:hover, .picker__wrap .picker__day--outfocus:hover, .bg-style.bg-normal { background-color: '. $custom_color . '; }' . "\n";

	// background  Color
	echo 'button.ubtn .ubtn-hover, .bar-style-tooltip .tooltip .tooltip-inner, .header-section.type-header-6 .header-top-cart .cart-icon, .header-section .header-logo-section .header-top-cart .cart-count, .header-main-section .extra-nav.header-top-cart .cart-count, .header-toggle-section .header-top-cart .cart-icon, .header-section.type-header-9 .header-toggle-section .close-menu, .header-toggle-section .header-side-top-section .header-side-topmenu .btn:hover, .type-header-9 .zozo-social-icons.soc-icon-flat li a, .type-header-9 .zozo-social-icons.soc-icon-circle li a, .header-toggle-section .header-side-top-section .header-side-topmenu.open > .dropdown-menu, .nav-tabs > li > a:hover, .zozo-left-vertical .nav-tabs > li > a:hover, .zozo-right-vertical .nav-tabs > li > a:hover, .zozo-left-vertical .nav-tabs > li.active > a, .zozo-right-vertical .nav-tabs > li.active > a, .zozo-tab-horizontal .nav-tabs > li.active a, .zozo-right-vertical .nav-tabs.tabs-right > li.active > a, .team-member-name:after, .zozo-twitter-slider-wrapper:before, .featured-gallery-slider .owl-carousel.owl-theme .owl-controls .owl-nav div, .vc_icon_element-background-color-primary-bg, .post blockquote:after, .mejs-audio .mejs-controls .mejs-time-rail .mejs-time-current, .video-player .mejs-controls .mejs-time-rail .mejs-time-current, .mejs-container .mejs-controls .mejs-horizontal-volume-slider .mejs-horizontal-volume-current, .contact-info-title, .zozo-social-icons.social-style-background li a, .contact-info-style2 h6, .footer-widgets-section .flickr_photo_item a:after, .footer-backtotop a:hover, .footer-backtotop a:focus, .footer-backtotop a:active, .video-bg .mb_YTVTime, .woocommerce ul.products li .product-buttons a.woo-show-details, .woocommerce .product-buttons > a.add_to_cart_button, .woocommerce #content input.button:hover, .woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover, .woocommerce-page #content input.button:hover, .woocommerce-page #respond input#submit:hover, .woocommerce-page a.button:hover, .woocommerce-page button.button:hover, .woocommerce-page input.button:hover, .woocommerce span.onsale, .woocommerce-page span.onsale, .woocommerce ul.products li.product .onsale, .woocommerce-page ul.products li.product .onsale, .woocommerce.woocommerce-cart #content .quantity .minus:hover,.woocommerce.woocommerce-cart #content .quantity .plus:hover, .woocommerce.woocommerce-cart .quantity .minus:hover, .woocommerce.woocommerce-cart .quantity .plus:hover, .woocommerce-page.woocommerce-cart #content .quantity .minus:hover, .woocommerce-page.woocommerce-cart #content .quantity .plus:hover, .woocommerce-page.woocommerce-cart .quantity .minus:hover, .woocommerce-page.woocommerce-cart .quantity .plus:hover, .woocommerce.woocommerce-cart #content .quantity .minus, 
.woocommerce.woocommerce-cart #content .quantity .plus, .woocommerce.woocommerce-cart .quantity .minus, .woocommerce.woocommerce-cart .quantity .plus, .woocommerce-page.woocommerce-cart #content .quantity .minus, .woocommerce-page.woocommerce-cart #content .quantity .plus, .woocommerce-page.woocommerce-cart .quantity .minus, 
.woocommerce-page.woocommerce-cart .quantity .plus, .woocommerce #content div.product .woocommerce-tabs ul.tabs li:hover, .woocommerce div.product .woocommerce-tabs ul.tabs li:hover, .woocommerce-page #content div.product-box-wrapper .woocommerce-tabs ul.tabs li:hover, .woocommerce-page div.product .woocommerce-tabs ul.tabs li:hover, .woocommerce #review_form #respond .form-submit input:hover, .woocommerce #review_form #respond .form-submit input:active, .woocommerce #review_form #respond .form-submit input:focus, .woocommerce-page #review_form #respond .form-submit input:hover, .woocommerce-page #review_form #respond .form-submit input:active, .woocommerce-page #review_form #respond .form-submit input:focus, .woocommerce #content input.button.alt, .woocommerce #respond input#submit.alt, .woocommerce a.button.alt, .woocommerce button.button.alt, .woocommerce input.button.alt, .woocommerce-page #content input.button.alt, .woocommerce-page #respond input#submit.alt, .woocommerce-page a.button.alt, .woocommerce-page button.button.alt, .woocommerce-page input.button.alt, .woocommerce #content input.button, .woocommerce #respond input#submit, .woocommerce a.button, .woocommerce button.button, .woocommerce input.button, .woocommerce-page #content input.button, .woocommerce-page #respond input#submit, .woocommerce-page a.button, .woocommerce-page button.button, .woocommerce-page input.button, .woocommerce #content div.product form.cart .button, .woocommerce div.product form.cart .button, .woocommerce-page #content div.product form.cart .button, .woocommerce-page div.product form.cart .button, .woocommerce #respond input#submit.alt.disabled, .woocommerce #respond input#submit.alt.disabled:hover, .woocommerce #respond input#submit.alt:disabled, .woocommerce #respond input#submit.alt:disabled:hover, .woocommerce #respond input#submit.alt[disabled]:disabled, .woocommerce #respond input#submit.alt[disabled]:disabled:hover, .woocommerce a.button.alt.disabled, .woocommerce a.button.alt.disabled:hover, .woocommerce a.button.alt:disabled, .woocommerce a.button.alt:disabled:hover, .woocommerce a.button.alt[disabled]:disabled, .woocommerce a.button.alt[disabled]:disabled:hover, .woocommerce button.button.alt.disabled, .woocommerce button.button.alt.disabled:hover, .woocommerce button.button.alt:disabled, .woocommerce button.button.alt:disabled:hover, .woocommerce button.button.alt[disabled]:disabled, .woocommerce button.button.alt[disabled]:disabled:hover, .woocommerce input.button.alt.disabled, .woocommerce input.button.alt.disabled:hover, .woocommerce input.button.alt:disabled, .woocommerce input.button.alt:disabled:hover, .woocommerce input.button.alt[disabled]:disabled, .woocommerce input.button.alt[disabled]:disabled:hover, .woocommerce .woocommerce-error .button, .woocommerce .woocommerce-info .button, .woocommerce .woocommerce-message .button,.woocommerce .widget_price_filter .price_slider_amount .button, .woocommerce-page .widget_price_filter .price_slider_amount .button, .woocommerce .widget_price_filter .ui-slider-horizontal .ui-slider-range, .woocommerce-page .widget_price_filter .ui-slider-horizontal .ui-slider-range, .woocommerce .widget_price_filter .ui-slider-horizontal .ui-slider-range:after, .woocommerce-page .widget_price_filter .ui-slider-horizontal .ui-slider-range:after, .woocommerce .widget_price_filter .ui-slider-horizontal .ui-slider-range:before, .woocommerce-page .widget_price_filter .ui-slider-horizontal .ui-slider-range:before, .woocommerce .widget_price_filter .price_slider_amount .button:hover, .woocommerce-page .widget_price_filter .price_slider_amount .button:hover, .sidebar .product-categories li:hover .count, .woocommerce .product-categories .current-cat > span, .widget .tweet-item h5:before, .footer-widgets .widget .soc-icon-circle li a:hover, .theme-bg-color, .zozo-revslider-section .tp-bullets.simplebullets.round .bullet.selected, .zozo-revslider-section .rev_slider .tp-button, .rev_slider .tp-bannertimer, #buddypress div.item-list-tabs ul li.selected a, #buddypress div.item-list-tabs ul li.current a, #buddypress div.item-list-tabs ul li a:hover, #buddypress div.item-list-tabs ul li a:active, #buddypress div.item-list-tabs ul li a:focus, .picker__wrap .picker__box .picker__button--clear:focus, .picker__wrap .picker__box .picker__button--clear:hover, .picker__wrap .picker__box .picker__button--close:focus, .picker__wrap .picker__box .picker__button--close:hover, .picker__wrap .picker__box .picker__button--today:focus, .picker__wrap .picker__box .picker__button--today:hover, .picker__wrap .picker__box .picker__list-item--highlighted, .picker__list-item:hover, .picker__wrap .picker__box .picker--focused .picker__list-item--highlighted, .picker__wrap .picker__box .picker__list-item--highlighted:hover, .picker__wrap .picker__box .picker__list-item:hover, .edd-submit.button.blue, .edd-submit.button.blue:hover, .edd-submit.button.blue:focus, .widget.widget_edd_cart_widget .cart_item.edd_checkout > a, .widget.widget_edd_cart_widget .edd-cart-quantity, #edd_discounts_list .edd_discount:hover:before, .smile-icon-timeline-wrap .timeline-separator-text .sep-text, .smile-icon-timeline-wrap .timeline-wrapper .timeline-dot, .timeline-feature-item .timeline-dot, .smile-icon-timeline-wrap .timeline-line z, .ult_pricing_table_wrap.ult_design_4.ult-cs-yellow .ult_pricing_table .ult_price_link .ult_price_action_button, .hexagon li .icon_list_icon { background: '. $custom_color . '; }' . "\n";
	// background  Color
	echo '.vc_btn3.vc_btn3-style-custom, .picker--focused .picker__day--highlighted, .picker__day--highlighted:hover, .picker__day--infocus:hover, .picker__day--outfocus:hover,
.picker__wrap .picker--focused .picker__day--selected, .picker__wrap .picker__day--selected, .picker__wrap .picker__day--selected:hover, .picker__wrap .picker--focused .picker__day--selected, .picker__wrap .picker__day--selected, .picker__wrap .picker__day--selected:hover  { background: '. $custom_color . '!important; }' . "\n";

	echo '::-moz-selection { background: '. $custom_color . '; }' . "\n";
	echo '::selection { background: '. $custom_color . '; }' . "\n";
	echo '::-webkit-selection { background: '. $custom_color . '; }' . "\n";
	
	echo '.zozo-pricing-item .pricing-ribbon-wrapper .pricing-ribbon { background: '. $custom_color . ';
background: -moz-linear-gradient(top,   '. $custom_color . ' 0%, '. $custom_color_dark .' 100%);
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,'. $custom_color . '), color-stop(100%,'. $custom_color_dark .')); 
	background: -webkit-linear-gradient(top,  '. $custom_color . ' 0%,'. $custom_color_dark .' 100%); 
	background: -o-linear-gradient(top, '. $custom_color . ' 0%,'. $custom_color_dark .' 100%); 
	background: -ms-linear-gradient(top, '. $custom_color . ' 0%,'. $custom_color_dark .' 100%); 
	background: linear-gradient(to bottom, '. $custom_color . ' 0%,'. $custom_color_dark .' 100%); 
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr="'. $custom_color . '", endColorstr="'. $custom_color_dark .'",GradientType=0 ); 
}' . "\n";

	// background rgb Color
	echo '.bg-overlay-primary:before, .btn-default:hover,.btn-default:focus, .btn:hover,.btn:focus, input[type="submit"]:hover,input[type="submit"]:focus,
.tagcloud a:hover,.tagcloud a:focus, .vc_general.vc_btn3.vc_btn3-style-default:hover, .vc_general.vc_btn3.vc_btn3-style-default:focus, .vc_general.vc_btn3.vc_btn3-style-default:active, .vc_general.vc_btn3.vc_btn3-color-primary-bg:hover, .vc_general.vc_btn3.vc_btn3-color-primary-bg:focus,
.vc_general.vc_btn3.vc_btn3-color-primary-bg:active, .vc_btn.vc_btn-primary-bg:hover, .vc_btn.vc_btn-primary-bg:focus, .vc_btn.vc_btn-primary-bg:active,
.vc_general.vc_btn3.vc_btn3-color-juicy-pink:hover, .vc_general.vc_btn3.vc_btn3-color-juicy-pink:focus, .vc_general.vc_btn3.vc_btn3-color-juicy-pink:active, #buddypress button:hover, #buddypress a.button:hover, #buddypress a.button:focus, #buddypress input[type="submit"]:hover, #buddypress input[type="button"]:hover, #buddypress input[type="reset"]:hover, #buddypress ul.button-nav li a:hover, #buddypress ul.button-nav li.current a, #buddypress div.generic-button a:hover, #buddypress .comment-reply-link:hover, .picker__wrap .picker--focused .picker__day--highlighted, .picker__wrap .picker__day--highlighted:hover, .picker__wrap .picker__day--infocus:hover, .picker__wrap .picker__day--outfocus:hover { background: rgba('. $custom_color_rgb[0] . ','. $custom_color_rgb[1] . ','. $custom_color_rgb[2] . ',0.8); }' . "\n";

	echo '.vc_btn3.vc_btn3-style-custom:hover { background: rgba('. $custom_color_rgb[0] . ','. $custom_color_rgb[1] . ','. $custom_color_rgb[2] . ',0.8)!important; }' . "\n";

	// border Color
	echo '.pageloader .ball-clip-rotate > div, .btn-transparent-color, .btn.btn-transparent-color, .btn-transparent-color-inverse:hover, .btn.btn-transparent-color-inverse:hover, .btn-transparent-color:hover,  .btn.btn-transparent-color:hover, .btn-transparent-color-inverse, .btn.btn-transparent-color-inverse,
.vc_btn3-color-primary-bg.vc_btn3-style-outline, .zozo-main-nav.navbar-nav .dropdown-menu, .zozo-main-nav.navbar-nav .sub-menu, .zozo-megamenu-wrapper, .header-side-top-submenu.dropdown-menu, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-bg-br .grid-icon.icon-shape.icon-bordered, .zozo-feature-box .grid-item:hover .grid-icon-wrapper.icon-hv-all .grid-icon.icon-shape.icon-bordered-bg, .testimonial-item.tstyle-border .testimonial-content, .owl-carousel.owl-theme .owl-controls .owl-nav div,.featured-gallery-slider .owl-carousel.owl-theme .owl-controls .owl-nav div, .vc_row .vc_images_carousel .vc_carousel-indicators .vc_active, .vc_row .vc_images_carousel .vc_carousel-indicators li, .pagination > li > a.prev:hover:after, .pagination > li > a.prev:active:after, .pagination > li > a.prev:focus:after, .pagination > li > a.next:hover:after, .pagination > li > a.next:active:after, .pagination > li > a.next:focus:after, .pager li > a, .pager li > span, .zozo-social-share-icons li.email a:hover, #respond.comment-respond .form-submit input[type="submit"], .contact-info-box, .contact-info-box:after, .contact-info-title:after, .woocommerce #content input.button.alt, .woocommerce #respond input#submit.alt, .woocommerce a.button.alt, .woocommerce button.button.alt, .woocommerce input.button.alt, .woocommerce-page #content input.button.alt, .woocommerce-page #respond input#submit.alt, .woocommerce-page a.button.alt, .woocommerce-page button.button.alt, .woocommerce-page input.button.alt, .woocommerce #content input.button, .woocommerce #respond input#submit, .woocommerce a.button, .woocommerce button.button, .woocommerce input.button, .woocommerce-page #content input.button, .woocommerce-page #respond input#submit, .woocommerce-page a.button, .woocommerce-page button.button, .woocommerce-page input.button, .woocommerce #respond input#submit.alt.disabled, .woocommerce #respond input#submit.alt.disabled:hover, .woocommerce #respond input#submit.alt:disabled, .woocommerce #respond input#submit.alt:disabled:hover, .woocommerce #respond input#submit.alt[disabled]:disabled, .woocommerce #respond input#submit.alt[disabled]:disabled:hover, .woocommerce a.button.alt.disabled, .woocommerce a.button.alt.disabled:hover, .woocommerce a.button.alt:disabled, .woocommerce a.button.alt:disabled:hover, .woocommerce a.button.alt[disabled]:disabled, .woocommerce a.button.alt[disabled]:disabled:hover, .woocommerce button.button.alt.disabled, .woocommerce button.button.alt.disabled:hover, .woocommerce button.button.alt:disabled, .woocommerce button.button.alt:disabled:hover, .woocommerce button.button.alt[disabled]:disabled, .woocommerce button.button.alt[disabled]:disabled:hover, .woocommerce input.button.alt.disabled, .woocommerce input.button.alt.disabled:hover, .woocommerce input.button.alt:disabled, .woocommerce input.button.alt:disabled:hover, .woocommerce input.button.alt[disabled]:disabled, .woocommerce input.button.alt[disabled]:disabled:hover,
.zozo-revslider-section .tp-bullets.simplebullets.round .bullet, .zozo-revslider-section .rev_slider .tp-button, #buddypress div.item-list-tabs ul li.selected a, #buddypress div.item-list-tabs ul li.current a, #buddypress div.item-list-tabs ul li a:hover, #buddypress div.item-list-tabs ul li a:active, #buddypress div.item-list-tabs ul li a:focus,
#tribe-events .tribe-events-button, .tribe-events-button, #tribe-bar-form .tribe-bar-submit input[type="submit"], .tribe-events-list .tribe-events-event-cost span,
ul.epl-author-tabs li.epl-author-current, ul.property_search-tabs li.epl-sb-current, li.tbhead.current, .picker__wrap .picker__box .picker__button--clear:focus, .picker__wrap .picker__box .picker__button--clear:hover, .picker__wrap .picker__box .picker__button--close:focus, .picker__wrap .picker__box .picker__button--close:hover,.picker__wrap .picker__box .picker__button--today:focus, .picker__wrap .picker__box .picker__button--today:hover, .picker__wrap .picker__box .picker__list-item--highlighted, .picker__list-item:hover, .picker__wrap .picker__box .picker--focused .picker__list-item--highlighted, .picker__wrap .picker__box .picker__list-item--highlighted:hover, .picker__wrap .picker__box .picker__list-item:hover,.reservation .rtb-text .picker__input.picker__input--active, .edd-cart-added-alert, .hexagon li .icon_list_icon { border-color: '. $custom_color . '; }' . "\n";

	echo 'input:focus, .form-control:focus, textarea:focus, #respond input:focus, #respond textarea:focus, #buddypress #whats-new:focus { border-color: '. $custom_color . '!important; }' . "\n";

	echo '.woocommerce span.onsale::before { border-color: transparent '. $custom_color . ' transparent transparent; }' . "\n";
	
	// border bottom Color
	echo '.woocommerce .widget_price_filter .ui-slider .ui-slider-handle, .woocommerce-page .widget_price_filter .ui-slider .ui-slider-handle { border-bottom-color: '. $custom_color . '; }' . "\n";
	
	// Fill Color
	echo '.bg-style.bg-normal { fill: '. $custom_color . '; }' . "\n";

	// border top Color
	echo '.testimonial-item.tstyle-border .testimonial-content:before, .woocommerce span.onsale:after, .woocommerce-page span.onsale:after, .woocommerce ul.products li.product .onsale:after, .woocommerce-page ul.products li.product .onsale:after, .ult_pricing_table_wrap.ult_design_4.ult-cs-yellow .ult_pricing_table, .bar-style-tooltip .tooltip.top .tooltip-arrow { border-top-color: '. $custom_color . '; }' . "\n";
	
}

// Link Color
if( isset( $zozo_options['zozo_link_color']['regular'] ) && $zozo_options['zozo_link_color']['regular'] != '' ) {
	echo 'a { color: '. $zozo_options['zozo_link_color']['regular'] . '; }' . "\n";
}

if( isset( $zozo_options['zozo_link_color']['hover'] ) && $zozo_options['zozo_link_color']['hover'] != '' ) {
	echo 'a:hover, a:active, a:focus { color: '. $zozo_options['zozo_link_color']['hover'] . '; }' . "\n";
	echo 'h1 > a:hover, h1 > a:active, h1 > a:focus, h2 > a:hover, h2 > a:active, h2 > a:focus, h3 > a:hover, h3 > a:active, h3 > a:focus, h4 > a:hover, h4 > a:active, h4 > a:focus, h5 > a:hover, h5 > a:active, h5 > a:focus, h6 > a:hover, h6 > a:active, h6 > a:focus { color: '. $zozo_options['zozo_link_color']['hover'] . '; }' . "\n";
}

// Body Stylings 
$body_font_styles = '';
if ( $zozo_options['zozo_body_font'] ) {
	$body_font_styles .= 'font-family: "'.$zozo_options['zozo_body_font']['font-family'].'";';
	$body_font_styles .= 'font-size: '.$zozo_options['zozo_body_font']['font-size'].';';
	if( isset( $zozo_options['zozo_body_font']['font-style'] ) && $zozo_options['zozo_body_font']['font-style'] != '' ) {
		$body_font_styles .= 'font-style: '.$zozo_options['zozo_body_font']['font-style'].';';
	}
	if( isset( $zozo_options['zozo_body_font']['font-weight'] ) && $zozo_options['zozo_body_font']['font-weight'] != '' ) {
		$body_font_styles .= 'font-weight: '.$zozo_options['zozo_body_font']['font-weight'].';';
	}
	$body_font_styles .= 'color: '.$zozo_options['zozo_body_font']['color'].';';
	$body_font_styles .= 'line-height: '.$zozo_options['zozo_body_font']['line-height'].';';
	$body_styles .= $body_font_styles;
}

if( $body_font_styles ) {
	echo 'body { '. $body_font_styles . ' }' . "\n";
	echo '.ui-widget, .vc_tta-accordion .vc_tta-panel-title { '. $body_font_styles . ' }' . "\n";
}

// Header Top Bar Stylings
$header_top_bg_styles = '';				

if( isset( $zozo_options['zozo_header_top_background_color'] ) && $zozo_options['zozo_header_top_background_color'] != '' ) {
	$header_top_bg_styles .= 'background-color: '. $zozo_options['zozo_header_top_background_color'] .';';
}
if( $header_top_bg_styles ) {
	echo '.header-section .header-top-section { '. $header_top_bg_styles . ' }' . "\n";
}

// Sliding Bar Stylings
if( isset( $zozo_options['zozo_sliding_background_color'] ) && $zozo_options['zozo_sliding_background_color'] != '' ) {
	echo '.slidingbar-toggle-wrapper a { border-top-color: '. $zozo_options['zozo_sliding_background_color'] .'; }' . "\n";
	echo '.sliding-bar-section .slidingbar-inner { background-color: '. $zozo_options['zozo_sliding_background_color'] .'; }' . "\n";
}

// Header Stylings
$header_styles = '';

// Header Spacing
if( isset( $zozo_options['zozo_header_spacing']['padding-top'] ) && $zozo_options['zozo_header_spacing']['padding-top'] != '' ) {
	$header_styles .= 'padding-top: '. $zozo_options['zozo_header_spacing']['padding-top'] .';';
}			
if( isset( $zozo_options['zozo_header_spacing']['padding-bottom'] ) && $zozo_options['zozo_header_spacing']['padding-bottom'] != '' ) {
	$header_styles .= 'padding-bottom: '. $zozo_options['zozo_header_spacing']['padding-bottom'] .';';
}			
if( isset( $zozo_options['zozo_header_spacing']['padding-left'] ) && $zozo_options['zozo_header_spacing']['padding-left'] != '' ) {
	$header_styles .= 'padding-left: '. $zozo_options['zozo_header_spacing']['padding-left'] .';';
}			
if( isset( $zozo_options['zozo_header_spacing']['padding-right'] ) && $zozo_options['zozo_header_spacing']['padding-right'] != '' ) {
	$header_styles .= 'padding-right: '. $zozo_options['zozo_header_spacing']['padding-right'] .';';			
}			

if( $header_styles ) {
	echo '#zozo_wrapper #header { '. $header_styles . ' }' . "\n";
}

// Sticky Background Stylings
$sticky_styles = '';
if( isset( $zozo_options['zozo_sticky_bg_image'] ) ) {
	if( isset( $zozo_options['zozo_sticky_bg_image']['background-image'] ) && $zozo_options['zozo_sticky_bg_image']['background-image'] != '' ) {
		$sticky_styles .= 'background-image: url('. $zozo_options['zozo_sticky_bg_image']['background-image'] .');';
	}
	if( isset( $zozo_options['zozo_sticky_bg_image']['background-repeat'] ) && $zozo_options['zozo_sticky_bg_image']['background-repeat'] != '' ) {
		$sticky_styles .= 'background-repeat: '. $zozo_options['zozo_sticky_bg_image']['background-repeat'] .';';
	}
	if( isset( $zozo_options['zozo_sticky_bg_image']['background-attachment'] ) && $zozo_options['zozo_sticky_bg_image']['background-attachment'] != '' ) {
		$sticky_styles .= 'background-attachment: '. $zozo_options['zozo_sticky_bg_image']['background-attachment'] .';';
	}
	if( isset( $zozo_options['zozo_sticky_bg_image']['background-position'] ) && $zozo_options['zozo_sticky_bg_image']['background-position'] != '' ) {
		$sticky_styles .= 'background-position: '. $zozo_options['zozo_sticky_bg_image']['background-position'] .';';
	}
	if( isset( $zozo_options['zozo_sticky_bg_image']['background-size'] ) && $zozo_options['zozo_sticky_bg_image']['background-size'] != '' ) {
		$sticky_styles .= 'background-size: '. $zozo_options['zozo_sticky_bg_image']['background-size'] .';';
		$sticky_styles .= '-moz-background-size: '. $zozo_options['zozo_sticky_bg_image']['background-size'] .';';
		$sticky_styles .= '-webkit-background-size: '. $zozo_options['zozo_sticky_bg_image']['background-size'] .';';
		$sticky_styles .= '-o-background-size: '. $zozo_options['zozo_sticky_bg_image']['background-size'] .';';
		$sticky_styles .= '-ms-background-size: '. $zozo_options['zozo_sticky_bg_image']['background-size'] .';';
	}
}
if( isset( $zozo_options['zozo_sticky_bg_image']['background-color'] ) && $zozo_options['zozo_sticky_bg_image']['background-color'] != '' ) {
	$sticky_styles .= 'background-color: '. $zozo_options['zozo_sticky_bg_image']['background-color'] .';';
}

if( $sticky_styles ) {
	echo '.is-sticky .header-main-section { '. $sticky_styles .' }' . "\n";
}

// Main Site Width
if ( $zozo_options['zozo_theme_layout'] == 'fullwidth' ) {
	if ( $zozo_options['zozo_fullwidth_site_width'] ) {
		echo '.fullwidth .container { max-width: '.$zozo_options['zozo_fullwidth_site_width'].'px; }' . "\n";
		echo '.boxed-header .is-sticky .header-main-section, .boxed .is-sticky .header-main-section { max-width: '.$zozo_options['zozo_boxed_site_width'].'px; }' . "\n";
	}
} else {
	if ( $zozo_options['zozo_boxed_site_width'] ) {			
		echo '.boxed #zozo_wrapper { max-width: '.$zozo_options['zozo_boxed_site_width'].'px; }' . "\n";
		echo '.boxed .container { max-width: '.$zozo_options['zozo_boxed_site_width'].'px; }' . "\n";
		echo '.boxed-header .is-sticky .header-main-section, .boxed .is-sticky .header-main-section { max-width: '.$zozo_options['zozo_boxed_site_width'].'px; }' . "\n";
	}
}

// Dropdown Menu Width
$sub_menu_width = '';
if ( isset( $zozo_options['zozo_dropdown_menu_width']['width'] ) && $zozo_options['zozo_dropdown_menu_width']['width'] != '' ) {
	if( is_numeric( $zozo_options['zozo_dropdown_menu_width']['width'] ) ) {
		$sub_menu_width .= 'min-width: '. $zozo_options['zozo_dropdown_menu_width']['width'] . $zozo_options['zozo_dropdown_menu_width']['units'] .';';
	} else {
		$sub_menu_width .= 'min-width: '. $zozo_options['zozo_dropdown_menu_width']['width'] .';';
	}
	echo '.dropdown-menu { '. $sub_menu_width .' }' . "\n";
}

// Footer Background Stylings
$footer_styles = '';
if( isset( $zozo_options['zozo_footer_bg_image'] ) ) {
	if( isset( $zozo_options['zozo_footer_bg_image']['background-image'] ) && $zozo_options['zozo_footer_bg_image']['background-image'] != '' ) {
		$footer_styles .= 'background-image: url('. $zozo_options['zozo_footer_bg_image']['background-image'] .');';
	}
	if( isset( $zozo_options['zozo_footer_bg_image']['background-repeat'] ) && $zozo_options['zozo_footer_bg_image']['background-repeat'] != ''  ) {
		$footer_styles .= 'background-repeat: '. $zozo_options['zozo_footer_bg_image']['background-repeat'] .';';
	}
	if( isset( $zozo_options['zozo_footer_bg_image']['background-attachment'] ) && $zozo_options['zozo_footer_bg_image']['background-attachment'] != '' ) {
		$footer_styles .= 'background-attachment: '. $zozo_options['zozo_footer_bg_image']['background-attachment'] .';';
	}
	if( isset( $zozo_options['zozo_footer_bg_image']['background-position'] ) && $zozo_options['zozo_footer_bg_image']['background-position'] != '' ) {
		$footer_styles .= 'background-position: '. $zozo_options['zozo_footer_bg_image']['background-position'] .';';
	}
	if( isset( $zozo_options['zozo_footer_bg_image']['background-size'] ) && $zozo_options['zozo_footer_bg_image']['background-size'] != '' ) {
		$footer_styles .= 'background-size: '. $zozo_options['zozo_footer_bg_image']['background-size'] .';';
		$footer_styles .= '-moz-background-size: '. $zozo_options['zozo_footer_bg_image']['background-size'] .';';
		$footer_styles .= '-webkit-background-size: '. $zozo_options['zozo_footer_bg_image']['background-size'] .';';
		$footer_styles .= '-o-background-size: '. $zozo_options['zozo_footer_bg_image']['background-size'] .';';
		$footer_styles .= '-ms-background-size: '. $zozo_options['zozo_footer_bg_image']['background-size'] .';';
	}
}
if( isset( $zozo_options['zozo_footer_bg_image']['background-color'] ) && $zozo_options['zozo_footer_bg_image']['background-color'] != '' ) {
	$footer_styles .= 'background-color: '. $zozo_options['zozo_footer_bg_image']['background-color'] .';';
}

if( $footer_styles ) {
	echo '#footer.footer-section { '. $footer_styles .' }' . "\n";
}

// Footer Spacing
$footer_widget_styles = '';
if( isset( $zozo_options['zozo_footer_spacing']['padding-top'] ) && $zozo_options['zozo_footer_spacing']['padding-top'] != '' ) {
	$footer_widget_styles .= 'padding-top: '. $zozo_options['zozo_footer_spacing']['padding-top'] .';';
}			
if( isset( $zozo_options['zozo_footer_spacing']['padding-bottom'] ) && $zozo_options['zozo_footer_spacing']['padding-bottom'] != '' ) {
	$footer_widget_styles .= 'padding-bottom: '. $zozo_options['zozo_footer_spacing']['padding-bottom'] .';';
}			
if( isset( $zozo_options['zozo_footer_spacing']['padding-left'] ) && $zozo_options['zozo_footer_spacing']['padding-left'] != '' ) {
	$footer_widget_styles .= 'padding-left: '. $zozo_options['zozo_footer_spacing']['padding-left'] .';';
}			
if( isset( $zozo_options['zozo_footer_spacing']['padding-right'] ) && $zozo_options['zozo_footer_spacing']['padding-right'] != '' ) {
	$footer_widget_styles .= 'padding-right: '. $zozo_options['zozo_footer_spacing']['padding-right'] .';';			
}			

if( $footer_widget_styles ) {
	echo '#footer .footer-widgets-section { '. $footer_widget_styles . ' }' . "\n";
}

// Footer Copyright Background Stylings
$footer_bar_styles = '';
if( isset( $zozo_options['zozo_footer_copy_bg_image'] ) ) {
	if( isset( $zozo_options['zozo_footer_copy_bg_image']['background-image'] ) && $zozo_options['zozo_footer_copy_bg_image']['background-image'] != '' ) {
		$footer_bar_styles .= 'background-image: url('. $zozo_options['zozo_footer_copy_bg_image']['background-image'] .');';
	}
	if( isset( $zozo_options['zozo_footer_copy_bg_image']['background-repeat'] ) && $zozo_options['zozo_footer_copy_bg_image']['background-repeat'] != '' ) {
		$footer_bar_styles .= 'background-repeat: '. $zozo_options['zozo_footer_copy_bg_image']['background-repeat'] .';';
	}
	if( isset( $zozo_options['zozo_footer_copy_bg_image']['background-attachment'] ) && $zozo_options['zozo_footer_copy_bg_image']['background-attachment'] != '' ) {
		$footer_bar_styles .= 'background-attachment: '. $zozo_options['zozo_footer_copy_bg_image']['background-attachment'] .';';
	}
	if( isset( $zozo_options['zozo_footer_copy_bg_image']['background-position'] ) && $zozo_options['zozo_footer_copy_bg_image']['background-position'] != '' ) {
		$footer_bar_styles .= 'background-position: '. $zozo_options['zozo_footer_copy_bg_image']['background-position'] .';';
	}
	if( isset( $zozo_options['zozo_footer_copy_bg_image']['background-size'] ) && $zozo_options['zozo_footer_copy_bg_image']['background-size'] != '' ) {
		$footer_bar_styles .= 'background-size: '. $zozo_options['zozo_footer_copy_bg_image']['background-size'] .';';
		$footer_bar_styles .= '-moz-background-size: '. $zozo_options['zozo_footer_copy_bg_image']['background-size'] .';';
		$footer_bar_styles .= '-webkit-background-size: '. $zozo_options['zozo_footer_copy_bg_image']['background-size'] .';';
		$footer_bar_styles .= '-o-background-size: '. $zozo_options['zozo_footer_copy_bg_image']['background-size'] .';';
		$footer_bar_styles .= '-ms-background-size: '. $zozo_options['zozo_footer_copy_bg_image']['background-size'] .';';
	}
}
if( isset( $zozo_options['zozo_footer_copy_bg_image']['background-color'] ) && $zozo_options['zozo_footer_copy_bg_image']['background-color'] != '' ) {
	$footer_bar_styles .= 'background-color: '. $zozo_options['zozo_footer_copy_bg_image']['background-color'] .';';
}

if( isset( $zozo_options['zozo_footer_copyright_spacing']['padding-top'] ) && $zozo_options['zozo_footer_copyright_spacing']['padding-top'] != '' ) {
	$footer_bar_styles .= 'padding-top: '. $zozo_options['zozo_footer_copyright_spacing']['padding-top'] .';';
}			
if( isset( $zozo_options['zozo_footer_copyright_spacing']['padding-bottom'] ) && $zozo_options['zozo_footer_copyright_spacing']['padding-bottom'] != '' ) {
	$footer_bar_styles .= 'padding-bottom: '. $zozo_options['zozo_footer_copyright_spacing']['padding-bottom'] .';';
}			
if( isset( $zozo_options['zozo_footer_copyright_spacing']['padding-left'] ) && $zozo_options['zozo_footer_copyright_spacing']['padding-left'] != '' ) {
	$footer_bar_styles .= 'padding-left: '. $zozo_options['zozo_footer_copyright_spacing']['padding-left'] .';';
}			
if( isset( $zozo_options['zozo_footer_copyright_spacing']['padding-right'] ) && $zozo_options['zozo_footer_copyright_spacing']['padding-right'] != '' ) {
	$footer_bar_styles .= 'padding-right: '. $zozo_options['zozo_footer_copyright_spacing']['padding-right'] .';';			
}	

if( $footer_bar_styles ) {
	echo '#footer .footer-copyright-section { '. $footer_bar_styles .' }' . "\n";
}

// H1 Styles
$h1_styles = '';
if( $zozo_options['zozo_h1_font_styles'] ) {
	$h1_styles .= 'font-family: "'.$zozo_options['zozo_h1_font_styles']['font-family'].'";';
	$h1_styles .= 'font-size: '.$zozo_options['zozo_h1_font_styles']['font-size'].';';
	if( $zozo_options['zozo_h1_font_styles']['font-style'] ) {
		$h1_styles .= 'font-style: '.$zozo_options['zozo_h1_font_styles']['font-style'].';';
	}
	$h1_styles .= 'font-weight: '.$zozo_options['zozo_h1_font_styles']['font-weight'].';';
	if( $zozo_options['zozo_h1_font_styles']['color'] ) {
		$h1_styles .= 'color: '.$zozo_options['zozo_h1_font_styles']['color'].';';
	}
	if( $zozo_options['zozo_h1_font_styles']['line-height'] ) {
		$h1_styles .= 'line-height: '.$zozo_options['zozo_h1_font_styles']['line-height'].';';
	}
}

if( $h1_styles ) {
	echo 'h1 { '. $h1_styles .' }' . "\n";
}

// H2 Styles
$h2_styles = '';
if( $zozo_options['zozo_h2_font_styles'] ) {
	$h2_styles .= 'font-family: "'.$zozo_options['zozo_h2_font_styles']['font-family'].'";';
	$h2_styles .= 'font-size: '.$zozo_options['zozo_h2_font_styles']['font-size'].';';
	if( $zozo_options['zozo_h2_font_styles']['font-style'] ) {
		$h2_styles .= 'font-style: '.$zozo_options['zozo_h2_font_styles']['font-style'].';';
	}
	$h2_styles .= 'font-weight: '.$zozo_options['zozo_h2_font_styles']['font-weight'].';';
	if( $zozo_options['zozo_h2_font_styles']['color'] ) {
		$h2_styles .= 'color: '.$zozo_options['zozo_h2_font_styles']['color'].';';
	}
	if( $zozo_options['zozo_h2_font_styles']['line-height'] ) {
		$h2_styles .= 'line-height: '.$zozo_options['zozo_h2_font_styles']['line-height'].';';
	}
}

if( $h2_styles ) {
	echo 'h2, .vc_cta3-actions .vc_general.vc_btn3.vc_btn3-style-transparent { '. $h2_styles .' }' . "\n";
}

// H3 Styles
$h3_styles = '';
if( $zozo_options['zozo_h3_font_styles'] ) {
	$h3_styles .= 'font-family: "'.$zozo_options['zozo_h3_font_styles']['font-family'].'";';
	$h3_styles .= 'font-size: '.$zozo_options['zozo_h3_font_styles']['font-size'].';';
	if( $zozo_options['zozo_h3_font_styles']['font-style'] ) {
		$h3_styles .= 'font-style: '.$zozo_options['zozo_h3_font_styles']['font-style'].';';
	}
	$h3_styles .= 'font-weight: '.$zozo_options['zozo_h3_font_styles']['font-weight'].';';
	if( $zozo_options['zozo_h3_font_styles']['color'] ) {
		$h3_styles .= 'color: '.$zozo_options['zozo_h3_font_styles']['color'].';';
	}
	if( $zozo_options['zozo_h3_font_styles']['line-height'] ) {
		$h3_styles .= 'line-height: '.$zozo_options['zozo_h3_font_styles']['line-height'].';';
	}
}

if( $h3_styles ) {
	echo 'h3, .stats-number, .comment-reply-title { '. $h3_styles .' }' . "\n";
}

// H4 Styles
$h4_styles = '';
if( $zozo_options['zozo_h4_font_styles'] ) {
	$h4_styles .= 'font-family: "'.$zozo_options['zozo_h4_font_styles']['font-family'].'";';
	$h4_styles .= 'font-size: '.$zozo_options['zozo_h4_font_styles']['font-size'].';';
	if( $zozo_options['zozo_h4_font_styles']['font-style'] ) {
		$h4_styles .= 'font-style: '.$zozo_options['zozo_h4_font_styles']['font-style'].';';
	}
	$h4_styles .= 'font-weight: '.$zozo_options['zozo_h4_font_styles']['font-weight'].';';
	if( $zozo_options['zozo_h4_font_styles']['color'] ) {
		$h4_styles .= 'color: '.$zozo_options['zozo_h4_font_styles']['color'].';';
	}
	if( $zozo_options['zozo_h4_font_styles']['line-height'] ) {
		$h4_styles .= 'line-height: '.$zozo_options['zozo_h4_font_styles']['line-height'].';';
	}
}

if( $h4_styles ) {
	echo 'h4, legend { '. $h4_styles .' }' . "\n";
}

// H5 Styles
$h5_styles = '';
if( $zozo_options['zozo_h5_font_styles'] ) {
	$h5_styles .= 'font-family: "'.$zozo_options['zozo_h5_font_styles']['font-family'].'";';
	$h5_styles .= 'font-size: '.$zozo_options['zozo_h5_font_styles']['font-size'].';';
	if( $zozo_options['zozo_h5_font_styles']['font-style'] ) {
		$h5_styles .= 'font-style: '.$zozo_options['zozo_h5_font_styles']['font-style'].';';
	}
	$h5_styles .= 'font-weight: '.$zozo_options['zozo_h5_font_styles']['font-weight'].';';
	if( $zozo_options['zozo_h5_font_styles']['color'] ) {
		$h5_styles .= 'color: '.$zozo_options['zozo_h5_font_styles']['color'].';';
	}
	if( $zozo_options['zozo_h5_font_styles']['line-height'] ) {
		$h5_styles .= 'line-height: '.$zozo_options['zozo_h5_font_styles']['line-height'].';';
	}
}

if( $h5_styles ) {
	echo 'h5, #bbpress-forums li.bbp-header, #bbpress-forums fieldset.bbp-form legend, #bbpress-forums .bbp-body .bbp-forum-title, #bbpress-forums .bbp-body .bbp-topic-permalink, .vc_tta.vc_general .vc_tta-tab > a, .stats-text, .smile-icon-timeline-wrap .timeline-separator-text .sep-text { '. $h5_styles .' }' . "\n";
}

// H6 Styles
$h6_styles = '';
if( $zozo_options['zozo_h6_font_styles'] ) {
	$h6_styles 		.= 'font-family: "'.$zozo_options['zozo_h6_font_styles']['font-family'].'";';
	$h6_styles 		.= 'font-size: '.$zozo_options['zozo_h6_font_styles']['font-size'].';';
	if( $zozo_options['zozo_h6_font_styles']['font-style'] ) {
		$h6_styles 	.= 'font-style: '.$zozo_options['zozo_h6_font_styles']['font-style'].';';
	}
	$h6_styles 		.= 'font-weight: '.$zozo_options['zozo_h6_font_styles']['font-weight'].';';
	if( $zozo_options['zozo_h6_font_styles']['color'] ) {
		$h6_styles 	.= 'color: '.$zozo_options['zozo_h6_font_styles']['color'].';';
	}
	if( $zozo_options['zozo_h6_font_styles']['line-height'] ) {
		$h6_styles 	.= 'line-height: '.$zozo_options['zozo_h6_font_styles']['line-height'].';';
	}
}

if( $h6_styles ) {
	echo 'h6, #bbpress-forums #bbp-single-user-details #bbp-user-navigation a, .sp-scrollable-table-wrapper thead tr th, .rtb-booking-form fieldset legend, button.ubtn { '. $h6_styles .' }' . "\n";
}

// Top Menu Font Styles
$topnav_styles = '';
if( $zozo_options['zozo_top_menu_font_styles'] ) {
	$topnav_styles 		.= 'font-family: "'.$zozo_options['zozo_top_menu_font_styles']['font-family'].'";';
	$topnav_styles 		.= 'font-size: '.$zozo_options['zozo_top_menu_font_styles']['font-size'].';';
	if( $zozo_options['zozo_top_menu_font_styles']['font-style'] ) {
		$topnav_styles 	.= 'font-style: '.$zozo_options['zozo_top_menu_font_styles']['font-style'].';';
	}
	$topnav_styles 		.= 'font-weight: '.$zozo_options['zozo_top_menu_font_styles']['font-weight'].';';
	if( $zozo_options['zozo_top_menu_font_styles']['color'] ) {
		$topnav_styles 	.= 'color: '.$zozo_options['zozo_top_menu_font_styles']['color'].';';
	}
	if( isset( $zozo_options['zozo_top_menu_font_styles']['line-height'] ) ) {
		$topnav_styles 	.= 'line-height: '.$zozo_options['zozo_top_menu_font_styles']['line-height'].';';
	}
}

if( $topnav_styles ) {
	echo '.top-menu-navigation .navbar-nav > li > a { '. $topnav_styles .' }' . "\n";
}

$topnav_hv_styles = '';
		
if ( $zozo_options['zozo_top_menu_hcolor']['hover'] ) {
	$topnav_hv_styles .= 'color: '. $zozo_options['zozo_top_menu_hcolor']['hover'] .';';
}		
if( $topnav_hv_styles ) {
	echo '.top-menu-navigation .navbar-nav > li > a:hover, .top-menu-navigation .navbar-nav > li > a:focus, .top-menu-navigation .navbar-nav .current-menu-item > a, .top-menu-navigation .navbar-nav .current-menu-ancestor > a { '. $topnav_hv_styles .' }' . "\n";
}

// Main Menu Font Stylings
$menu_font_styles = '';
if( $zozo_options['zozo_menu_font_styles'] ) {
	$menu_font_styles 		.= 'font-family: "'.$zozo_options['zozo_menu_font_styles']['font-family'].'";';
	$menu_font_styles 		.= 'font-size: '.$zozo_options['zozo_menu_font_styles']['font-size'].';';
	if( $zozo_options['zozo_menu_font_styles']['font-style'] ) {
		$menu_font_styles 	.= 'font-style: '.$zozo_options['zozo_menu_font_styles']['font-style'].';';
	}
	$menu_font_styles 		.= 'font-weight: '.$zozo_options['zozo_menu_font_styles']['font-weight'].';';
	if( $zozo_options['zozo_menu_font_styles']['color'] ) {
		$menu_font_styles 	.= 'color: '.$zozo_options['zozo_menu_font_styles']['color'].';';
	}
}

if( $menu_font_styles ) {
	echo '.zozo-main-nav > li > a { '. $menu_font_styles . ' }' . "\n";
}

$menu_hv_styles = '';
		
if ( $zozo_options['zozo_main_menu_hcolor']['hover'] ) {
	$menu_hv_styles .= 'color: '. $zozo_options['zozo_main_menu_hcolor']['hover'] .';';
}
if( $menu_hv_styles ) {
	echo '.zozo-main-nav > li > a:hover, .zozo-main-nav > li:hover > a, .zozo-main-nav > li.active > a, .header-logo-section .navbar-nav > li a:hover, .zozo-main-nav li.current-menu-ancestor > a, .zozo-main-nav li.current-menu-parent > a, .zozo-main-nav li.current-menu-item > a { '. $menu_hv_styles .' }' . "\n";
}

// Sub Menu Font Stylings
$submenu_styles = '';
if( $zozo_options['zozo_submenu_font_styles'] ) {
	$submenu_styles 		.= 'font-family: "'.$zozo_options['zozo_submenu_font_styles']['font-family'].'";';
	$submenu_styles 		.= 'font-size: '.$zozo_options['zozo_submenu_font_styles']['font-size'].';';
	if( $zozo_options['zozo_submenu_font_styles']['font-style'] ) {
		$submenu_styles 	.= 'font-style: '.$zozo_options['zozo_submenu_font_styles']['font-style'].';';
	}
	$submenu_styles 		.= 'font-weight: '.$zozo_options['zozo_submenu_font_styles']['font-weight'].';';
	if( $zozo_options['zozo_submenu_font_styles']['color'] ) {
		$submenu_styles 	.= 'color: '.$zozo_options['zozo_submenu_font_styles']['color'].';';
	}
	if( isset( $zozo_options['zozo_submenu_font_styles']['line-height'] ) ) {
		$submenu_styles 	.= 'line-height: '.$zozo_options['zozo_submenu_font_styles']['line-height'].';';
	}
}

if( $submenu_styles ) {
	echo '.zozo-main-nav .dropdown-menu > li > a, .zozo-main-nav .dropdown-menu .sub-menu a, .zozo-main-nav .zozo-megamenu .menu-item > a { '. $submenu_styles . ' }' . "\n";
}

$submenu_bg_styles = '';
if ( $zozo_options['zozo_submenu_bg_color'] ) {
	$submenu_bg_styles .= 'background-color: '.$zozo_options['zozo_submenu_bg_color'].' !important;';
}

if( isset( $zozo_options['zozo_submenu_show_border'] ) && $zozo_options['zozo_submenu_show_border'] == 1 ) {
	if( $zozo_options['zozo_main_submenu_border']['border-top'] ) {
		$submenu_bg_styles .= 'border-top-width: '. $zozo_options['zozo_main_submenu_border']['border-top'] .';';		
	}			
	if( $zozo_options['zozo_main_submenu_border']['border-bottom'] ) {
		$submenu_bg_styles .= 'border-bottom-width: '. $zozo_options['zozo_main_submenu_border']['border-bottom'] .';';
	}			
	if( $zozo_options['zozo_main_submenu_border']['border-left'] ) {
		$submenu_bg_styles .= 'border-left-width: '. $zozo_options['zozo_main_submenu_border']['border-left'] .';';
	}			
	if( $zozo_options['zozo_main_submenu_border']['border-right'] ) {
		$submenu_bg_styles .= 'border-right-width: '. $zozo_options['zozo_main_submenu_border']['border-right'] .';';			
	}
	
	if( isset( $zozo_options['zozo_main_submenu_border']['border-style'] ) && $zozo_options['zozo_main_submenu_border']['border-style'] != '' ) {
		$submenu_bg_styles .= 'border-style: '. $zozo_options['zozo_main_submenu_border']['border-style'] .';';
	}
	if( isset( $zozo_options['zozo_main_submenu_border']['border-color'] ) && $zozo_options['zozo_main_submenu_border']['border-color'] != '' ) {
		$submenu_bg_styles .= 'border-color: '. $zozo_options['zozo_main_submenu_border']['border-color'] .';';
	}
}

if( $submenu_bg_styles ) {
	echo '.zozo-main-nav.navbar-nav .dropdown-menu, .zozo-main-nav.navbar-nav .dropdown-menu .sub-menu, .zozo-main-nav.navbar-nav .sub-menu, .zozo-megamenu-wrapper, .header-side-top-submenu.dropdown-menu { '. $submenu_bg_styles . ' }' . "\n";
}

if( isset( $zozo_options['zozo_submenu_show_border'] ) && $zozo_options['zozo_submenu_show_border'] == 1 ) {
	echo '.zozo-main-nav.navbar-nav .dropdown-menu .sub-menu { top: -'. $zozo_options['zozo_main_submenu_border']['border-top'] .' !important; }' . "\n";
}
	
if( isset( $zozo_options['zozo_submenu_show_border'] ) && $zozo_options['zozo_submenu_show_border'] == 0 ) {
	echo '.zozo-main-nav.navbar-nav .dropdown-menu, .zozo-main-nav.navbar-nav .dropdown-menu .sub-menu, .zozo-main-nav.navbar-nav .sub-menu, .zozo-megamenu-wrapper, .header-side-top-submenu.dropdown-menu { border: none !important; }' . "\n";
	echo '.zozo-main-nav.navbar-nav .dropdown-menu .sub-menu { top: 0 !important; }' . "\n";
}

$submenu_hv_styles = $submenu_bg_hv_styles = '';
if ( $zozo_options['zozo_sub_menu_hcolor']['hover'] ) {
	$submenu_hv_styles .= 'color: '. $zozo_options['zozo_sub_menu_hcolor']['hover'] .';';
}
if ( $zozo_options['zozo_submenu_hbg_color'] ) {
	$submenu_bg_hv_styles .= 'background-color: '.$zozo_options['zozo_submenu_hbg_color'].';';			
}

if( $submenu_hv_styles ) {
	echo '.zozo-main-nav.navbar-nav .dropdown-menu > li > a:focus, .zozo-main-nav.navbar-nav .dropdown-menu > li > a:hover, .zozo-main-nav.navbar-nav .sub-menu > li > a:focus, .zozo-main-nav.navbar-nav .sub-menu > li > a:hover, .dropdown-menu > li.dropdown:hover > a, .sub-menu > li.dropdown:hover > a, .dropdown-menu > .active > a, .dropdown-menu > .active > a:focus, .dropdown-menu > .active > a:hover, .menu-item.active > a { '. $submenu_hv_styles .' }' . "\n";
}

if( $submenu_bg_hv_styles ) {
	echo '.zozo-main-nav.navbar-nav .dropdown-menu li.active, .zozo-main-nav.navbar-nav .dropdown-menu li:hover, .zozo-main-nav.navbar-nav .dropdown-menu .current-menu-parent, .zozo-main-nav.navbar-nav .current-menu-ancestor .dropdown-menu .current-menu-item, .zozo-megamenu-wrapper .zozo-megamenu .sub-menu li:hover, .zozo-megamenu-wrapper .zozo-megamenu .sub-menu li.active { '. $submenu_bg_hv_styles .' }' . "\n";
}

// Title Font Stylings
$title_styles = '';
if( $zozo_options['zozo_single_post_title_fonts'] ) {
	$title_styles 		.= 'font-family: "'.$zozo_options['zozo_single_post_title_fonts']['font-family'].'";';
	$title_styles 		.= 'font-size: '.$zozo_options['zozo_single_post_title_fonts']['font-size'].';';
	if( $zozo_options['zozo_single_post_title_fonts']['font-style'] ) {
		$title_styles 	.= 'font-style: '.$zozo_options['zozo_single_post_title_fonts']['font-style'].';';
	}
	if( $zozo_options['zozo_single_post_title_fonts']['font-weight'] ) {
		$title_styles 	.= 'font-weight: '.$zozo_options['zozo_single_post_title_fonts']['font-weight'].';';
	}
	if( $zozo_options['zozo_single_post_title_fonts']['color'] ) {
		$title_styles 	.= 'color: '.$zozo_options['zozo_single_post_title_fonts']['color'].';';
	}
	if( $zozo_options['zozo_single_post_title_fonts']['line-height'] ) {
		$title_styles 	.= 'line-height: '.$zozo_options['zozo_single_post_title_fonts']['line-height'].';';
	}
}

if( $title_styles ) {
	echo '.entry-title, .page-title-section .page-title-captions h1.entry-title { '. $title_styles . ' }' . "\n";
}

// Blog Archive Font Stylings
$archive_styles = '';
if( $zozo_options['zozo_post_title_font_styles'] ) {
	$archive_styles 		.= 'font-family: "'.$zozo_options['zozo_post_title_font_styles']['font-family'].'";';
	$archive_styles 		.= 'font-size: '.$zozo_options['zozo_post_title_font_styles']['font-size'].';';
	if( $zozo_options['zozo_post_title_font_styles']['font-style'] ) {
		$archive_styles 	.= 'font-style: '.$zozo_options['zozo_post_title_font_styles']['font-style'].';';
	}
	if( $zozo_options['zozo_post_title_font_styles']['font-weight'] ) {
		$archive_styles 	.= 'font-weight: '.$zozo_options['zozo_post_title_font_styles']['font-weight'].';';
	}
	if( $zozo_options['zozo_post_title_font_styles']['color'] ) {
		$archive_styles 	.= 'color: '.$zozo_options['zozo_post_title_font_styles']['color'].';';
	}
	if( $zozo_options['zozo_post_title_font_styles']['line-height'] ) {
		$archive_styles 	.= 'line-height: '.$zozo_options['zozo_post_title_font_styles']['line-height'].';';
	}
}

if( $archive_styles ) {
	echo '.post h2.entry-title, .category-title { '. $archive_styles . ' }' . "\n";
}

// Widget Title Font Stylings
$widget_title_styles = '';
if( $zozo_options['zozo_widget_title_fonts'] ) {
	$widget_title_styles 		.= 'font-family: "'.$zozo_options['zozo_widget_title_fonts']['font-family'].'";';
	$widget_title_styles 		.= 'font-size: '.$zozo_options['zozo_widget_title_fonts']['font-size'].';';
	if( $zozo_options['zozo_widget_title_fonts']['font-style'] ) {
		$widget_title_styles 	.= 'font-style: '.$zozo_options['zozo_widget_title_fonts']['font-style'].';';
	}
	if( $zozo_options['zozo_widget_title_fonts']['font-weight'] ) {
		$widget_title_styles 	.= 'font-weight: '.$zozo_options['zozo_widget_title_fonts']['font-weight'].';';
	}
	if( $zozo_options['zozo_widget_title_fonts']['color'] ) {
		$widget_title_styles 	.= 'color: '.$zozo_options['zozo_widget_title_fonts']['color'].';';
	}
	if( isset( $zozo_options['zozo_widget_title_fonts']['line-height'] ) ) {
		$widget_title_styles 	.= 'line-height: '.$zozo_options['zozo_widget_title_fonts']['line-height'].';';
	}
}

if( $widget_title_styles ) {
	echo '.widget h3 { '. $widget_title_styles . ' }' . "\n";
}

// Widget Text Font Stylings
$widget_text_styles = '';
if( $zozo_options['zozo_widget_text_fonts'] ) {
	$widget_text_styles 		.= 'font-family: "'.$zozo_options['zozo_widget_text_fonts']['font-family'].'";';
	$widget_text_styles 		.= 'font-size: '.$zozo_options['zozo_widget_text_fonts']['font-size'].';';
	if( $zozo_options['zozo_widget_text_fonts']['font-style'] ) {
		$widget_text_styles 	.= 'font-style: '.$zozo_options['zozo_widget_text_fonts']['font-style'].';';
	}
	if( $zozo_options['zozo_widget_text_fonts']['font-weight'] ) {
		$widget_text_styles 	.= 'font-weight: '.$zozo_options['zozo_widget_text_fonts']['font-weight'].';';
	}
	if( $zozo_options['zozo_widget_text_fonts']['color'] ) {
		$widget_text_styles 	.= 'color: '.$zozo_options['zozo_widget_text_fonts']['color'].';';
	}
	if( isset( $zozo_options['zozo_widget_text_fonts']['line-height'] ) ) {
		$widget_text_styles 	.= 'line-height: '.$zozo_options['zozo_widget_text_fonts']['line-height'].';';
	}
}

if( $widget_text_styles ) {
	echo '.widget div, .widget p { '. $widget_text_styles . ' }' . "\n";
}

// Footer Widget Title Font Stylings
$footer_widget_title_styles = '';
if( $zozo_options['zozo_footer_widget_title_fonts'] ) {
	$footer_widget_title_styles 		.= 'font-family: "'.$zozo_options['zozo_footer_widget_title_fonts']['font-family'].'";';
	$footer_widget_title_styles 		.= 'font-size: '.$zozo_options['zozo_footer_widget_title_fonts']['font-size'].';';
	if( $zozo_options['zozo_footer_widget_title_fonts']['font-style'] ) {
		$footer_widget_title_styles 	.= 'font-style: '.$zozo_options['zozo_footer_widget_title_fonts']['font-style'].';';
	}
	if( $zozo_options['zozo_footer_widget_title_fonts']['font-weight'] ) {
		$footer_widget_title_styles 	.= 'font-weight: '.$zozo_options['zozo_footer_widget_title_fonts']['font-weight'].';';
	}
	if( $zozo_options['zozo_footer_widget_title_fonts']['color'] ) {
		$footer_widget_title_styles 	.= 'color: '.$zozo_options['zozo_footer_widget_title_fonts']['color'].';';
	}
	if( isset( $zozo_options['zozo_footer_widget_title_fonts']['line-height'] ) ) {
		$footer_widget_title_styles 	.= 'line-height: '.$zozo_options['zozo_footer_widget_title_fonts']['line-height'].';';
	}
}

if( $footer_widget_title_styles ) {
	echo '.footer-widgets .widget h3 { '. $footer_widget_title_styles . ' }' . "\n";
}

// Footer Widget Text Font Stylings
$footer_widget_text_styles = '';
if( $zozo_options['zozo_footer_widget_text_fonts'] ) {
	$footer_widget_text_styles 		.= 'font-family: "'.$zozo_options['zozo_footer_widget_text_fonts']['font-family'].'";';
	$footer_widget_text_styles 		.= 'font-size: '.$zozo_options['zozo_footer_widget_text_fonts']['font-size'].';';
	if( $zozo_options['zozo_footer_widget_text_fonts']['font-style'] ) {
		$footer_widget_text_styles 	.= 'font-style: '.$zozo_options['zozo_footer_widget_text_fonts']['font-style'].';';
	}
	if( $zozo_options['zozo_footer_widget_text_fonts']['font-weight'] ) {
		$footer_widget_text_styles 	.= 'font-weight: '.$zozo_options['zozo_footer_widget_text_fonts']['font-weight'].';';
	}
	if( $zozo_options['zozo_footer_widget_text_fonts']['color'] ) {
		$footer_widget_text_styles 	.= 'color: '.$zozo_options['zozo_footer_widget_text_fonts']['color'].';';
	}
	if( isset( $zozo_options['zozo_footer_widget_text_fonts']['line-height'] ) ) {
		$footer_widget_text_styles 	.= 'line-height: '.$zozo_options['zozo_footer_widget_text_fonts']['line-height'].';';
	}
}

if( $footer_widget_text_styles ) {
	echo '.footer-widgets .widget div, .footer-widgets .widget p { '. $footer_widget_text_styles . ' }' . "\n";
}

// Logo, Menu Heights
// Logo Spacing
$logo_styles = '';
if( isset( $zozo_options['zozo_logo_padding']['padding-top'] ) && $zozo_options['zozo_logo_padding']['padding-top'] != '' ) {
	$logo_styles .= 'padding-top: '. $zozo_options['zozo_logo_padding']['padding-top'] .';';
}			
if( isset( $zozo_options['zozo_logo_padding']['padding-bottom'] ) && $zozo_options['zozo_logo_padding']['padding-bottom'] != '' ) {
	$logo_styles .= 'padding-bottom: '. $zozo_options['zozo_logo_padding']['padding-bottom'] .';';
}			
if( isset( $zozo_options['zozo_logo_padding']['padding-left'] ) && $zozo_options['zozo_logo_padding']['padding-left'] != '' ) {
	$logo_styles .= 'padding-left: '. $zozo_options['zozo_logo_padding']['padding-left'] .';';
}
if( isset( $zozo_options['zozo_logo_padding']['padding-right'] ) && $zozo_options['zozo_logo_padding']['padding-right'] != '' ) {
	$logo_styles .= 'padding-right: '. $zozo_options['zozo_logo_padding']['padding-right'] .';';
}
if( isset( $logo_styles ) && $logo_styles != '' ) {
	echo '.navbar-header .navbar-brand img, .navbar-brand img { '. $logo_styles .' }' . "\n";
}

$logo_sticky_styles = '';
if( isset( $zozo_options['zozo_sticky_logo_padding']['padding-top'] ) && $zozo_options['zozo_sticky_logo_padding']['padding-top'] != '' ) {
	$logo_sticky_styles .= 'padding-top: '. $zozo_options['zozo_sticky_logo_padding']['padding-top'] .';';
}			
if( isset( $zozo_options['zozo_sticky_logo_padding']['padding-bottom'] ) && $zozo_options['zozo_sticky_logo_padding']['padding-bottom'] != '' ) {
	$logo_sticky_styles .= 'padding-bottom: '. $zozo_options['zozo_sticky_logo_padding']['padding-bottom'] .';';
}			
if( isset( $zozo_options['zozo_sticky_logo_padding']['padding-left'] ) && $zozo_options['zozo_sticky_logo_padding']['padding-left'] != '' ) {
	$logo_sticky_styles .= 'padding-left: '. $zozo_options['zozo_sticky_logo_padding']['padding-left'] .';';
}
if( isset( $zozo_options['zozo_sticky_logo_padding']['padding-right'] ) && $zozo_options['zozo_sticky_logo_padding']['padding-right'] != '' ) {
	$logo_sticky_styles .= 'padding-right: '. $zozo_options['zozo_sticky_logo_padding']['padding-right'] .';';
}
if( isset( $logo_sticky_styles ) && $logo_sticky_styles != '' ) {
	echo '.navbar-header.zozo-has-sticky-logo .navbar-brand img.zozo-sticky-logo { '. $logo_sticky_styles .' }' . "\n";
}

// Menu Heights
$menu_lheight_styles = '';
$menu_height = '';
if( isset( $zozo_options['zozo_menu_height'] ) && $zozo_options['zozo_menu_height']['height'] != '' ) {
	if( is_numeric( $zozo_options['zozo_menu_height']['height'] ) ) {
		$menu_height = $zozo_options['zozo_menu_height']['height'] . $zozo_options['zozo_menu_height']['units'];
	} else {
		$menu_height = $zozo_options['zozo_menu_height']['height'];
	}
}			
if( isset( $menu_height ) && $menu_height != '' ) {
	echo '.header-section .header-main-section { height: '. $menu_height .'; }' . "\n";
	echo '.header-section .header-main-section .navbar-header .navbar-brand, .header-section .header-main-section .zozo-main-nav > li, .header-section .header-main-section .zozo-main-nav > li > a, .header-section .header-main-section li.extra-nav, .header-section .header-main-section li.extra-nav > a, .header-section .header-main-section li.extra-nav i, .header-section .header-main-section .header-toggle-content, .type-header-9 .navbar-nav.zozo-main-bar > li, .type-header-9 .navbar-nav.zozo-main-bar > li a { line-height: '. $menu_height .'; height: '. $menu_height .'; }' . "\n";
	echo '.header-section.type-header-3 .header-main-section { height: '. ( $menu_height * 2 ) .'px; }' . "\n";
}

// Sticky Menu Height
$sticky_menu_height_styles = '';
$sticky_menu_height = '';
if( isset( $zozo_options['zozo_sticky_menu_height'] ) && $zozo_options['zozo_sticky_menu_height']['height'] != '' ) {
	if( is_numeric( $zozo_options['zozo_sticky_menu_height']['height'] ) ) {
		$sticky_menu_height = $zozo_options['zozo_sticky_menu_height']['height'] . $zozo_options['zozo_sticky_menu_height']['units'];
	} else {
		$sticky_menu_height = $zozo_options['zozo_sticky_menu_height']['height'];
	}
}
if( isset( $sticky_menu_height ) && $sticky_menu_height != '' ) {
	echo '.header-section .is-sticky .header-main-section, .header-section.type-header-3 .is-sticky .header-main-section { height: '. $sticky_menu_height .'; }' . "\n";
	echo '.header-section .is-sticky .header-main-section .navbar-header .navbar-brand, .header-section .is-sticky .header-main-section .zozo-main-nav > li, .header-section .is-sticky .header-main-section .zozo-main-nav > li > a, .header-section .is-sticky .header-main-section li.extra-nav, .header-section .is-sticky .header-main-section li.extra-nav > a, .header-section .is-sticky .header-main-section li.extra-nav i, .header-section .is-sticky .header-main-section .header-toggle-content, .type-header-9 .is-sticky .navbar-nav.zozo-main-bar > li, .type-header-9 .is-sticky .navbar-nav.zozo-main-bar > li a { line-height: '. $sticky_menu_height .'; height: '. $sticky_menu_height .'; }' . "\n";
}

// Logo Bar Heights for Header 4, 5, 6, 11
$logo_bar_height_styles = '';
$logo_bar_height = '';
if( isset( $zozo_options['zozo_logo_bar_height'] ) && $zozo_options['zozo_logo_bar_height']['height'] != '' ) {
	if( is_numeric( $zozo_options['zozo_logo_bar_height']['height'] ) ) {
		$logo_bar_height = $zozo_options['zozo_logo_bar_height']['height'] . $zozo_options['zozo_logo_bar_height']['units'];
	} else {
		$logo_bar_height = $zozo_options['zozo_logo_bar_height']['height'];
	}
}
if( isset( $logo_bar_height ) && $logo_bar_height != '' ) {
	echo '.header-section .header-logo-section li, .header-section .header-logo-section .navbar-header .navbar-brand, .header-section.type-header-6 .header-logo-section li.header-top-cart, .type-header-6 .header-logo-section .zozo-logo-bar { line-height: '. $logo_bar_height .'; height: '. $logo_bar_height .'; }' . "\n";	
}

// Menu Heights for Header 4, 5, 6, 11
$menu_lheight_alt_styles = '';
$menu_height_alt = '';
if( isset( $zozo_options['zozo_menu_height_alt'] ) && $zozo_options['zozo_menu_height_alt']['height'] != '' ) {
	if( is_numeric( $zozo_options['zozo_menu_height_alt']['height'] ) ) {
		$menu_height_alt = $zozo_options['zozo_menu_height_alt']['height'] . $zozo_options['zozo_menu_height_alt']['units'];
	} else {
		$menu_height_alt = $zozo_options['zozo_menu_height_alt']['height'];
	}
	$half_menu_height_alt = $menu_height_alt / 2;
}
if( isset( $menu_height_alt ) && $menu_height_alt != '' ) {
	echo '.header-section.header-fullwidth-menu .header-main-section { height: '. $menu_height_alt .'; }' . "\n";
	echo '.header-section.header-fullwidth-menu .header-main-section .navbar-header .navbar-brand, .header-section.header-fullwidth-menu .header-main-section .zozo-main-nav > li, .header-section.header-fullwidth-menu .header-main-section .zozo-main-nav > li > a, .header-section.header-fullwidth-menu .header-main-section li.extra-nav, .header-section.header-fullwidth-menu .header-main-section li.extra-nav > a, .header-section.header-fullwidth-menu .header-main-section li.extra-nav i, .header-section.header-fullwidth-menu .header-main-section li.social-nav { line-height: '. $menu_height_alt .'; height: '. $menu_height_alt .'; }' . "\n";
}

// Sticky Menu Heights for Header 4, 5, 6, 11
$sticky_menu_height_alt_styles = '';
$sticky_menu_height_alt = '';
if( isset( $zozo_options['zozo_sticky_menu_height_alt'] ) && $zozo_options['zozo_sticky_menu_height_alt']['height'] != '' ) {
	if( is_numeric( $zozo_options['zozo_sticky_menu_height_alt']['height'] ) ) {
		$sticky_menu_height_alt = $zozo_options['zozo_sticky_menu_height_alt']['height'] . $zozo_options['zozo_sticky_menu_height_alt']['units'];
	} else {
		$sticky_menu_height_alt = $zozo_options['zozo_sticky_menu_height_alt']['height'];
	}
	$half_sticky_menu_height_alt = $sticky_menu_height_alt / 2;
}			
if( isset( $sticky_menu_height_alt ) && $sticky_menu_height_alt != '' ) {
	echo '.header-section.header-fullwidth-menu .is-sticky .header-main-section { height: '. $sticky_menu_height_alt .'; }' . "\n";
	echo '.header-section.header-fullwidth-menu .is-sticky .header-main-section .navbar-header .navbar-brand, .header-section.header-fullwidth-menu .is-sticky .header-main-section .zozo-main-nav > li, .header-section.header-fullwidth-menu .is-sticky .header-main-section .zozo-main-nav > li > a, .header-section.header-fullwidth-menu .is-sticky .header-main-section li.extra-nav, .header-section.header-fullwidth-menu .is-sticky .header-main-section li.extra-nav > a, .header-section.header-fullwidth-menu .is-sticky .header-main-section li.extra-nav i, .header-section.header-fullwidth-menu .is-sticky .header-main-section li.social-nav { line-height: '. $sticky_menu_height_alt .'; height: '. $sticky_menu_height_alt .'; }' . "\n";
}
