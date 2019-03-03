<lovedmeme>

  <div class="memeMaker" ref="lovepanel">
  		<div class="ins-wrapper">
			<child class='ins' each={ myMemes }>
				<div class="image-wrapper" style="background-image: url({url});"></div>
        	<svg class="love-btn" aria-hidden="true"  }>
					<use xlink:href="#icon-aixin1"></use>
				</svg>
        <p class='num'>{ num }</p>
      </child>
  </div>
  
  
  </div>

  <script>

    observable.on('msglove', (url)=>{
      let num = this.getNumber();
			this.myMemes.push({url, num});
      this.update();
		});
    
		this.myMemes = [
   
    ];

    this.getNumber = ()=>Math.floor((Math.random() * 1000) + 1);
  </script>
  <style>

    .memeMaker {
      background: #FFFFFF;
      height: 100%;
      width: 884px;
      position: absolute;
      top: 286px;
      left: 10 px;

      text-align: center;
      display: none;
    }
    .memeMaker.active {
      display: block;
    }

    .ins-wrapper {
			display: flex;
			flex-wrap: wrap;
			justify-content: flex-start;
		}
		.image-wrapper {
			background: transparent center no-repeat;
			background-size: cover;
			width: 100%;
			min-width: 256px;
			height: 256px;
		}
    	.ins {
			background-color: white;
			width: 30%;
			border-radius: 6px;
			margin: 10px 13px;
			position: relative;
		}
    	.love-btn {
			fill: #D94432;
			opacity: 1;
			width: 40px;
			height: 40px;
			position: absolute;
			right: 10px;
			bottom: 5px;
		}
    .num{
    position: absolute;
    right: 51px;
    bottom: 0px;
    font-weight: bold;
    }
  </style>
</lovedmeme>
