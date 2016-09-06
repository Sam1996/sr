<?php
/**
 * Theme Options
 */

require_once( ZOZOADMIN . '/functions.php' );

// include redux framework core functions
require_once( ZOZOADMIN . '/ReduxCore/framework.php' );

// Theme options
require_once( ZOZOADMIN . '/theme-config/config.php' );

// Save Theme Options
add_action('redux/options/zozo_options/saved', 'zozo_save_theme_options', 10, 2);
add_action('redux/options/zozo_options/import', 'zozo_save_theme_options', 10, 2);
add_action('redux/options/zozo_options/reset', 'zozo_save_theme_options');
add_action('redux/options/zozo_options/section/reset', 'zozo_save_theme_options');

function zozo_save_theme_options() {
	global $zozo_options, $reduxZozoOptions;

    $reduxFramework = $reduxZozoOptions->ReduxFramework;
    $template_dir = ZOZOTHEME_DIR;
	
	// Custom Styles File
    ob_start();
    include ZOZOINCLUDES . 'custom-skins.php';
    $custom_css = ob_get_clean();

    $filename = ZOZOTHEME_DIR.'/css/theme_'.get_current_blog_id().'.css';

    if( is_writable(dirname($filename)) == false ){
        @chmod(dirname($filename), 0755);
    }

    if( file_exists($filename) ) {
        if (is_writable($filename) == false){
            @chmod($filename, 0755);
        }
        @unlink($filename);
    }
    $reduxFramework->filesystem->execute( 'put_contents', $filename, array('content' => $custom_css) );

}