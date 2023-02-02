<?php

use SilverStripe\Assets\Image;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Versioned\Versioned;
use SilverStripe\AssetAdmin\Forms\UploadField;

class Medicine extends DataObject
{
    private static $db = [
        'Name' => 'Varchar',
        'Price' => 'Currency'
    ];

    private static $has_one = [
        'Image' => Image::class,
        'HomePage' => HomePage::class,
        'MedicinePage' => MedicinePage::class
    ];
    
    private static $owns = [];
    
    private static $extensions = [
        Versioned::class,
    ];

    private static $summary_fields = [
        'GridThumbnail' => 'Image',
        'Name' => 'Medicine Name'
    ];

    public function getGridThumbnail()
    {
        if ($this->Image()->exists()) {
            return $this->Image()->Fill(100, 100);
        }

        return "(no image)";
    }

    private static $versioned_gridfield_extensions = true;

    public function getCMSFields()
    {
        $fields = FieldList::create(

            TextField::create('Name', 'MedicineName'),
            TextField::create('Price','Price'),
            $uploader = UploadField::create('Image')
            
        );
        
        $uploader->setFolderName('Medicine images');
        $uploader->getValidator()->setAllowedExtensions(['png', 'gif', 'jpeg', 'jpg', 'tiff', 'gif']);

        return $fields;
    }
}