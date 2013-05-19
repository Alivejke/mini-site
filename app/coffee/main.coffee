onPhotoClick = (event) ->
	$target = $(event.currentTarget)
	url = $target.children('img').attr('src').slice(0, -10)
	idx = $target.parent().index()
	quantity = $target.parent().siblings().length

	showPopup(idx, quantity, url)

	false

showPopup = (idx, quantity, url) ->
	console.log idx, quantity, url


$(document).ready( ->
	$aside = $('#apartment_photos');

	if($aside[0])
		$aside.css('min-height', $('#apartment').outerHeight() - 40);

		$aside.on 'click', 'a', onPhotoClick
)