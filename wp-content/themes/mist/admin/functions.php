<?php // Custom Functions

add_action( 'admin_print_scripts-post.php', 'zozo_admin_icon_styles_compatible', 30 );
add_action( 'admin_print_scripts-post-new.php', 'zozo_admin_icon_styles_compatible', 30 );

/**
 * Enqueue Icon Styles for Admin
 *
 * @return	void
 */
function zozo_admin_icon_styles_compatible() {
	// CSS		
	wp_enqueue_style( 'zozo-font-awesome', ZOZOTHEME_URL . '/css/font-awesome.css', false, '4.3.0', 'all' );
	wp_enqueue_style( 'zozo-iconspack', ZOZOTHEME_URL . '/css/iconspack.css', false, '1.0', 'all' );
}