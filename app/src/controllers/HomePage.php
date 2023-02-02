<?php

use SilverStripe\Control\HTTPRequest;

class HomePageController extends PageController
{
    private static $allowed_actions = [
        'requestCallBack'
    ];

    public function Medicines()
    {
        return Medicine::get();
    }

    public function Vitamins()
    {
        return Vitamins::get();
    }

    public function requestCallBack(HTTPRequest $request)
    {
        $name = $request->postVar('Name');

        $phoneNumber = $request->postVar('PhoneNumber');

        $email = $request->postVar('Email');

        $medicine = $request->postVar('Medicine');

        $message = $request->postVar('Message');

        $contact = new Contact();

        $contact->Name = $name;

        $contact->PhoneNumber = $phoneNumber;

        $contact->Email = $email;

        $contact->Medicine = $medicine;

        $contact->Message = $message;

        $contact->write();

        $this->setSessionMessage('Thanks for your message, we will get back to you soon.', 'good');

        return $this->redirectBack();

    }
}