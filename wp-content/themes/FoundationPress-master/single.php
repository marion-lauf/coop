<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

get_header(); ?>
<section class="texture">
<div class="main-wrap" role="main">

<?php do_action( 'foundationpress_before_content' ); ?>

<?php while ( have_posts() ) : the_post(); ?>

	<article <?php post_class('main-content') ?> id="post-<?php the_ID(); ?>">

		<div class="row">
			<div class="large-12 columns">
				<?php get_template_part( 'template-parts/featured-image' ); ?>
			</div>
		</div>

		<header>
			<h1 class="entry-title"><?php the_title(); ?></h1>
			<?php the_time('j F Y') ?>
		</header>

		<?php do_action( 'foundationpress_post_before_entry_content' ); ?>
		<div class="entry-content">
			<?php the_content(); ?>
		</div>

		<div class="row">
			<div class="large-12 columns">
				<?php get_comments( $args ); ?>
			</div>
		</div>
	</article>


<?php endwhile;?>

<?php do_action( 'foundationpress_after_content' ); ?>
<?php get_sidebar(); ?>
</div>
</section>
<?php get_footer();
