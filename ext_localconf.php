<?php
defined('TYPO3_MODE') || die();

$iconRegistry = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(
   \TYPO3\CMS\Core\Imaging\IconRegistry::class
);
$iconRegistry->registerIcon(
   'timeline-icon', // Icon-Identifier
   \TYPO3\CMS\Core\Imaging\IconProvider\SvgIconProvider::class,
   ['source' => 'EXT:ce_timeline/Resources/Public/Icons/content-timeline.svg']
);
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('
    <INCLUDE_TYPOSCRIPT: source="FILE:EXT:ce_timeline/Configuration/TypoScript/TsConfig/page.typoscript">
');
