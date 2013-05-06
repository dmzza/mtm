# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(() ->
	showProduct = ($product) ->
		source = $("#product-template").html()
		if $product.data('name') is 'New Product'
			window.location = "/products/new"
			return
		template = Handlebars.compile(source)
		matches = []
		$(".active").removeClass("active");
		$product.addClass('active');
		$product.children(".match").each(->
			matches.push({
				link: $(this).data('link')
				texture: starMapping($(this).data('texture'))
				luminosity: starMapping($(this).data('luminosity'))
				color: starMapping($(this).data('color'))
				overall: $(this).data('overall')
				photo: $(this).data('photo')
				price: $(this).data('price')
			})
		)

		context = {
			id: $product.data('id')
			name: $product.data('name')
			brand: $product.data('brand')
			description: $product.data('description')
			price: $product.data('price')
			link: $product.data('link')
			photo: $product.data('photo')
			matches: matches
		}
		html = template(context)

		$(".detail").html(html)
		ga('send', {
			'hitType': 'pageview',
			'page': '/products/' + context.id,
			'title': context.name
		})

	starMapping = (ranking) -> Math.ceil((ranking * 4) / 5)

	if $(".master li:first-child").length and $(".master li:first-child").data('name') isnt 'New Product'
		showProduct($(".master li:first-child"))

		$(".master li").on("click", ->
			showProduct($(this))
		)


)