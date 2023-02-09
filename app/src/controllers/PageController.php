<?php

namespace {

use SilverStripe\View\ArrayData;

    use SilverStripe\CMS\Controllers\ContentController;
    use SilverStripe\Control\HTTPRequest;
    use SilverStripe\View\Requirements;

    class PageController extends ContentController
    {
        /**
         * An array of actions that can be accessed via a request. Each array element should be an action name, and the
         * permissions or conditions required to allow the user to access it.
         *
         * <code>
         * [
         *     'action', // anyone can access this action
         *     'action' => true, // same as above
         *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
         *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
         * ];
         * </code>
         *
         * @var array
         */
        private static $allowed_actions = [
            'subscribe'
        ];

        protected function init()
        {
            parent::init();
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
            parent::init();

            $ThemeDir =  "themes/custom/";

            Requirements::css($ThemeDir . 'css/style.css');
            Requirements::css($ThemeDir . 'css/bootstrap.css');
            // Requirements::css($ThemeDir . 'css/responsive.css');
            Requirements::css($ThemeDir . 'css/style.css.map');
            Requirements::css($ThemeDir . 'css/lightslider.css');

            Requirements::css('https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css');
            Requirements::css('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');
            Requirements::css('https://fonts.googleapis.com/css?family=Poppins:400,600,700|Roboto:400,700&display=swap');
            Requirements::css('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css');
            Requirements::css('https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css');
            Requirements::css('https://unpkg.com/aos@2.3.1/dist/aos.css');
            
             

            Requirements::javascript($ThemeDir . 'javascript/bootstrap.js');
            Requirements::javascript($ThemeDir . 'javascript/script.js');
            Requirements::javascript($ThemeDir . 'javascript/jquery-3.4.1.min.js');
            Requirements::javascript($ThemeDir . 'javascript/lightslider.js');

            Requirements::javascript('http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js');
            Requirements::javascript('https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js');
            Requirements::javascript('https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js'); 
            Requirements::javascript('https://kit.fontawesome.com/54a42e235e.js');
            Requirements::javascript('https://unpkg.com/aos@2.3.1/dist/aos.js');

            Requirements::customScript(<<<JS
            
                 AOS.init();
                $(".owl-carousel").owlCarousel({
                    loop: true,
                    margin: 10,
                    nav: true,
                    navText: [],
                    autoplay: true,
                    responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 2
                    },
                    1000: {
                        items: 4
                    }
                    }
                });

                $(".owl-2").owlCarousel({
                    loop: true,
                    margin: 10,
                    nav: true,
                    navText: [],
                    autoplay: true,

                    responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 2
                    },
                    1000: {
                        items: 4
                    }
                    }
                });

                $(document).ready(function() {
                    $("#content-slider").lightSlider({
                        loop:true,
                        keyPress:true
                    });
                    $('#image-gallery').lightSlider({
                        gallery:true,
                        item:1,
                        thumbItem:9,
                        slideMargin: 0,
                        speed:500,
                        auto:true,
                        loop:true,
                        onSliderLoad: function() {
                            $('#image-gallery').removeClass('cS-hidden');
                        }  
                    });
                });
                $(document).ready(function() {
                    $('#vertical').lightSlider({
                    gallery:true,
                    item:1,
                    vertical:true,
                    verticalHeight:295,
                    vThumbWidth:50,
                    thumbItem:8,
                    thumbMargin:4,
                    slideMargin:0
                    });  
                });

            JS);
        }

        public function setSessionMessage($message, $type = 'success')
        {
            $session = $this->getRequest()->getSession();
            $session->set("Page.message", $message);
            $session->set("Page.messageType", $type);
        }

        public function SessionMessage()
        {
            $session = $this->getRequest()->getSession();

            $Message = $session->get('Page.message');
            $Type = $session->get('Page.messageType');

            $session->clear('Page.message');
            $session->clear('Page.messageType');

            if ($Message) {
                return new ArrayData(compact('Message', 'Type'));
            }

            return false;
        }

        public function subscribe(HTTPRequest $request)
        {
            $email = $request->postVar('Email');

            $subscribe = new Subscription();

            $subscribe->Email = $email;

            $subscribe->write();
             
            $this->setSessionMessage('Your subscription is successful, Thank you', 'good');

            return $this->redirectBack();
        }
    }
}
