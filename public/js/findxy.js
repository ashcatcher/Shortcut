        function showWidth(element, width) {
          $("#infobox").text("The width for the " + element + " is " + width +"px." );
        }
        $("#wgetd").click(function() {
          showWidth("document", $(document).width() );
        });
        $("#wgetw").click(function() {
          showWidth("window", $(window).width() );
        });
        $("#columngetw").click(function() {
          showWidth("column", $(".col-6").width() );
        });
        $("#containergetw").click(function() {
          showWidth("container", $(".container").width() );
        });
        function showHeight(element, height) {
          $("#infobox").text("The height for the " + element + " is " + height + "px." );
        }
        $("#hgetd").click(function() {
          showHeight("document", $(document).height() );
        });
        $("#hgetw").click(function() {
          showHeight("window", $(window).height() );
        });
