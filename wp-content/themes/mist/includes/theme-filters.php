<?php
/**
* Filters and Actions
*/

// Theme Setup
add_action( 'after_setup_theme', 'zozothemes_setup' );
add_action( 'after_switch_theme', 'zozo_update_image_sizes' );
add_filter( 'wp_nav_menu_args', 'zozo_main_menu_args' );
// Add layout extra classes to body_class output
add_filter( 'body_class', 'zozo_layout_body_class', 10 );
// Add custom meta tags to the <head>
add_action( 'wp_head', 'zozo_meta_tags', 10 );
// Custom Css from Theme Option
add_action( 'wp_head', 'zozo_enqueue_custom_styling' );
// Load Theme Stylesheet and Jquery only on Frontend
if ( ! is_admin() ) {
	add_action( 'wp_enqueue_scripts', 'zozo_load_theme_scripts', 20 );
}
// Store Ajax URL
add_action( 'wp_head', 'zozo_ajaxurl' );
// Register default function when plugin not activated
add_action( 'wp_head', 'zozo_check_plugins_loaded' );
// Custom Excerpt Length and Custom More Excerpt
add_filter( 'excerpt_length', 'zozo_custom_excerpt_length', 999 );
add_filter( 'excerpt_more', 'zozo_custom_excerpt_more' );
// Activate Maintenance or Coming Soon Mode
add_action( 'template_redirect', 'zozo_activate_maintenance_mode' );

/* ======================================
 * Theme Setup
 * ====================================== */
 
/* Set the content width based on the theme's design and stylesheet. */
if ( ! isset( $content_width ) )
	$content_width = 640; /* pixels */

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which runs
 * before the init hook. The init hook is too late for some features, such as indicating
 * support post thumbnails.
 */

if ( ! function_exists( 'zozothemes_setup' ) ) {
	function zozothemes_setup () {
		
		// load textdomain
		load_theme_textdomain('zozothemes', ZOZOTHEME_DIR . '/languages');
		
		// This theme styles the visual editor to resemble the theme style.
		add_editor_style( 'css/editor-style.css' );
		
		// Enable support for Post Thumbnails
		add_theme_support( 'post-thumbnails' );
		
		add_image_size('blog-large', 1170, 500, true);
		add_image_size('blog-medium', 570, 370, true);
		add_image_size('blog-thumb', 85, 85, true);
		add_image_size('theme-mid', 500, 320, true);
		add_image_size('team', 500, 500, true);
		add_image_size('portfolio-large', 1000, 695, true);
		add_image_size('portfolio-mid', 560, 385, true);
		
		// Title Tag Support
		add_theme_support( 'title-tag' );
	
		// Add default posts and comments RSS feed links to head
		add_theme_support( 'automatic-feed-links' );
		
		/*
		 * Switches default core markup for gallery and caption to output valid HTML5.
		 */
		add_theme_support( 'html5', array( 'gallery', 'caption' ) );
		
		// Woocommerce Support
		add_theme_support( 'woocommerce' );
		
		// Sportspress Support
		add_theme_support( 'sportspress' );
		
		// Add Posts Format Support
		add_theme_support( 'post-formats', array( 'aside', 'gallery', 'link', 'image', 'quote', 'video', 'audio', 'chat' ) );
		
		// This theme uses its own gallery styles.
		add_filter( 'use_default_gallery_style', '__return_false' );
		
	} // End zozothemes_setup()
}

/* ======================================
 * Unset Intermediate Image Sizes
 * ====================================== */
 
function zozo_update_image_sizes() {

    // Change Default Sizes
	update_option('large_size_w', 600);
	update_option('large_size_h', 600);
	update_option('large_crop', '1');
}

/* ===================================================
 * Change Main Navigation menu based on pages or posts
 * =================================================== */
 
function zozo_main_menu_args( $args ) {

    global $post;

	$post_id = '';
	$menu_type = '';

	if ( ( get_option( 'show_on_front' ) && get_option( 'page_for_posts' ) && is_home() ) || ( get_option( 'page_for_posts' ) && is_archive() && ! is_tax( 'portfolio_categories' ) && ! is_tax( 'portfolio_tags' ) && ! is_tax( 'testimonial_categories' ) && ! is_tax( 'team_categories' ) && ( class_exists( 'Woocommerce' ) && ! is_shop() ) && ! is_tax( 'product_cat') && ! is_tax( 'product_tag' ) ) ) {
		$post_id = get_option( 'page_for_posts' );
	} else {
		if ( isset( $post ) ) {
			$post_id = $post->ID;
		}

		if( ZOZO_WOOCOMMERCE_ACTIVE ) {
			if ( is_shop() || is_tax( 'product_cat' ) || is_tax( 'product_tag' ) ) {
				$post_id = get_option( 'woocommerce_shop_page_id' );
			}
		}
	}
	
	$menu_type = get_post_meta( $post_id, 'zozo_custom_nav_menu', true );

	if ( $menu_type != '' && $menu_type != 'default' && ( $args['theme_location'] == 'primary-menu' ) ) {
		$args['menu'] = $menu_type;
	}

	return $args;
}

/* ======================================
 * Add layout to body_class output
 * ====================================== */
if ( ! function_exists( 'zozo_layout_body_class' ) ) {

	function zozo_layout_body_class( $classes ) {
	
		global $post, $wp_query, $zozo_options;

		$layout = $blog_type = $theme_class = $footer_layout = $shop_page_id = '';
						
		if( ZOZO_WOOCOMMERCE_ACTIVE ) {
		
			if( is_shop() ) {
				$post_id = get_option('woocommerce_shop_page_id');
				$layout = get_post_meta( $post_id, 'zozo_layout', true );
			}
				
			else if( is_product_category() || is_product_tag() ) {
				$layout = $zozo_options['zozo_woo_archive_layout'];
				if( isset( $layout ) && $layout == '' ) {
					$layout = 'one-col';
				}
			} 
			
			else if( is_archive() ) {
				$layout = $zozo_options['zozo_blog_archive_layout'];
				$blog_type = 'blog-' . $zozo_options['zozo_archive_blog_type'];
			}
			
		} else {
		
			if( is_archive() ) {
				$layout = $zozo_options['zozo_blog_archive_layout'];
				$blog_type = 'blog-' . $zozo_options['zozo_archive_blog_type'];
			}
			
		}
		
		if( is_home() ) {
			$home_id = get_option( 'page_for_posts' );
			$layout = get_post_meta( $home_id, 'zozo_layout', true );
			if( ! $layout ) {
				$layout = $zozo_options['zozo_blog_layout'];
			}
			$blog_type = 'blog-' . $zozo_options['zozo_blog_type'];
		}
		
		// Only for Posts
		if ( is_singular( 'post' ) ) {
			$layout = get_post_meta( $post->ID, 'zozo_layout', true );
			if( ! $layout ) {
				$layout = $zozo_options['zozo_single_post_layout'];
			}
		}
		// If Singular posts value empty set theme option value	
		elseif( is_singular() ) {
			$layout = get_post_meta( $post->ID, 'zozo_layout', true );
			if( ! $layout ) {
				$layout = $zozo_options['zozo_layout'];
			}			
		}
		
		if( ZOZO_WOOCOMMERCE_ACTIVE ) {
			if( is_product() ) {
				$layout = $zozo_options['zozo_woo_single_layout'];
			}
		}
		
		if( ! $layout ) {			
			if( $zozo_options['zozo_layout'] != '' ) {		
				$layout = $zozo_options['zozo_layout'];
			}
			else {
				$layout = 'one-col';
			}
		}
				
		// Theme Layout
		if( is_singular() ) {
			$theme_class = get_post_meta( $post->ID, 'zozo_theme_layout', true );			
		}
		
		if( $theme_class == '' || $theme_class == 'default' ) {		
			if( $zozo_options['zozo_theme_layout'] != '' ) {
				$theme_class = $zozo_options['zozo_theme_layout'];
			} else {
				$theme_class = 'boxed';
			}
		}
		
		$classes[] = $theme_class;
		
		// Page Title Bar
		if( is_singular( 'post' ) || is_singular( 'page' ) ) {
			$hide_title_bar = get_post_meta( $post->ID, 'zozo_hide_page_title_bar', true );
			$classes[] = 'hide-title-bar-' . $hide_title_bar;
		}
		
		// RTL
		$enable_rtl_mode = $zozo_options['zozo_enable_rtl_mode'];
		if( is_rtl() || ( isset( $enable_rtl_mode ) && $enable_rtl_mode == 1 ) || isset( $_GET['RTL'] ) ) {
			$classes[] = 'rtl';
		}
		
		// Theme Skin
		if( isset( $zozo_options['zozo_theme_skin'] ) && $zozo_options['zozo_theme_skin'] != '' ) {
			$classes[] = 'theme-skin-' .$zozo_options['zozo_theme_skin'];
		}
		
		// Footer Class
		if( isset( $zozo_options['zozo_footer_style'] ) && $zozo_options['zozo_footer_style'] != '' ) {
			$classes[] = 'footer-' .$zozo_options['zozo_footer_style'];
		}
		
		// Sticky Class
		if( isset( $zozo_options['zozo_sticky_header'] ) && $zozo_options['zozo_sticky_header'] == 1 ) {
			$classes[] = 'header-is-sticky';
		}
		
		// Mobile Sticky Class
		if( isset( $zozo_options['zozo_sticky_mobile_header'] ) && $zozo_options['zozo_sticky_mobile_header'] == 1 ) {
			$classes[] = 'header-mobile-is-sticky';
		} else {
			$classes[] = 'header-mobile-un-sticky';
		}
		
		// Sliding Bar Class
		if( isset( $zozo_options['zozo_disable_sliding_bar'] ) && $zozo_options['zozo_disable_sliding_bar'] == 1 ) {
			$classes[] = 'no-mobile-slidingbar';
		}
		
		// Catalog Mode Class
		if( ZOZO_WOOCOMMERCE_ACTIVE ) {
			if( isset( $zozo_options['zozo_woo_enable_catalog_mode'] ) && $zozo_options['zozo_woo_enable_catalog_mode'] == 1 ) {
				$classes[] = 'woo-enable-catalog-mode';
			}
		}
		
		// Blog Type
		$classes[] = $blog_type;
		
		// Add classes to body_class() output 
		$classes[] = $layout;
		
		// Mobile
		if ( wp_is_mobile() ) {
			$classes[] = 'is-mobile';
		}
		
		return $classes;
		
	} // End zozo_layout_body_class()
	
}

/* ======================================
 * Print custom meta tags
 * ====================================== */
if ( ! function_exists( 'zozo_meta_tags' ) ) {

	function zozo_meta_tags() {
	
		global $zozo_options;
		
		if( isset($zozo_options['zozo_enable_responsive']) && $zozo_options['zozo_enable_responsive'] == 1 ) {
			echo '<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />' . "\n";
		}
		
		// Favicon		
		if( isset( $zozo_options['zozo_favicon'] ) && $zozo_options['zozo_favicon'] != '' ) {
			echo '<link rel="shortcut icon" href="'. esc_url( $zozo_options['zozo_favicon']['url'] ) .'" type="image/x-icon" />' . "\n";
		}
		// iPhone Icon
		if( isset( $zozo_options['zozo_apple_iphone_icon'] ) && $zozo_options['zozo_apple_iphone_icon'] != '' ) {
			echo '<link rel="apple-touch-icon-precomposed" href="'. esc_url( $zozo_options['zozo_apple_iphone_icon']['url'] ) .'">' . "\n";
		}
		// iPhone Retina Display Icon
		if( isset( $zozo_options['zozo_apple_iphone_retina_icon'] ) && $zozo_options['zozo_apple_iphone_retina_icon'] != '') {
			echo '<link rel="apple-touch-icon-precomposed" sizes="114x114" href="'. esc_url( $zozo_options['zozo_apple_iphone_retina_icon']['url'] ) .'">' . "\n";
		}
		// iPad Icon	
		if( isset( $zozo_options['zozo_apple_iphone_retina_icon'] ) && $zozo_options['zozo_apple_ipad_icon'] != '' ) {
			echo '<link rel="apple-touch-icon-precomposed" sizes="72x72" href="'. esc_url( $zozo_options['zozo_apple_ipad_icon']['url'] ) .'">' . "\n";
		}
		// iPad Retina Display Icon
		if( isset( $zozo_options['zozo_apple_iphone_retina_icon'] ) && $zozo_options['zozo_apple_ipad_retina_icon'] != '' ) {
			echo '<link rel="apple-touch-icon-precomposed" sizes="144x144" href="'. esc_url( $zozo_options['zozo_apple_ipad_retina_icon']['url'] ) .'">' . "\n";
		}
				
	} // End zozo_meta_tags()
	
}

/* ======================================
 * Enqueue Custom Styling
 * ====================================== */

if ( ! function_exists( 'zozo_enqueue_custom_styling' ) ) {

	function zozo_enqueue_custom_styling () {
		ob_start();
		include_once get_template_directory() . '/includes/custom-styles.php';
		$custom_css = ob_get_contents();
		ob_get_clean();
		
		$output = '';
		// Front Page Parallax Styles
		if( is_page_template( 'template-parallax-page.php' ) ) {
			/* Check for Query */
			$page_query = zozo_parallax_front_query();	
				
			if( !empty( $page_query ) ) {
			
				$query_styles = new WP_Query( $page_query );
					
				if( $query_styles->have_posts() ) :
					while ( $query_styles->have_posts() ) : $query_styles->the_post();
						global $post;							
						$backup = $post;
					
						$zozo_additional_sections_order = get_post_meta( $post->ID, 'zozo_parallax_additional_sections_order', true );
						
						$output .= zozo_parallax_custom_styles( $post );
						
						if( $zozo_additional_sections_order != '' ) {
							$additional_query = zozo_parallax_additional_query( $zozo_additional_sections_order );
							
							if( !empty( $additional_query ) ) {							
								$custom_query = new WP_Query( $additional_query );
							}
							if ( $custom_query->have_posts() ):
								while ( $custom_query->have_posts() ): $custom_query->the_post();
								
									$output .= zozo_parallax_custom_styles( $post );
									
								endwhile;
							endif;
							wp_reset_postdata();
						}
						
						$post = $backup;
						
					endwhile;
				endif;
				wp_reset_postdata();
			}			
		}
		
		// Multipage Additional Section Styles
		if( is_page_template( 'template-multipage.php' ) ) {
			if( have_posts() ) :
				while ( have_posts() ) : the_post();
					global $post;							
					$backup = $post;
					
					$zozo_additional_sections_order = get_post_meta( $post->ID, 'zozo_parallax_additional_sections_order', true );
										
					if( $zozo_additional_sections_order != '' ) {
						$additional_query = zozo_parallax_additional_query( $zozo_additional_sections_order );
						
						if( !empty( $additional_query ) ) {							
							$custom_query = new WP_Query( $additional_query );
						}
						if ( $custom_query->have_posts() ):
							while ( $custom_query->have_posts() ): $custom_query->the_post();
							
								$output .= zozo_parallax_custom_styles( $post );
								
							endwhile;
						endif;
						wp_reset_postdata();
					}
					
					$post = $backup;
					
				endwhile;
			endif;
		}
		
		echo '<!-- Custom CSS -->'. "\n";
		echo '<style type="text/css">' . $custom_css . $output;
		echo '</style>' . "\n";
		
	} // End zozo_enqueue_custom_styling()
	
}

/* =========================================
 * Parallax Custom Styles Output
 * ========================================= */
 
if ( ! function_exists( 'zozo_parallax_custom_styles' ) ) {
	function zozo_parallax_custom_styles( $post ) {
	
		global $post;
		
		$output = '';
		
		// Section Padding Styles
		$zozo_section_padding_top = get_post_meta( $post->ID, 'zozo_section_padding_top', true);
		$zozo_section_padding_bottom = get_post_meta( $post->ID, 'zozo_section_padding_bottom', true);
		$zozo_section_header_padding = get_post_meta( $post->ID, 'zozo_section_header_padding', true);
		
		$zozo_section_header_padding = ( !empty($zozo_section_header_padding) || $zozo_section_header_padding == '0' ) ? $zozo_section_header_padding : '40px';
		
		if( ( !empty($zozo_section_padding_top) || $zozo_section_padding_top == '0' ) || ( !empty($zozo_section_padding_bottom) || $zozo_section_padding_bottom == '0' ) ) {
			$output .= '#page-' . $post->post_name . ' { ';
			if( ( !empty($zozo_section_padding_top) || $zozo_section_padding_top == '0' ) ) {
				$output .= 'padding-top:' . $zozo_section_padding_top . ';';
			}
			
			if( ( !empty($zozo_section_padding_bottom) || $zozo_section_padding_bottom == '0' ) ) {
				$output .= 'padding-bottom:' . $zozo_section_padding_bottom . ';';								
			}
			$output .= ' }'. "\n";
		}
		$output .= '#page-' . $post->post_name . ' .parallax-header { padding-bottom:' . $zozo_section_header_padding . '; }'. "\n";
		
		// Section Color Styles
		$zozo_section_title_color = get_post_meta( $post->ID, 'zozo_section_title_color', true);
		$zozo_section_slogan_color = get_post_meta( $post->ID, 'zozo_section_slogan_color', true);
		$zozo_section_text_color = get_post_meta( $post->ID, 'zozo_section_text_color', true);
		$zozo_section_content_heading_color = get_post_meta( $post->ID, 'zozo_section_content_heading_color', true);
		
		if( !empty($zozo_section_title_color) ) {
			$output.= '#page-' . $post->post_name . ' .parallax-title { color: ' . $zozo_section_title_color . '; }'. "\n";
		}
		
		if( !empty($zozo_section_slogan_color) ) {
			$output.= '#page-' . $post->post_name . ' .parallax-desc { color: ' . $zozo_section_slogan_color . '; }'. "\n";
		}
		
		if( !empty($zozo_section_text_color) ) {
			$output.= '#page-' . $post->post_name . ' .parallax-content { color: ' . $zozo_section_text_color . '; }'. "\n";
		}
		
		if( !empty($zozo_section_content_heading_color) ) {
			$output.= '#page-' . $post->post_name . ' .parallax-content h1, 
						#page-' . $post->post_name . ' .parallax-content h2, 
						#page-' . $post->post_name . ' .parallax-content h3, 
						#page-' . $post->post_name . ' .parallax-content h4, 
						#page-' . $post->post_name . ' .parallax-content h5, 
						#page-' . $post->post_name . ' .parallax-content h6 { color: ' . $zozo_section_content_heading_color . '; }'. "\n";
		}
		
		// Section Background
		$zozo_parallax_bg_image = get_post_meta( $post->ID, 'zozo_parallax_bg_image', true);
		$zozo_parallax_bg_repeat = get_post_meta( $post->ID, 'zozo_parallax_bg_repeat', true);
		$zozo_parallax_bg_attachment = get_post_meta( $post->ID, 'zozo_parallax_bg_attachment', true);
		$zozo_parallax_bg_postion = get_post_meta( $post->ID, 'zozo_parallax_bg_postion', true);
		$zozo_parallax_bg_size = get_post_meta( $post->ID, 'zozo_parallax_bg_size', true);
		
		$zozo_parallax_bg_repeat = !empty($zozo_parallax_bg_repeat) ? $zozo_parallax_bg_repeat : 'no-repeat';
		
		$parallax_background = '';
		
		if( !empty($zozo_parallax_bg_image) ) {
			$parallax_background = 'background-image: url(' . $zozo_parallax_bg_image . ');';
			$parallax_background .= 'background-repeat: ' . $zozo_parallax_bg_repeat . ';';
			if( !empty($zozo_parallax_bg_postion) ) {
				$parallax_background .= 'background-position: ' . $zozo_parallax_bg_postion . ';';
			}
			if( !empty($zozo_parallax_bg_size) ) {
				$parallax_background .= 'background-size: ' . $zozo_parallax_bg_size . ';';
			}
			if( !empty($zozo_parallax_bg_attachment) ) {
				$parallax_background .= 'background-attachment: ' . $zozo_parallax_bg_attachment . ';';
			}
		}
		if( !empty($zozo_parallax_bg_image) ) {						
			$output.= '#page-' . $post->post_name . ' { '. $parallax_background . ' }'. "\n";
		}
		
		$zozo_section_bg_color = get_post_meta( $post->ID, 'zozo_section_bg_color', true);
		if( !empty($zozo_section_bg_color) ) {						
			$output.= '#page-' . $post->post_name . ' { background-color: ' . $zozo_section_bg_color . '; }'. "\n";
		}
		
		$zozo_parallax_bg_overlay = get_post_meta( $post->ID, 'zozo_parallax_bg_overlay', true);
		if( $zozo_parallax_bg_overlay == 'yes' ) {
			$zozo_section_overlay_color = get_post_meta( $post->ID, 'zozo_section_overlay_color', true);
			$zozo_overlay_color_opacity = get_post_meta( $post->ID, 'zozo_overlay_color_opacity', true);
			
			$zozo_overlay_color_opacity = $zozo_overlay_color_opacity != 0 ? $zozo_overlay_color_opacity : '0.7';
			
			$rgb_color = '';
			$rgb_color = zozo_hex2rgb( $zozo_section_overlay_color );
			
			$output.= '#page-' . $post->post_name . ' .parallax-bg-overlay { background-color: rgba(' . $rgb_color[0] . ',' . $rgb_color[1] . ',' . $rgb_color[2] . ', ' . $zozo_overlay_color_opacity . '); }'. "\n";
		}
		
		return $output;
		
	}
}

/* =========================================
 * Load theme style and js in the <head>
 * ========================================= */

if ( ! function_exists( 'zozo_load_theme_scripts' ) ) {

	function zozo_load_theme_scripts () {
	
		global $zozo_options;
		
		// Stylesheet
		wp_register_style( 'zozo-prettyphoto-style', get_template_directory_uri() . '/css/prettyPhoto.css', array(), null );
		wp_enqueue_style( 'zozo-prettyphoto-style' );
		
		wp_register_style( 'zozo-font-awesome-style', get_template_directory_uri() . '/css/font-awesome.min.css', array(), null );
		wp_enqueue_style( 'zozo-font-awesome-style' );
		
		wp_register_style( 'zozo-iconspack-style', get_template_directory_uri() . '/css/iconspack.css', array(), null );
		wp_enqueue_style( 'zozo-iconspack-style' );
	
		wp_register_style( 'zozo-effects-style', get_template_directory_uri() . '/css/animate.css', array(), null );
		wp_enqueue_style( 'zozo-effects-style' );
		
		// Carousel CSS
		wp_register_style( 'zozo-owl-carousel-style', get_template_directory_uri() . '/css/owl.carousel.css', array(), null );
		wp_enqueue_style( 'zozo-owl-carousel-style' );
		
		wp_enqueue_style('wp-mediaelement');
				
		wp_register_style( 'zozo-theme-bootstrap-style', get_template_directory_uri() . '/css/bootstrap.min.css', array(), null );
		wp_enqueue_style( 'zozo-theme-bootstrap-style' );
		
		wp_register_style( 'zozo-mCustomScrollbar-style', get_template_directory_uri() . '/css/jquery.mCustomScrollbar.css', array(), null );
		wp_enqueue_style( 'zozo-mCustomScrollbar-style' );
		
		wp_register_style( 'zozo-theme-style', get_stylesheet_uri(), array(), null );
		wp_enqueue_style( 'zozo-theme-style' );
		
		if( isset( $zozo_options['zozo_color_scheme'] ) && $zozo_options['zozo_color_scheme'] != '' ) {
			wp_register_style( 'zozo-color-scheme-style', get_template_directory_uri() . '/color-schemes/'.$zozo_options['zozo_color_scheme'].'', array(), null );
			wp_enqueue_style( 'zozo-color-scheme-style' );
		} else {
			wp_register_style( 'zozo-color-scheme-style', get_template_directory_uri() . '/color-schemes/yellow.css', array(), null );
			wp_enqueue_style( 'zozo-color-scheme-style' );
		}
		
		if( $zozo_options['zozo_enable_responsive'] ) {
			wp_register_style( 'zozo-theme-responsive-style', get_template_directory_uri() . '/css/responsive.css', array(), null );
			wp_enqueue_style( 'zozo-theme-responsive-style' );
		}
		
		if ( ZOZO_VC_ACTIVE ) {
			wp_enqueue_style( 'zozo-visual-composer-extend', get_template_directory_uri() .'/css/visual-composer.css' );
		}
		
		wp_register_style( 'zozo-rtl-style', get_template_directory_uri() . '/rtl.css', array(), null );
		$enable_rtl_mode = $zozo_options['zozo_enable_rtl_mode'];
		$isRTL = "false";
		$isOriginLeft = "true";
		
		if( is_rtl() || ( isset( $enable_rtl_mode ) && $enable_rtl_mode == 1 ) || isset( $_GET['RTL'] ) ) {
			$isRTL = "true";
			$isOriginLeft = "false";
			wp_enqueue_style('zozo-rtl-style');
		}
		
		wp_enqueue_style( 'zozo-ratings-stars', get_template_directory_uri() .'/css/rateit.css', array(), null );
		
		// Theme Skin
		wp_enqueue_style( 'zozo-theme-skin-style', get_template_directory_uri() . '/css/skin.css', array(), null );
		
		// Custom CSS
		$filename = '';
		$filename = ZOZOTHEME_DIR . '/css/theme_'. get_current_blog_id() .'.css';
		if( file_exists( $filename ) ) {
			wp_register_style( 'zozo-custom-css', get_template_directory_uri() . '/css/theme_'. get_current_blog_id() .'.css', array(), null );
			wp_enqueue_style( 'zozo-custom-css' );
		}
		
		// Load Google Fonts
		$google_font = array();
		$fonts_options = array();
		
		$fonts_options = array( 
				$zozo_options['zozo_body_font'],
				$zozo_options['zozo_h1_font_styles'], 
				$zozo_options['zozo_h2_font_styles'], 
				$zozo_options['zozo_h3_font_styles'], 
				$zozo_options['zozo_h4_font_styles'], 
				$zozo_options['zozo_h5_font_styles'], 
				$zozo_options['zozo_h6_font_styles'],
				$zozo_options['zozo_top_menu_font_styles'],
				$zozo_options['zozo_menu_font_styles'],
				$zozo_options['zozo_submenu_font_styles'],
				$zozo_options['zozo_single_post_title_fonts'],
				$zozo_options['zozo_post_title_font_styles'],
				$zozo_options['zozo_widget_title_fonts'],
				$zozo_options['zozo_widget_text_fonts'],
				$zozo_options['zozo_footer_widget_title_fonts'],
				$zozo_options['zozo_footer_widget_text_fonts']
			);
		
		foreach( $fonts_options as $fonts_option ) {
			if( isset( $fonts_option['google'] ) && $fonts_option['google']) {
				$font = urlencode( $fonts_option['font-family'] );
				if( !in_array($font, $google_font) )
					$google_font[] = $font;
			}
		}
		
		$font_family = '';
		foreach( $google_font as $font ) {
			$font_family .= $font . ':200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic%7C';
		}
		
		if( $font_family ) {
			wp_register_style( 'zozo-google-fonts', "//fonts.googleapis.com/css?family=" . $font_family . "&amp;subset=latin,greek-ext,cyrillic,latin-ext,greek,cyrillic-ext,vietnamese" );
			wp_enqueue_style( 'zozo-google-fonts' );
		}
	
		// Javascripts
		wp_register_script( 'zozo-bootstrap-validator-js', get_template_directory_uri() . '/js/bootstrapValidator.min.js', array('jquery'), null );		
		
        wp_register_script( 'zozo-bootstrap-js', get_template_directory_uri() . '/js/bootstrap.min.js', array('jquery'), null );
		wp_enqueue_script( 'zozo-bootstrap-js' );
		
		wp_register_script( 'zozo-general-js', get_template_directory_uri() . '/js/general.js', array('jquery'), null );
		wp_enqueue_script( 'zozo-general-js' );
		
		// Map Js load only where needed
		wp_register_script( 'zozo-gmap-js', get_template_directory_uri() . '/js/gmap.min.js', array('jquery'), null );
		wp_register_script( 'zozo-gmap-api-js', 'http://maps.google.com/maps/api/js?sensor=false&amp;language=en', array('jquery'), null );		
				
		wp_enqueue_script( 'mediaelement' );
		wp_enqueue_script( 'wp-mediaelement' );
		
		// Custom Scroll bar
		wp_register_script( 'jquery.mCustomScrollbar', get_template_directory_uri() . '/js/jquery.mCustomScrollbar.concat.min.js', array('jquery'), null );
		wp_enqueue_script( 'jquery.mCustomScrollbar' );		
				
		// Video Slider Js
		wp_register_script( 'zozo-video-slider-js', get_template_directory_uri() . '/js/jquery.mb.YTPlayer.js', array('jquery'), null );
		
		// Countdown Js
		wp_register_script( 'zozo-countdown-plugin-js', get_template_directory_uri() . '/js/jquery.countdown-plugin.min.js', array('jquery'), null );
		wp_register_script( 'zozo-countdown-js', get_template_directory_uri() . '/js/jquery.countdown.min.js', array('jquery'), null );
		
		if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
			wp_enqueue_script( 'comment-reply' );
		}
		
		// Load Scripts in Footer
		wp_register_script( 'zozo-main-js', get_template_directory_uri() . '/js/main.js', array(), null, true );
		wp_enqueue_script( 'zozo-main-js' );
		
		wp_register_script( 'zozo-modernizr-js', get_template_directory_uri() . '/js/modernizr.min.js', array('jquery'), null, true );
		wp_enqueue_script( 'zozo-modernizr-js' );
		
		wp_register_script( 'zozo-prettyphoto-js', get_template_directory_uri() . '/js/jquery.prettyPhoto.js', array('jquery'), null, true );
		wp_enqueue_script( 'zozo-prettyphoto-js' );
		
		wp_register_script( 'zozo-rate-it', get_template_directory_uri() . '/js/rate-it/jquery.rateit.min.js', array('jquery'), null, true );
		wp_enqueue_script( 'zozo-rate-it' );
		
		wp_register_script( 'zozo-owl-carousel-js', get_template_directory_uri() . '/js/jquery.carousel.min.js', array('jquery'), null, true );
		wp_enqueue_script( 'zozo-owl-carousel-js' );
		
		wp_register_script( 'zozo-owl-carousel-custom-js', get_template_directory_uri() . '/js/jquery.carousel-custom.js', array('jquery'), null, true );
		wp_enqueue_script( 'zozo-owl-carousel-custom-js' );
		
		wp_register_script( 'zozo-match-height-js', get_template_directory_uri() . '/js/jquery.match-height.js', array('jquery'), null, true );
		wp_enqueue_script( 'zozo-match-height-js' );
		
		$template_uri = get_template_directory_uri();
		
		$sticky_menu_height = '';
		if( isset( $zozo_options['zozo_sticky_menu_height'] ) && $zozo_options['zozo_sticky_menu_height']['height'] != '' ) {
			if( is_numeric( $zozo_options['zozo_sticky_menu_height']['height'] ) ) {
				$sticky_menu_height = $zozo_options['zozo_sticky_menu_height']['height'] . $zozo_options['zozo_sticky_menu_height']['units'];
			} else {
				$sticky_menu_height = $zozo_options['zozo_sticky_menu_height']['height'];
			}
		}
		
		$sticky_menu_height_alt = '';
		if( isset( $zozo_options['zozo_sticky_menu_height_alt'] ) && $zozo_options['zozo_sticky_menu_height_alt']['height'] != '' ) {
			if( is_numeric( $zozo_options['zozo_sticky_menu_height_alt']['height'] ) ) {
				$sticky_menu_height_alt = $zozo_options['zozo_sticky_menu_height_alt']['height'] . $zozo_options['zozo_sticky_menu_height_alt']['units'];
			} else {
				$sticky_menu_height_alt = $zozo_options['zozo_sticky_menu_height_alt']['height'];
			}
		}
		
		wp_localize_script('jquery', 'zozo_js_vars', 
							array( 'zozo_template_uri' 		=> $template_uri,
								   'isRTL' 					=> $isRTL,
								   'isOriginLeft'       	=> $isOriginLeft,
								   'zozo_sticky_height' 	=> $sticky_menu_height,
								   'zozo_sticky_height_alt' => $sticky_menu_height_alt,
								   'zozo_ajax_url'	   		=> admin_url('admin-ajax.php') ));

	} // End zozo_load_theme_scripts()
	
}

/* =================================================================
 * Enable Datepicker for Contact Form 7
 * ================================================================= */
 
add_filter( 'wpcf7_support_html5_fallback', '__return_true' );

/* =================================================================
 * Add [year] shortcode to display current year
 * ================================================================= */
 
if ( ! function_exists( 'zozo_year_shortcode' ) ) { 
 
	function zozo_year_shortcode() {
		$year = date('Y');
		return $year;
	}

}
add_shortcode('year', 'zozo_year_shortcode');

/* =================================================================
 * Custom Excerpt Length used on archive/category and blog pages
 * ================================================================= */

function zozo_custom_excerpt_length( $limit ) {		
	return '30';	
}

function zozo_custom_excerpt_more( $more ) {
	return '...';
}

function zozo_custom_excerpts($limit) {
    return wp_trim_words(get_the_content(), $limit, '...');
}

/* =================================================================
 * Store Ajax admin url in head to call wherever need
 * ================================================================= */
if ( ! function_exists( 'zozo_ajaxurl' ) ) { 

	function zozo_ajaxurl() { ?>
	
<script type="text/javascript">
var ajaxurl = '<?php echo admin_url('admin-ajax.php'); ?>';
</script>

	<?php }
}

/* =================================================================
 * Check Plugins Loaded
 * ================================================================= */
 
if( ! function_exists( 'zozo_check_plugins_loaded' ) ) { 
	function zozo_check_plugins_loaded() {
		if( ! function_exists( 'is_woocommerce' ) ) {
			function is_woocommerce() { return false; }
		}
		if( ! function_exists( 'is_bbpress' ) ) {
			function is_bbpress() { return false; }
		}
		if( ! function_exists( 'is_buddypress' ) ) {
			function is_buddypress() { return false; }
		}
		if( ! function_exists( 'bbp_is_forum_archive' ) ) {
			function bbp_is_forum_archive() { return false; }
		}
		if( ! function_exists( 'bbp_is_topic_archive' ) ) {
			function bbp_is_topic_archive() { return false; }
		}
		if( ! function_exists( 'bbp_is_user_home' ) ) {
			function bbp_is_user_home() { return false; }
		}
		if( ! function_exists( 'bbp_is_search' ) ) {
			function bbp_is_search() { return false; }
		}
		if( ! function_exists( 'tribe_is_event' ) ) {
			function tribe_is_event() { return false; }
		}
	}
}

/* =================================================================
 * Excerpt with allow some tags
 * ================================================================= */

function wpse_allowedtags() {
    // Add custom tags to this string
    return '<script>,<style>,<strong>,<br>,<em>,<i>,<ul>,<ol>,<li>,<a>,<p>,<img>,<video>,<audio>,<h1>,<h2>,<h3>,<h4>,<h5>,<h6>,<blockquote>,<table>,<thead>,<tbody>,<th>,<tr>,<td>,<address>,<pre>,<code>,<span>,<iframe>,<div>,<source>,<button>,<dl>,<dt>,<dd>,<figure>,<figcaption>';
}

if ( ! function_exists( 'zozo_custom_wp_trim_excerpt' ) ) {

    function zozo_custom_wp_trim_excerpt($wpse_excerpt, $limit) {
		global $zozo_options, $post;
			
    	$raw_excerpt = $wpse_excerpt;
        if ( '' == $wpse_excerpt ) {
		
			if( isset($limit) && $limit == '' ) {
				$limit = 168;
			}
		
			$post = get_post(get_the_ID());
			$more_tag = strpos($post->post_content, '<!--more-->');
			
			$readmore_link = '';
			$readmore_link = ' <span class="meta-more-link">&rarr;</span>';

            $wpse_excerpt = get_the_content( $readmore_link );
			
			if( $post->post_excerpt || $more_tag !== false ) {				
				if( ! $more_tag ) {
					$wpse_excerpt = rtrim( get_the_excerpt(), '&rarr;' );
				}				
			}
			
            //$wpse_excerpt = strip_shortcodes( $wpse_excerpt );
            $wpse_excerpt = apply_filters('the_content', $wpse_excerpt);
            $wpse_excerpt = str_replace(']]>', ']]&gt;', $wpse_excerpt);
            $wpse_excerpt = strip_tags($wpse_excerpt, wpse_allowedtags()); /*IF you need to allow just certain tags. Delete if all tags are allowed */

            //Set the excerpt word count and only break after sentence is complete.
			$excerpt_word_count = $limit;
			//$excerpt_length = apply_filters('zozo_custom_excerpt_length', $excerpt_word_count); 
			$tokens = array();
			$excerptOutput = '';
			$count = 0;

			// Divide the string into tokens; HTML tags, or words, followed by any whitespace
			preg_match_all('/(<[^>]+>|[^<>\s]+)\s*/u', $wpse_excerpt, $tokens);

			foreach ($tokens[0] as $token) { 

				if ($count >= $excerpt_word_count && preg_match('/[\,\;\?\.\!]\s*$/uS', $token)) { 
					// Limit reached, continue until , ; ? . or ! occur at the end
					$excerptOutput .= trim($token);
					break;
				}

				// Add words to complete sentence
				$count++;

				// Append what's left of the token
				$excerptOutput .= $token;
			}

            $wpse_excerpt = trim(force_balance_tags($excerptOutput));
			
			$wpse_excerpt = do_shortcode( $wpse_excerpt );
             
            return $wpse_excerpt;   

        }
		
        return apply_filters('zozo_custom_wp_trim_excerpt', $wpse_excerpt, $raw_excerpt);
    }

}

/* =================================================================
 * Maintenance or Coming Soon Page
 * ================================================================= */

if ( ! function_exists( 'zozo_activate_maintenance_mode' ) ) {

    function zozo_activate_maintenance_mode() {
		global $zozo_options;
		$maintenance_mode = '';
		$comingsoon_mode = '';
		$custom_logo = '';
		$contact_info = '';
		
		if ( isset( $zozo_options['zozo_enable_maintenance'] ) ) {
			$maintenance_mode = $zozo_options['zozo_enable_maintenance'];
		} else {
			$maintenance_mode = false;
		}
		
		if ( isset( $zozo_options['zozo_enable_coming_soon'] ) ) {
			$comingsoon_mode = $zozo_options['zozo_enable_coming_soon'];
		} else {
			$comingsoon_mode = false;
		}
		
		$args['response'] = 503;
		
		if( $zozo_options['zozo_logo'] && $zozo_options['zozo_logo']['url'] ) {
			$custom_logo = '<div class="logo"><img class="img-responsive" src="' . esc_url( $zozo_options['zozo_logo']['url'] ) . '" alt="'. __('Maintenance', 'zozothemes') .'" width="'. esc_attr( $zozo_options['zozo_logo']['width'] ) .'" height="'. esc_attr( $zozo_options['zozo_logo']['height'] ) .'" style="margin: 0 auto; display: block;"></div>';
		}
		
		if( isset( $zozo_options['zozo_header_email'] ) && $zozo_options['zozo_header_email'] != '' ) {
			$contact_infos = '<h5 style="margin: 10px 0;"><a href="mailto:'.esc_attr( $zozo_options['zozo_header_email'] ).'" style="color: #FFC400;">'.esc_html( $zozo_options['zozo_header_email'] ).'</a></h5>';
		}
		
		if( isset( $zozo_options['zozo_header_phone'] ) && $zozo_options['zozo_header_phone'] != '' ) {
			$contact_infos .= '<h5 style="margin: 10px 0;">'. esc_html( $zozo_options['zozo_header_phone']) .'</h5>';
		}
		
		if( isset( $contact_infos ) && $contact_infos != '' ) {
			$contact_info = '<h2 style="font-family: Roboto; font-weight: bold; display:inline-block; margin-bottom: 10px; color: #000;">CONTACT US</h2>';
			$contact_info .= $contact_infos;
		}
		
		if ( $maintenance_mode == 1 ) {
			if ( ! current_user_can( 'edit_themes' ) || ! is_user_logged_in() ) {
				wp_die( $custom_logo . '<div class="content" style="text-align:center;"><h1 style="font-family: Roboto; font-weight: bold; display:inline-block; border-bottom: 3px double #666; font-size: 32px; color: #000;">UNDER <span style="color: #FFC400;">MAINTENANCE</span></h1><p>' . __( 'We are currently in maintenance mode. We will be back soon.', 'zozothemes' ) . '</p>'. $contact_info .'</div>', get_bloginfo( 'name' ), $args );
			}
		} else if ( $maintenance_mode == 2 ) {

			$maintenance_page     	= $zozo_options['zozo_maintenance_mode_page'];
			$current_page_url 		= zozo_get_current_url();
			$maintenance_page_url 	= get_permalink( $maintenance_page );

			if ( $current_page_url != $maintenance_page_url ) {
				if ( ! current_user_can( 'edit_themes' ) || ! is_user_logged_in() ) {
					wp_redirect( $maintenance_page_url );
					exit;
				}
			}
			
		} else if ( $comingsoon_mode == 1 ) {

			if ( ! current_user_can( 'edit_themes' ) || ! is_user_logged_in() ) {
				wp_die( $custom_logo . '<div class="content" style="text-align:center;"><h1 style="font-family: Roboto; font-weight: bold; display:inline-block; border-bottom: 3px double #666; font-size: 32px; color: #000;">COMING <span style="color: #FFC400;">SOON!</span></h1><p>' . __( 'We are currently working on an awesome new site, which will be ready soon. Stay Tuned!', 'zozothemes' ) . '</p>'. $contact_info .'</div>', get_bloginfo( 'name' ), $args );
			}
			
		} else if ( $comingsoon_mode == 2 ) {

			$comingsoon_page     	= $zozo_options['zozo_coming_soon_page'];
			$current_page_url 		= zozo_get_current_url();
			$comingsoon_page_url 	= get_permalink( $comingsoon_page );

			if ( $current_page_url != $comingsoon_page_url ) {
				if ( ! current_user_can( 'edit_themes' ) || ! is_user_logged_in() ) {
					wp_redirect( $comingsoon_page_url );
					exit;
				}
			}
			
		}
		
	}
	
}
?>