<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'sr');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '-$L!cKi<C f@DCbbQ&TBOmu3(vTx@iT4H$W^MZSyl/ *gzuHgJ^xlV%=FO;rxaRk');
define('SECURE_AUTH_KEY',  'FTim8azhyRZt4hpj&k@.4.+v=e~,x/*4v$zsn?>BDL+Lt^O4;/XK~hIE.P5LD,!@');
define('LOGGED_IN_KEY',    'dM`ziaNkhs[3i}9!/byL,ZOj=abEKSSebBo@L1h4WbAj|!NehPH47^%)19si#[Hx');
define('NONCE_KEY',        'K1]6R(DRQ#N;WUcw%4DS:mWUL5UL^OT/aLm|BS|=>Z^Ii?WRWH` A2:Q=j[lav<h');
define('AUTH_SALT',        '!o q.fPdLP|~b5^leJ0KwE#.Zy/d:vB>{IQ,jlGPY|+HI9<$o.z/Tg0mBS*V[ EX');
define('SECURE_AUTH_SALT', 'At:<UD&Ddc-m9^jyFcU[1@j,BEZThU&,0r&$l0=Ag.T 2S`aD@SBz[|N6}KLY$6{');
define('LOGGED_IN_SALT',   '{^^=4H))T ,2qRYMJcBV^+4#+U}*U&ee]tDHRrsQ9_dnOjEte]0s$1D*LF0Jgh:u');
define('NONCE_SALT',       ';I]bE3~y$hTTK:^hTh65uvMA$_Q0o=7fg?7?mzyPN1be`>Q-xB_FJxY*xW>Dl~1P');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
