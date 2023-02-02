<?php

use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;
use SilverStripe\AssetAdmin\Forms\UploadField;


class SiteConfigExtension extends DataExtension
{
    private static $db = [
        'FacebookLink' => 'Varchar(255)',
        'TwitterLink' => 'Varchar(255)',
        'InstagramLink' => 'Varchar(255)',
        'PhoneNumber' => 'Varchar',
        'Email' => 'Varchar',
        'WidgetOneHeader' => 'Text',
        'WidgetTwoHeader' => 'Text',
        'WidgetThreeHeader' => 'Text',
        'WidgetFourHeader' => 'Text',

    ];

    private static $has_one = [
        'FrontEndBranding' => Image::class
    ];

    private static $owns = [
        'FrontEndBranding',
        'FooterBranding',
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldsToTab('Root.Social', array(
            TextField::create('FacebookLink', 'Facebook Link'),
            TextField::create('TwitterLink', 'Twitter Link'),
            TextField::create('InstagramLink', 'Instagram Link'),
        ));

        $fields->addFieldsToTab('Root.Contact', array(
            TextField::create('Email', 'Email'),
            TextField::create('PhoneNumber', 'Phone Number')
        ));

        $fields->addFieldsToTab('Root.FooterWidget', array(
            TextField::create('WidgetOneHeader', 'Widget One Heading'),
            TextField::create('WidgetTwoHeader', 'Widget Two Heading'),
            TextField::create('WidgetThreeHeader', 'Widget Three Heading'),
            TextField::create('WidgetFourHeader', 'Widget Four Heading'),

        ));

        $fields->addFieldToTab('Root.FrontEndBranding', $upload = UploadField::create('FrontEndBranding', 'Logo'));

        $upload->getValidator()->setAllowedExtensions(array('png', 'jpeg', 'jpg', 'gif'));

        $upload->setFolderName('site-logo');



        // $fields->addFieldToTab('Root.FooterBranding', $FooterBranding = UploadField::create('FooterBranding', 'Logo'));

        // $FooterBranding->getValidator()->setAllowedExtensions(array(
        //     'png', 'jpeg', 'jpg', 'gif'
        // ));

        // $FooterBranding->setFolderName('Footer-logo');
    }

}