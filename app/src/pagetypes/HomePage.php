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
        'BannerLink' => 'Varchar'
    ];

    private static $has_one = [
        'BannerImage' => Image::class
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
            $uploader = UploadField::create('BannerImage')
        ));

        $uploader->setFolderName('Banner images');
        $uploader->getValidator()->setAllowedExtensions(['png', 'gif', 'jpeg', 'jpg', 'tiff', 'gif']);

        return $fields;
    }

}