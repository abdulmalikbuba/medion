<?php

use SilverStripe\Assets\Image;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Versioned\Versioned;
use SilverStripe\AssetAdmin\Forms\UploadField;

class Vitamins extends DataObject
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
    
      private static $owns = [
        'Image',
      ];
    
      private static $extensions = [
        Versioned::class,
      ];

      private static $summary_fields = [
        'GridThumbnail' => 'Image',
        'Name' => 'Vitamin Name'
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

            TextField::create('Name', 'Vitamin'),
            TextField::create('Price','Price'),
            $uploader = UploadField::create('Image')
            
        );
        
        $uploader->setFolderName('Vitamin images');
        $uploader->getValidator()->setAllowedExtensions(['png', 'gif', 'jpeg', 'jpg', 'tiff', 'gif']);

        return $fields;
    }
}