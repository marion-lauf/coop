<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'coop-examen');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'root');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '8w+U>}1J38*}u {|J=V@x~d,t>M-AZ&{Cd8HZW1=~xQi^6>qjnZ~Uu+J sn(^_Er');
define('SECURE_AUTH_KEY',  'XGX4Lc4<{kzX*)Aq Nj&53O@`%acb&*tcS,#ev2d1cS3Jf98[<w8T+Ers6pT@t i');
define('LOGGED_IN_KEY',    '^DOp+v=}mVma5:T:U6I8.Z$v>w+.]#^|F?eV)-Vt*.W-DZ^>)SB:.$&|21W=nC$-');
define('NONCE_KEY',        'jIwU5{1i{UQ:VxZQE[lK@pIX`J[vCI|!&}pxQ]mw/X**bj>3M5ZvH*ydtyH6GH 7');
define('AUTH_SALT',        'WL6z?%K M3v_40:kcBYxTi.$mg=9Zi]3?}$RbC 9*(EX?m*(hE+tjy?KV!Zs$8 S');
define('SECURE_AUTH_SALT', '3e%s86kf~)THw]a8k<X4~YI{s:g#M2}Qr92<ILA)Jsn[}d&Akj8t$Fb/c !~BA/X');
define('LOGGED_IN_SALT',   'CM9;mW~9F+{1i@HA{WaCP-f%y}u72SbT4M&;Q-i{cUZON-(rj15SFHc&3Q$&lUV#');
define('NONCE_SALT',       'rm<1D_&jk=?nO/`7cs(Kz|?{5?[ZK.SM}<d#cRl&:WV,JYdR>xgpd0f7HTNwZm6Y');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wp_2k17_coop';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');