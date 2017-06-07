<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

get_header(); ?>

 <div class="main-wrap" role="main">
	<article <?php post_class('main-content') ?> id="post-<?php the_ID(); ?>">
		<header>
			<h1 class="entry-title"><?php _e( 'File Not Found', 'foundationpress' ); ?></h1>
		</header>

				<li>
					<?php
						/* translators: %s: home page url */
						printf( __(
							'Return to the <a href="%s">home page</a>', 'foundationpress' ),
							home_url()
						);
					?>
				</li>
				<li><?php _e( 'Click the <a href="javascript:history.back()">Back</a> button', 'foundationpress' ); ?></li>
			</ul>
		</div>
	</article>

</div>

<?php get_footer();
