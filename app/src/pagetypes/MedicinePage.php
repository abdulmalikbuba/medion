<?php

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

class MedicinePage extends Page
{
    private static $db = [];

    private static $has_one = [];

    private static $has_many = [
        'Medicines' => Medicine::class,
        'Vitamins' => Vitamins::class
    ];


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Medicines', GridField::create(
            'Medicines',
            'Medicines on this page',
            $this->Medicines(),
            GridFieldConfig_RecordEditor::create()
        ));

        $fields->addFieldToTab('Root.Vitamins', GridField::create(
            'Vitamins',
            'Vitamins on this page',
            $this->Vitamins(),
            GridFieldConfig_RecordEditor::create()
        ));

        return $fields;
    }

}