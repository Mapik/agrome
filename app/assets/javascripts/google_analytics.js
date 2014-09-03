<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-54474504-1', 'auto');
  ga('send', 'pageview');

</script>

jQuery(window).scroll(function() {
    if (scroll >= 50) {
        $('#logo-image').attr('src', 'img/Acme_Monogram_Colour.png')
        $(".important-class").addClass("padding-on-my-header");
    }
    if (scroll < 50) {
        $(".important-class").removeClass("padding-on-my-header");
        $('#logo-image').attr('src', 'img/Acme_Colour.png')
    }
});