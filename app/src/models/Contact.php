<?php

use SilverStripe\ORM\DataObject;

class Contact extends DataObject
{
    private static $db = [
        'Name' => 'Varchar',
        'PhoneNumber' => 'Varchar',
        'Email' => 'Varchar',
        'Medicine' => 'Varchar',
        'Message' => 'Text'
    ];
}