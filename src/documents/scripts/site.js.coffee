htmlEncode = (value) ->
	$('<div/>').text(value).html()

halfSize = (img) ->
	el = $(img)
	if el.height() == 0
		console.log('image h/w not available yet, waiting to load')
		setTimeout ->
			halfSize(img)
		, 500
		null
	else
		console.log('image loaded: ' + el.attr('src'))
		h = el.height()
		w = el.width()
		el.height(h/2.0)
		el.width(w/2.0)
		null

$ ->
	$('.post img').each ->
		$el = $(this)
		$el.addClass('img-responsive')

	$('img').each ->
		re = /.*@2x\..+/
		if re.test($(this).attr('src'))
			console.log('Found HiDPI Image: ' + $(this).attr('src'))
			halfSize(this)
			null

	$('pre code').each (index, element) ->
		$code = $(this)
		classes = $code.attr('class')?.split(' ')
		if classes? then for origClass in classes
			fixedClass = origClass.replace /^lang-/, 'language-'
			$code.removeClass(origClass).addClass(fixedClass) if fixedClass isnt origClass
		try
			hljs.highlightBlock(element)
		catch e
			# absorb any problems, usually with older browsers