<?php
/**
 * 404 Template
 *
 * @package Zozothemes
 */
 
global $zozo_options;
get_header(); ?>

<div class="container">
	<div id="main-wrapper" class="zozo-row row">
		<div id="single-sidebar-container" class="single-sidebar-container <?php zozo_content_sidebar_classes(); ?>">
			<div class="zozo-row row">
				<div id="primary" class="content-area <?php zozo_primary_content_classes(); ?>">
					<div id="content" class="site-content">
						<div id="post-404" class="post post-404">
							<div class="entry-content">
								<div class="content-404page">
									<h3 class="error-title"><?php esc_html_e('404', 'zozothemes'); ?></h3>
									<h2 class="title-404"><?php esc_html_e( 'Oops, This Page Could Not Be Found!', 'zozothemes' ); ?></h2>
									<h5><?php esc_html_e( 'The page you are trying to reach does not exist, or has been moved.', 'zozothemes' ); ?></h5>
									<div class="search-404page">
										<?php get_search_form(); ?>
									</div>
								</div>
							</div>
						</div>
					</div><!-- #content -->
				</div><!-- #primary -->
				<?php get_sidebar(); ?>
			</div>
		</div><!-- #single-sidebar-container -->

		<?php get_sidebar( 'second' ); ?>
		
	</div><!-- #main-wrapper -->
</div><!-- .container -->

<?php get_footer(); ?>