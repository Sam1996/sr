<?php
/**
 * Shortcode attributes
 * @var $atts
 * @var $el_class
 * @var $width
 * @var $css
 * @var $offset
 * @var $content - shortcode content
 * Shortcode class
 * @var $this WPBakeryShortCode_VC_Column_Inner
 */
$output = '';
$atts = vc_map_get_attributes( $this->getShortcode(), $atts );
extract( $atts );

$width = wpb_translateColumnWidthToSpan( $width );
$width = vc_column_offset_class_merge( $offset, $width );

$css_classes = array(
	$this->getExtraClass( $el_class ),
	'wpb_column',
	'vc_column_inner',
	'vc_column_container',
	$width,
	vc_shortcode_custom_css_class( $css ),
);

// Custom Typography
if( isset( $typo_style ) && $typo_style != '' ) {
	$css_classes[] = ' typo-' . $typo_style;
}

// Custom Background Style
if( isset( $bg_style ) && $bg_style != '' ) {
	$css_classes[] = ' bg-style ' . $bg_style;
}

// Animation
if( isset( $css_animation ) && $css_animation != '' ) {
	$css_classes[] = $this->getCSSAnimation( $css_animation );
}

$wrapper_attributes = array();

$css_class = preg_replace( '/\s+/', ' ', apply_filters( VC_SHORTCODE_CUSTOM_CSS_FILTER_TAG, implode( ' ', array_filter( $css_classes ) ), $this->settings['base'], $atts ) );
$wrapper_attributes[] = 'class="' . esc_attr( trim( $css_class ) ) . '"';

echo '<div ' . implode( ' ', $wrapper_attributes ) . '>';
echo '<div class="wpb_wrapper">';
echo wpb_js_remove_wpautop( $content );
echo '</div>' . $this->endBlockComment( '.wpb_wrapper' );
echo '</div>' . $this->endBlockComment( $this->getShortcode() );