<?php

use SilverStripe\ORM\PaginatedList;
use SilverStripe\Control\HTTPRequest;

class MedicinePageController extends PageController
{
    private static $allowed_actions = [
        'medicine_details',
        'vitamins_details'
    ];

    public function index()
    {
        $medicine = Medicine::get();

        $vitamins = Vitamins::get();

        $pagination = new PaginatedList($medicine, $this->getRequest());

        $pagination1 = new PaginatedList($vitamins, $this->getRequest());

        return $this->customise([
            "Medicines" => $pagination->setPageLength(6),
            "Vitamins" => $pagination1->setPageLength(6)
        ]);
    }

    public function medicine_details(HTTPRequest $request)
    {
        $id = $request->param("ID");

        $medicineDetail = Medicine::get()->byID($id);

        return  $this->customise([
            "Title" => "Medicine Detail",
            "MedicineDetail"=>$medicineDetail,
        ])->renderWith(['MedicineDetailPage','Page']);
 

    }

    public function vitamins_details(HTTPRequest $request)
    {
        $id = $request->param("ID");

        $vitaminDetail = Vitamins::get()->byID($id);

        return  $this->customise([
            "Title" => "Vitamins Detail",
            "VitaminsDetail"=>$vitaminDetail
        ])->renderWith(['VitaminsDetailPage','Page']);
 

    }
}