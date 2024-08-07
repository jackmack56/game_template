$(document).ready(function(){

    $('.scroll-top').hide(); // Hide the scroll-top button initially.

    /*---------- Mobile-Navbar Toggler ----------*/
    // Define variables to store references.

    let searchBtn = document.querySelector("#search-btn"); // Search button.
    let sideBar = document.querySelector('.mobile-menu'); // Mobile side menu bar.
    let searchContainer = document.querySelector(".search-container"); // Search container.
    let menuBar = document.querySelector(".header #menu-btn"); // Menu bar in the header.

    // Open the mobile side menu bar, When the menuBar element is clicked.
    menuBar.onclick = () =>{

        searchContainer.classList.remove("active"); // Show the mobile side menu.
        sideBar.classList.toggle('active');
        menuBar.classList.toggle("fa-times");
        $(".nav-link .main-nav-link").removeClass("active"); // Remove active class from main navigation links.
        $(".nav-link .sub-nav-link").removeClass("active").slideUp(); // Remove active class from sub-navigation links and slide them up.
        $(".nav-link .main-nav-link i").removeClass("fa-minus").addClass("fa-plus"); // Change icon to '+' for main navigation links.
    }

    /*--------------- Search-Toggler ---------------*/
    // When the search button is clicked.
    searchBtn.onclick = () => {
        sideBar.classList.remove('active'); // Hide the mobile side menu
        searchContainer.classList.toggle("active"); // Toggle the visibility of the search container
    }

    // On Load/Scroll
    $(window).on('load scroll',function(){
        sideBar.classList.remove('active'); // Hide the mobile side menu on load/scroll.
        menuBar.classList.remove("fa-times");
        searchContainer.classList.remove("active"); // Hide the search container on load/scroll.
        $(".nav-link .main-nav-link").removeClass("active"); // Remove active class from main navigation links on load/scroll.
        $(".nav-link .sub-nav-link").removeClass("active").slideUp(); // Remove active class from sub-navigation links and slide them up on load/scroll.
        $(".nav-link .main-nav-link i").removeClass("fa-minus").addClass("fa-plus"); // Change icon to '+' for main navigation links on load/scroll.

        /*--------------- Scroll-Top ---------------*/
        if ($(this).scrollTop() > 100) {
            $('.scroll-top').fadeIn(); // Show the scroll-to-top button when the page is scrolled down more than 100px.
        } else {
            $('.scroll-top').fadeOut(); // Hide the scroll-to-top button when the page is scrolled to the top.
        }

        /*--------------- Sticky Header ---------------*/
        if($(window).scrollTop() > 68){
            $('.header').addClass('active');
        }else{
            $('.header').removeClass('active');
        }

    });

});

/*---------- Mobile-Navbar Nav Toggler ----------*/
$(document).ready(function(){

    // Handle main navigation link clicking
    $(".main-nav-link").click(function(){

        // Check if the clicked link is already active
        if($(this).hasClass("active")){
            $(this).removeClass("active"); // Remove "active" class from clicked link
            $(this).next(".sub-nav-link").removeClass("active").slideUp(); // Remove "active" class and slide up the corresponding sub-navigation
            $(this).find("i").removeClass("fa-minus").addClass("fa-plus"); // Update the icon to "fa-plus"
        }

        else{
            $(".nav-link .main-nav-link").removeClass("active"); // Remove "active" class from all main navigation links
            $(".nav-link .sub-nav-link").removeClass("active").slideUp(); // Remove "active" class and slide up all sub-navigations
            $(".nav-link .main-nav-link i").removeClass("fa-minus").addClass("fa-plus"); // Update all icons to "fa-plus"
            $(this).addClass("active"); // Add "active" class to clicked link
            $(this).next(".sub-nav-link").addClass("active").slideDown(); // Add "active" class and slide down the corresponding sub-navigation
            $(this).find("i").removeClass("fa-plus").addClass("fa-minus"); // Update the icon to "fa-minus"
        }

    });

});


