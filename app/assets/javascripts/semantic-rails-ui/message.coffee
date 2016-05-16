$('.message .close').bind 'click', -> $(this).closest('.message').transition('fade')
