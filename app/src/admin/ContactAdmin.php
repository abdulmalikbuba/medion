<?php

use SilverStripe\Admin\ModelAdmin;
use SilverStripe\Forms\GridField\GridFieldViewButton;

class ContactAdmin extends ModelAdmin
{
    private static $managed_models = [
        Contact::class,
    ];

    private static $url_segment = 'contacts';

    private static $menu_title = 'Contacts';

    private static $menu_icon_class = 'font-icon-database';

    public function getEditForm($id = null, $fields = null) {

        $form = parent::getEditForm($id, $fields);

        // get gridfield
        $gridfield = $form->Fields()->dataFieldByName($this->sanitiseClassName($this->modelClass));

        $gridfieldConfig = $gridfield->getConfig();

        // remove add, delete & edit buttons
        $gridfieldConfig->removeComponentsByType(SilverStripe\Forms\GridField\GridFieldDeleteAction::class);
        $gridfieldConfig->removeComponentsByType(SilverStripe\Forms\GridField\GridFieldEditButton::class);
        $gridfieldConfig->removeComponentsByType(SilverStripe\Forms\GridField\GridFieldAddNewButton::class);

        // add a view button
        $gridfieldConfig->addComponent(new GridFieldViewButton());

        return $form;
    }

}