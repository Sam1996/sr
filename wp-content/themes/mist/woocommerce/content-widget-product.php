<?php global $product; ?>
<li>
	<a href="<?php echo esc_url( get_permalink( $product->id ) ); ?>" title="<?php echo esc_attr( $product->get_title() ); ?>">
		<?php echo wp_kses( $product->get_image(), zozo_expanded_allowed_tags() ); ?>
		<?php echo wp_kses( $product->get_title(), zozo_expanded_allowed_tags() ); ?>
	</a>	
	<?php echo wp_kses($product->get_price_html(), zozo_expanded_allowed_tags() ); ?>
	<?php if ( ! empty( $show_rating ) ) echo wp_kses($product->get_rating_html(), zozo_expanded_allowed_tags() ); ?>
</li>