
		<!-- INCLUD ALL JS FILES 
			========================================================================= -->
		<!--JQUERY MIN JS-->
		<script src="assets/lib/jquery-1.12.4/jquery.min.js"></script>
		<!--BOOTSTRAP JS-->
		<script src="assets/lib/bootstrap/js/bootstrap.min.js"></script>
		<!-- REVOLUTION JS FILES -->
		<script src="assets/lib/revolution/js/jquery.themepunch.tools.min.js"></script>
		<script src="assets/lib/revolution/js/jquery.themepunch.revolution.min.js"></script>
		<!-- SLICEY ADD-ON FILES -->
		<script src='assets/lib/revolution/revolution-addons/slicey/js/revolution.addon.slicey.min8a54.js?ver=1.0.0'></script>
		<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
			(Load Extensions only on Local File Systems !  
			The following part can be removed on Server for On Demand Loading) -->	
		<script src="assets/lib/revolution/js/extensions/revolution.extension.actions.min.js"></script>
		<script src="assets/lib/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
		<script src="assets/lib/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
		<script src="assets/lib/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
		<script src="assets/lib/revolution/js/extensions/revolution.extension.migration.min.js"></script>
		<script src="assets/lib/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
		<script src="assets/lib/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
		<script src="assets/lib/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
		<script src="assets/lib/revolution/js/extensions/revolution.extension.video.min.js"></script>
		<script >
			var tpj=jQuery;
			var revapi24;
			tpj(document).ready(function() {
				if(tpj("#rev_slider_24_1").revolution == undefined){
					revslider_showDoubleJqueryError("#rev_slider_24_1");
				}else{
					revapi24 = tpj("#rev_slider_24_1").show().revolution({
						sliderType:"standard",
						jsFileLocation:"revolution/js/",
						sliderLayout:"fullscreen",
						dottedOverlay:"none",
						delay:9000,
						navigation: {
							keyboardNavigation:"off",
							keyboard_direction: "horizontal",
							mouseScrollNavigation:"off",
								mouseScrollReverse:"default",
							onHoverStop:"off",
							bullets: {
								enable:true,
								hide_onmobile:false,
								style:"bullet-bar",
								hide_onleave:false,
								direction:"horizontal",
								h_align:"center",
								v_align:"bottom",
								h_offset:0,
								v_offset:50,
								space:5,
								tmp:''
							}
							,
				arrows: {
					style:"uranus",
					enable:true,
					hide_onmobile:false,
					hide_onleave:false,
					tmp:'',
					left: {
						h_align:"left",
						v_align:"center",
						h_offset:10,
						v_offset:0
					},
					right: {
						h_align:"right",
						v_align:"center",
						h_offset:10,
						v_offset:0
					}
				}
						},
						responsiveLevels:[1240,1024,778,480],
						visibilityLevels:[1240,1024,778,480],
						gridwidth:[1240,1024,778,480],
						gridheight:[868,768,960,720],
						lazyType:"none",
						shadow:0,
						spinner:"spinner1",
						stopLoop:"off",
						stopAfterLoops:-1,
						stopAtSlide:-1,
						shuffle:"off",
						autoHeight:"off",
						fullScreenAutoWidth:"off",
						fullScreenAlignForce:"off",
						fullScreenOffsetContainer: "",
						fullScreenOffset: "0px",
						hideThumbsOnMobile:"off",
						hideSliderAtLimit:0,
						hideCaptionAtLimit:0,
						hideAllCaptionAtLilmit:0,
						debugMode:false,
						fallbacks: {
							simplifyAll:"off",
							nextSlideOnWindowFocus:"off",
							disableFocusListener:false,
						}
					});
				}
			
									 if(revapi24) revapi24.revSliderSlicey();
			});	/*ready*/
		</script>
		<!-- PRELOADER -->
		<script src="assets/lib/preloader/sPreloader.js"></script>
		<!-- OWL CAROUSEL --> 
		<script src="assets/lib/owl-carousel/owl.carousel.js"></script> 
		<!-- ISOTOPE GALLERY --> 
		<script src="assets/lib/isotope/jquery.isotope.min.js"></script> 
		<script src="assets/lib/isotope/custom-isotope-mansory.js"></script> 
		<!-- MAGNIFIC POPUP -->
		<script src="assets/lib/magnific-popup/jquery.magnific-popup.js"></script>
		<!-- CUSTOM JS -->
		<script src="assets/js/script.js"></script>