 (function(_, $) {

    $.ceEvent('on', 'ce.commoninit', function(context) {

        var mobileWidth = 767,
            imageZoomSize = 450;

        // Disable Cloud zoom on mobile devices
        if($(window).width() > mobileWidth) {

            context.find('.cm-previewer').each(function() {
                var elm = $(this).find('img'),
                    elm_width = $(this).data('caImageWidth'),
                    elm_height = $(this).data('caImageHeight');
                if(elm.data('CloudZoom') == undefined) {
                    elm.attr('data-cloudzoom', 'zoomImage: "' + $(this).prop('href') + '"')
                        .CloudZoom({
                            tintColor: '#ffffff',
                            tintOpacity: 0.6,
                            animationTime: 200,
                            easeTime: 200,
                            zoomFlyOut: true,
                            zoomSizeMode: 'zoom',
                            captionPosition: 'bottom',
                                                        zoomPosition: '3',
                            autoInside: mobileWidth,
                            disableOnScreenWidth: mobileWidth,
                            zoomWidth: elm_width < imageZoomSize ? elm_width : imageZoomSize,
                            zoomHeight: elm_height < imageZoomSize ? elm_height : imageZoomSize
                    });
                }
            });

        }
    });

  }(Tygh, Tygh.$));