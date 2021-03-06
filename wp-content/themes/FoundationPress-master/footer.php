<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the "off-canvas-wrap" div and all content after.
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

?>

		</section>
		<div class="footer-container" data-sticky-footer>
			<footer class="footer">

			<div class="background-infos">
				<div class="row">
						<div class="large-3 columns text-left mentions">
							<a>Mentions légales</a>
						</div>

						<div class="large-3 columns text-left copyright">
							<p>© Copyright 2017</p>
						</div>

						<div class="large-6 columns text-right facebook">
							<a href="https://fr-fr.facebook.com/pages/La-Coop-Port-Du-Rhin/369909146425465" target="_blank"><i class="fa fa-facebook fa-2x" aria-hidden="true"></i></a>
						</div>
				</div>
			</div>



				<?php do_action( 'foundationpress_before_footer' ); ?>
				<?php dynamic_sidebar( 'footer-widgets' ); ?>
				<?php do_action( 'foundationpress_after_footer' ); ?>
			</footer>
		</div>



		<?php do_action( 'foundationpress_layout_end' ); ?>

<?php if ( get_theme_mod( 'wpt_mobile_menu_layout' ) === 'offcanvas' ) : ?>
		</div><!-- Close off-canvas content -->
	</div><!-- Close off-canvas wrapper -->
<?php endif; ?>


<?php wp_footer(); ?>
<?php do_action( 'foundationpress_before_closing_body' ); ?>

<script id="__bs_script__">//<![CDATA[
    document.write("<script async src='http://HOST:3000/browser-sync/browser-sync-client.js?v=2.18.12'><\/script>".replace("HOST", location.hostname));
//]]></script>

</body>
</html>
