<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;


class HomePage extends Page
{
    private static $db = [
        'BannerTitle' => 'HTMLText',
        'BannerText' => 'Varchar',
        'BannerLink' => 'Varchar',

        'Service1Title' => 'Varchar',
        'Service1Text' => 'Varchar',
        
        'Service2Title' => 'Varchar',
        'Service2Text' => 'Varchar',

        'Service3Title' => 'Varchar',
        'Service3Text' => 'Varchar',

        'Service4Title' => 'Varchar',
        'Service4Text' => 'Varchar',
        
    ];

    private static $has_one = [
        'BannerImage' => Image::class,
        'BannerImage2' => Image::class
    ];

    private static $has_many = [
        'Medicines' => Medicine::class,
        'Vitamins' => Vitamins::class
    ];


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.BannerContent', array(
            HTMLEditorField::create('BannerTitle', 'Heading'),
            TextareaField::create('BannerText', 'Content'),
            TextField::create('BannerLink', 'Link'),
            $uploader = UploadField::create('BannerImage'),
            $uploader = UploadField::create('BannerImage2')
        ));

        $uploader->setFolderName('Banner images');
        $uploader->getValidator()->setAllowedExtensions(['png', 'gif', 'jpeg', 'jpg', 'tiff', 'gif']);

        $fields->addFieldsToTab('Root.ServiceContent', array(
            TextField::create('Service1Title', 'Service1 Title'),
            TextField::create('Service1Text', 'Service1 Text'),
            TextField::create('Service2Title', 'Service2 Title'),
            TextField::create('Service2Text', 'Service2 Text'),
            TextField::create('Service3Title', 'Service3 Title'),
            TextField::create('Service3Text', 'Service3 Text'),
            TextField::create('Service4Title', 'Service4 Title'),
            TextField::create('Service4Text', 'Service4 Text'),
   
        ));

        return $fields;
    }

}