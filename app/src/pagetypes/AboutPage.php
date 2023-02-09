<?php
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;

class AboutPage extends Page
{
    private static $db = [
        'AboutUsText' => 'Varchar',
        
        
    ];

    private static $has_one = [
        'LocationImage1' => Image::class,
        'LocationImage2' => Image::class,
        'LocationImage3' => Image::class
    ];


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.AboutUsContent', array(
            TextField::create('AboutUsText', 'About Us'),
            $uploader = UploadField::create('LocationImage1'),
            $uploader = UploadField::create('LocationImage2'),
            $uploader = UploadField::create('LocationImage3'),
            
            
        ));

        $uploader->setFolderName('Location Images');
        $uploader->getValidator()->setAllowedExtensions(['png', 'gif', 'jpeg', 'jpg', 'tiff', 'gif']);


        return $fields;
    }
}