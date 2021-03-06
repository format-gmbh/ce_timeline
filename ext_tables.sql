#
# Table structure for table 'tx_cetimeline_domain_model_entry'
#
CREATE TABLE tx_cetimeline_domain_model_entry (

	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	pce int(11) DEFAULT '0' NOT NULL,

	header varchar(255) DEFAULT '' NOT NULL,
	header_layout varchar(25) DEFAULT '' NOT NULL,
	description text DEFAULT '' NOT NULL,
	position varchar(255) DEFAULT '' NOT NULL,
	typeof varchar(255) DEFAULT '' NOT NULL,

	tstamp int(11) unsigned DEFAULT '0' NOT NULL,
	crdate int(11) unsigned DEFAULT '0' NOT NULL,
	cruser_id int(11) unsigned DEFAULT '0' NOT NULL,
	deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
	hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
	starttime int(11) unsigned DEFAULT '0' NOT NULL,
	endtime int(11) unsigned DEFAULT '0' NOT NULL,
    sorting int(11) unsigned DEFAULT '0' NOT NULL,
    categories int(11) unsigned DEFAULT '0' NOT NULL,

	sys_language_uid int(11) DEFAULT '0' NOT NULL,
	l10n_parent int(11) DEFAULT '0' NOT NULL,
	l10n_diffsource mediumblob,

	PRIMARY KEY (uid),
	KEY parent (pid),
    KEY language (l10n_parent,sys_language_uid)

);

CREATE TABLE tt_content (
	timeline_entries int(11) unsigned DEFAULT '0' NOT NULL
);
