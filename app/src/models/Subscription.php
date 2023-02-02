<?php

use SilverStripe\ORM\DataObject;

class Subscription extends DataObject
{
    private static $db = [
        'Email' => 'Varchar',
    ];
}