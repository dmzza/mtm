# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(() ->
	showProduct = ($product) ->
		source = $("#product-template").html()
		template = Handlebars.compile(source)
		context = {
			name: $product.data('name')
			brand: $product.data('brand')
			description: $product.data('description')
			price: $product.data('price')
			link: $product.data('link')
		}
		html = template(context)

		$(".detail").html(html)

	if $(".master li:first-child").length
		showProduct($(".master li:first-child"))

		$(".master li").on("click", ->
			showProduct($(this))
		)


)