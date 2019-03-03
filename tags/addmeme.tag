<addmeme>

	<div show={ myMemes.length == 0 }>
		<p>NO MEMEs</p>
	</div>
	<div class="allpage">

		<div class="ins-wrapper">
			<child class='ins' each={ myMemes }>
				<div class="image-wrapper" style="background-image: url({url});"></div>
				<svg class="love-btn" ref="loved" aria-hidden="true" onclick={ loveit.bind(this, url) }>
					<use xlink:href="#icon-aixin1"></use>
				</svg>
				<img class="delete-btn" src="https://cdn3.iconfinder.com/data/icons/stroke/53/Trash-512.png" id='remove' onclick={ parent.remove }>

			</child>
		</div>

		<div class="memeMaker" ref="panel">
			<div id="update">
				<input type="file" id="i_file" value=""> 
				<br>
				<input type="text" onkeyup={ updateImageURL } ref="urlEl" placeholder="Enter url">
				<button type="button" onclick={ addMeme }>Add Meme</button>
				<img class='break' src={ imageURL } alt="user image"/>
				<img id='close' onclick={ close } src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/VisualEditor_-_Icon_-_Close_-_white.svg/2000px-VisualEditor_-_Icon_-_Close_-_white.svg.png" alt="">

			</div>
		</div>

	</div>
	<script>
		var that = this;
		this.imageURL = "https://www.logolynx.com/images/logolynx/0f/0feef3766b476135f279ef4635cabd9f.jpeg";
		updateImageURL(event) {
			this.imageURL = event.target.value;
		}
		this.num = 3;
		//a js array to store all my Meme info

		this.myMemes = [
			{
				url: "https://steamuserimages-a.akamaihd.net/ugc/252588856183344043/28282E51D716021CC850406D556669A7F375A05F/"
			}, {
				url: "http://www.parfaitdoll.com/wp-content/uploads/2017/05/trash.jpg"
			}, {
				url: "https://thepreviewapp.com/wp-content/uploads/2017/07/instagram-visual-strategy-feed-11.jpg"
			}, {
				url: "https://scontent-yyz1-1.cdninstagram.com/vp/1c4b7d7d49a458b48b31f6dd4fb3bb9a/5CC09599/t51.2885-15/e35/14026749_291085051267307_1221432988_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com&ig_cache_key=MTMxNTE1Mjg3NDI3NTI0MTk3NA%3D%3D.2"
			}, {
				url: "https://data.whicdn.com/images/316547848/large.jpg"
			}, {
				url: "https://cdn1.thehunt.com/app/public/system/zine_images/10240476/original/98dbca8f827c1ee4cf896be6e9bc3401.jpeg"
			}, {
				url: "https://scontent-lga3-1.cdninstagram.com/vp/4b443b4d876dcca85d8218bb1ea6c7a2/5D00CF57/t51.2885-15/e35/49526027_313241855985301_8807553897584381003_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com&se=7&ig_cache_key=MTk2ODMyMzk1MjUzOTc2ODE0Ng%3D%3D.2"
			}, {
				url: "https://66.media.tumblr.com/d15448c5f6f7b0248b52a381bbc3e6c8/tumblr_o7j1xcXjlh1vvp20no1_500.jpg"
			}, {
				url: "https://i.pinimg.com/originals/c1/b7/d8/c1b7d80ae7e42cc8d969fc16db9ffb15.jpg"
			}
		];

		this.remove = function () {
			var memeObj = event.item;
			var index = this.myMemes.indexOf(memeObj);
			this.myMemes.splice(index, 1);
		};

		this.addMeme = function () {
			var url = this.refs.urlEl.value;
			var meme = {
				url: url
			};
			this.myMemes.push(meme);
			this.refs.urlEl.value = "";
			this.refs.panel.classList.remove('active');
		};

		this.close = function () {
			this.refs.panel.classList.remove('active');
		}

		this.loveit = function (url) {
			var memeObj = event.item;
			var index = this.myMemes.indexOf(memeObj);
			that.refs.loved[index].classList.toggle('red');
			observable.trigger('msglove', url);
		}

		//for file uploading
		this.on('mount', ()=> {
			$('#i_file').change( (event)=> {
			var tmppath = URL.createObjectURL(event.target.files[0]);
			this.imageURL = tmppath;
			this.refs.urlEl.value = tmppath;
			this.update();
			});
		})
	
		
	</script>

	<style>
		.delete-btn {
			opacity: 0;
			width: 30px;
			height: 30px;
			position: absolute;
			right: 15px;
			bottom: 50px;
		}
		.love-btn {
			opacity: 0;
			width: 40px;
			height: 40px;
			position: absolute;
			right: 10px;
			bottom: 5px;
		}
		.red {
			fill: #D94432;
			opacity: 1;
		}
		.ins:hover .delete-btn {
			opacity: 1;
		}
		.ins:hover .love-btn {
			opacity: 1;
		}
		:scope {
			display: block;
		}
		.ins {
			background-color: white;
			width: 30%;
			border-radius: 6px;
			margin: 10px 13px;
			position: relative;
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
		.break {
			display: block;
			background-color: white;
			width: 30%;
			border-radius: 6px;
			margin: 20px auto;
		}
		.allpage {
			position: relative;
		}
		#update {
			margin: 246px auto;
		}
		input {
			padding: 10px 30px;
			border-radius: 5px;
			border: 1px dashed #BBB;
		}
		button {
			padding: 10px;
			border-radius: 5px;
		}
		.memeMaker {
			background: rgba(0,0,0,0.5);
			height: 100%;
			width: 100%;
			position: absolute;
			top: 0;
			left: 0;
			text-align: center;
			display: none;
		}
		.memeMaker.active {
			display: block;
		}
		#close {
			width: 40px;
			height: 40px;
			position: relative;
			top: 20px;
		}
	</style>
</addmeme>
