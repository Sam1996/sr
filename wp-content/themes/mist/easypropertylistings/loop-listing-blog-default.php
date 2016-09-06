<?php
/**
 * Loop Property Template: Default
 *
 * @package easy-property-listings
 * @subpackage Theme
 */

// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) exit;
global $property, $post;
$meta = get_post_custom();
$property_featured = '';
if(isset($meta['property_featured'])) {
	if(isset($meta['property_featured'][0])) {
		$property_featured = $meta['property_featured'][0];
	}
}
?>

<div id="post-<?php the_ID(); ?>" <?php post_class('epl-listing-post epl-property-blog epl-clearfix'); ?>>
	<?php do_action('epl_property_before_content'); ?>				
		<?php if ( has_post_thumbnail() ) :
			$image_class = 'teaser-left-thumb'; ?>
			<div class="property-box property-box-left property-featured-image-wrapper">
				<div class="epl-archive-entry-image">
					<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
						<div class="epl-blog-image">
							<?php if( epl_get_price_sticker() || ( isset( $property_featured ) && $property_featured == 'yes' ) ) { ?>
							<div class="epl-stickers-wrapper">
								<?php if( epl_get_price_sticker() ) { ?>
								<div class="epl-offer-sticker">
								<h6><?php echo epl_get_price_sticker(); ?></h6>
								</div>
								<?php } ?>
								<?php if( isset( $property_featured ) && $property_featured == 'yes' ) { ?>
								<div class="epl-featured-sticker">
									<h6><span class="status-sticker featured"><?php esc_html_e('Featured', 'zozothemes'); ?></span></h6>
								</div>
								<?php } ?>
							</div>
							<?php } ?>
							<?php the_post_thumbnail( 'portfolio-mid' , array( 'class' => $image_class ) ); ?>
						</div>
					</a>
				</div>
			</div>
		<?php endif; ?>

		<div class="property-box property-box-right property-content">
			<!-- Category -->
			<h5 class="property-category"><?php echo '<span class="epl-property-category">' . $property->get_property_category() . '</span> '; ?></h5>
			<!-- Heading -->
			<h3 class="entry-title"><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php do_action('epl_property_heading'); ?></a></h3>
			<!-- Address -->
			<div class="property-address">
				<?php do_action('epl_property_address'); ?>
			</div>
			<div class="entry-content epl-list-view-content">
				<?php echo zozo_custom_excerpts(40); ?>
			</div>
			<!-- Property Featured Icons -->
			<div class="property-feature-icons">
				<?php do_action('epl_property_icons'); ?>				
			</div>
			<!-- Price -->
			<div class="price">
				<?php do_action('epl_property_price'); ?>
			</div>
		</div>	
	<?php do_action('epl_property_after_content'); ?>
</div>
