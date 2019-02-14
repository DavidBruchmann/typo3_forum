<?php

$EM_CONF[$_EXTKEY] = [
    'title'            => 'typo3_forum',
    'description'      => 'Forum extension',
    'category'         => 'plugin',
    'author'           => 'Mittwald CM Service',
    'author_email'     => 'support@mittwald.de',
    'author_company'   => 'Mittwald CM Service',
    'state'            => 'stable',
    'uploadfolder'     => true,
    'createDirs'       => 'typo3temp/typo3_forum,typo3temp/typo3_forum/gravatar,uploads/tx_typo3forum/workflowstatus,uploads/tx_typo3forum/attachements',
    'clearCacheOnLoad' => false,

    // NOTE: DO NOT CHANGE this version number manually.
    // This is done by the build-release.sh script.
    'version'          => '8.7.1',
    'constraints'      => [
        'depends'  => [
            'typo3'              => '8.7.0-8.7.99',
            'static_info_tables' => '',
            'php'                => '',
        ],
        'suggests' => [
            'sr_feuser_register' => '',
            'secure_downloads'   => '3.0',
        ],
    ],
];
