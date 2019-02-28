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
		<svg class="icon" id='love' aria-hidden="true" onclick={ lovepage }>
			<use xlink:href="#icon-aixin"></use>
		</svg>
		<svg class="icon" aria-hidden="true">
			<use xlink:href="#icon-geren"></use>
		</svg>
		</div>
		<img id='msg' if={visible} src="http://www.transparentpng.com/download/instagram-heart/71kKbb-instagram-heart-high-quality-png.png" alt="">


	<script>
		this.open = function () {
			this.parent.showAddPanel();
		}
		this.lovepage = function () {
			this.parent.showLovePanel();
		}

		var that = this;
		this.visible = false;

		observable.on('msglove', function(){
		<!-- that.data = passedData; -->
		that.wait();
	});


	this.wait = function(){
		setTimeout(function () {
			that.respond();
		}, 300);
	}

	this.respond = function () {
		<!-- that.selectJoke(); -->
		that.visible = true;
		that.update();
		setTimeout(function () {
			that.hide();
			that.update();
		}, 2000);
	}
	this.hide = function () {
      this.visible = false;
    }
	</script>

	<style>
		:scope {
			display: block;
			position: relative;

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
		#msg{
			position: absolute;
			bottom: 30px;
	left: 610px;
	width: 80px;
	height: 80px;

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
		#love:hover {
			fill: pink;
			transform: scale(1.3);
		}
	</style>

</footer>
