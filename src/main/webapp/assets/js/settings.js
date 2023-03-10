(function ($) {
  "use strict";

  $(function () {
    $(".nav-settings").on("click", function () {
      $("#right-sidebar").toggleClass("open");
    });
    $(".settings-close").on("click", function () {
      $("#right-sidebar,#theme-settings").removeClass("open");
    });

    $("#settings-trigger").on("click", function () {
      $("#theme-settings").toggleClass("open");
    });

    //background constants
    var navbar_classes =
      "navbar-danger navbar-success navbar-warning navbar-dark navbar-light navbar-primary navbar-info navbar-pink";
    var sidebar_classes = "sidebar-light sidebar-dark";
    var $body = $("body");

    //sidebar backgrounds
    $("#sidebar-light-theme").on("click", function () {
      $body.removeClass(sidebar_classes);
      $body.addClass("sidebar-light");
      $(".sidebar-bg-options").removeClass("selected");
      $(this).addClass("selected");
    });
    $("#sidebar-dark-theme").on("click", function () {
      $body.removeClass(sidebar_classes);
      $body.addClass("sidebar-dark");
      $(".sidebar-bg-options").removeClass("selected");
      $(this).addClass("selected");
    });

    //Navbar Backgrounds
    $(".tiles.primary").on("click", function () {
      $(".navbar").removeClass(navbar_classes);
      $(".navbar").addClass("navbar-primary");
      $(".tiles").removeClass("selected");
      $(this).addClass("selected");
    });
    $(".tiles.success").on("click", function () {
      $(".navbar").removeClass(navbar_classes);
      $(".navbar").addClass("navbar-success");
      $(".tiles").removeClass("selected");
      $(this).addClass("selected");
    });
    $(".tiles.warning").on("click", function () {
      $(".navbar").removeClass(navbar_classes);
      $(".navbar").addClass("navbar-warning");
      $(".tiles").removeClass("selected");
      $(this).addClass("selected");
    });
    $(".tiles.danger").on("click", function () {
      $(".navbar").removeClass(navbar_classes);
      $(".navbar").addClass("navbar-danger");
      $(".tiles").removeClass("selected");
      $(this).addClass("selected");
    });
    $(".tiles.light").on("click", function () {
      $(".navbar").removeClass(navbar_classes);
      $(".navbar").addClass("navbar-light");
      $(".tiles").removeClass("selected");
      $(this).addClass("selected");
    });
    $(".tiles.info").on("click", function () {
      $(".navbar").removeClass(navbar_classes);
      $(".navbar").addClass("navbar-info");
      $(".tiles").removeClass("selected");
      $(this).addClass("selected");
    });
    $(".tiles.dark").on("click", function () {
      $(".navbar").removeClass(navbar_classes);
      $(".navbar").addClass("navbar-dark");
      $(".tiles").removeClass("selected");
      $(this).addClass("selected");
    });
    $(".tiles.default").on("click", function () {
      $(".navbar").removeClass(navbar_classes);
      $(".tiles").removeClass("selected");
      $(this).addClass("selected");
    });

    /**
     *
     * Added By Ian
     * 15-05-2022
     *
     */

    $("#gSearchBtn").click(function () {
      const $navbarSearch = $(this).closest(".navbar-search");

      $navbarSearch.toggleClass("is-active");

      $navbarSearch.find(".navbar-search-input").focus();
    });

    $("body").click(function (e) {
      console.log("hey");
      const $target = $(e.target);

      let $navbarSearch = $target.closest(".navbar-search");

      console.log("navbarSearch length --> ", $navbarSearch.length);

      if ($navbarSearch.length !== 0) return;

      $navbarSearch = $(".navbar .navbar-search");
      console.log($navbarSearch);
      console.log("navbarSearch has active class --> ", $navbarSearch.hasClass("is-active"));
      $navbarSearch.removeClass("is-active");

      $navbarSearch.find(".navbar-search-input").val("");
    });
  });
})(jQuery);
