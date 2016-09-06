<?php 
/**
 * Template Name: Multipage Template
 *
 * The multi page template to display entry content in fullwidth section and shows other pages linked
 *
 * @package Zozothemes 
 */

global $zozo_options;
get_header(); ?>

<?php $zozo_additional_sections_order = $front_page_id = ''; ?>
<div id="single-sidebar-container" class="single-sidebar-container">
	<div class="zozo-row">
		<div id="primary" class="content-area">
			<div id="content" class="site-content">
				<?php if ( have_posts() ):
					while ( have_posts() ): the_post();
					
					global $post;
					$backup = $post; ?>
						
						<div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>							
							<?php if ( has_post_thumbnail() ) { ?>
							<div class="container">
								<div class="entry-thumbnail">
									<?php the_post_thumbnail(); ?>
								</div>
							</div>
							<?php } ?>
							
							<div class="entry-content">
								<?php the_content(); ?>
								<?php wp_link_pages( array(
										'before'      => '<div class="page-links"><span class="page-links-title">' . esc_html__( 'Pages:', 'zozothemes' ) . '</span>',
										'after'       => '</div>',
										'link_before' => '<span>',
										'link_after'  => '</span>',
									) );
								?>
							</div>
							
							<?php $front_page_id = get_option('page_on_front');
							
							$zozo_additional_sections_order = get_post_meta( $post->ID, 'zozo_parallax_additional_sections_order', true );
							
							if( $zozo_additional_sections_order != '' ) {
								$additional_query = zozo_parallax_additional_query( $zozo_additional_sections_order );
								
								if( !empty( $additional_query ) ) {
									$custom_query = new WP_Query( $additional_query );
								}
								if ( $custom_query->have_posts() ):
									while ( $custom_query->have_posts() ): $custom_query->the_post();
										$additional_post_id = get_the_ID();
										if( $front_page_id != $additional_post_id ) {
											get_template_part('template-parallax');
										}	
									endwhile;
								endif;
								wp_reset_postdata();
							}
							
							$post = $backup; ?>
							
							<?php if ( comments_open() ) {
								comments_template(); 
							} ?>
						</div>
					<?php endwhile;		
				endif; ?>
			</div><!-- #content -->
		</div><!-- #primary -->
			
	</div>
</div><!-- #single-sidebar-container -->

<?php get_footer(); ?>