<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Versioned\Versioned;

class Contact extends DataObject
{
    private static $db = [
        'Name' => 'Varchar',
        'PhoneNumber' => 'Varchar',
        'Email' => 'Varchar',
        'Medicine' => 'Varchar',
        'Message' => 'Text'
    ];

    private static $has_one = [];

    private static $owns = [];

    private static $extensions = [
        Versioned::class,
    ];

    private static $summary_fields = [
        'Name' => 'Name',
        'Email' => 'Email',
        'PhoneNumber' => 'Phone Number',
        'Medicine' => 'Medicine',
        'Message' => 'Message',
    ];
    
}