<footer>
	<div class="icons">
		<svg class="icon" aria-hidden="true">
			<use xlink:href="#icon-yidiandiantubiao22"></use>
		</svg>
		<svg class="icon" aria-hidden="true">
			<use xlink:href="#icon-fangdajing"></use>
		</svg>
		<svg class="icon" id='add' aria-hidden="true" onclick={ open }>
			<use xlink:href="#icon-jiahao"></use>
		</svg>
		<svg class="icon" aria-hidden="true">
			<use xlink:href="#icon-aixin"></use>
		</svg>
		<svg class="icon" aria-hidden="true">
			<use xlink:href="#icon-geren"></use>
		</svg>
	</div>

	<script>
		this.open = function () {
			this.parent.showAddPanel();
		}
	</script>

	<style>
		:scope {
			display: block;

		}
		.icon {
			width: 30px;
			height: 30px;
			vertical-align: -0.15em;
			fill: black;
			overflow: hidden;
			vertical-align: top;
			margin: 12px 25px;

		}
		.icons {
			display: flex;
			flex-wrap: nowrap;
			justify-content: space-between;
		}
		#add {
			fill: pink;
		}
		#add:hover {
			fill: pink;
			transform: scale(1.3);
		}
	</style>

</footer>
