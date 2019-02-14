<form-input>
	<div class="profile">
		<div class="userForm">
			<div>
				<label for="image">Upload Image URL</label>
				<input id="image" type="text" onkeyup={ updateImageURL } placeholder="Enter URL">
			</div>
			<div>
				<label for="description">Description</label>
				<textarea id="description" rows="4" cols="40" value={ description } onkeyup={ updateDescription }></textarea>
			</div>
		</div>

		<div class="preview">
			<h3>Hi, do you want to add more PINK</h3>
			<div class="preview-profile">
				<div class="thumb">
					<img src={ imageURL } alt="user image" />
					<h4>{ description }</h4>
				</div>
			</div>
		</div>
	</div>

	<script>
		// Our source of truth data
		this.imageURL="https://www.logolynx.com/images/logolynx/0f/0feef3766b476135f279ef4635cabd9f.jpeg";
		this.description="Wellcome to my PINK world";


		/* Notice that I am NOT changing the HTML directly, I am changing the source of truth this.user data. Riot follows a "react" flow for updating the UI. We apply changes to the source of truth data, and Riot "reacts" to that by updating the UI. This keeps Riot short and sweet. */
		updateImageURL(event) {
			this.imageURL = event.target.value;
		}

		updateDescription(event) {
			console.log(event);
			this.description = event.target.value;
		}
	</script>


	<style>
		:scope {
			display: block;
			background: #F5F5F5;
			color: #333;
			padding: 15px;
		}
		h3,h4 {
		opacity:0.8;
		}
		div {
			padding: 15px;
		}
		.userForm div, .preview div {
			padding: 0 0 10px 0;
		}
		.userForm, .preview {
			flex-grow: 1;
		}
		input, textarea{
		border:1px solid pink;
  	color: pink;
		margin-top: 10px;
		padding:5px 20px;
		font:1.5em;
		border-radius: 5px;
		}
		code {
			background: #DDD;
			border-radius: 4px;
			padding: 0 4px 1px;
			color: #333;
		}
		label {
			display: block;
		}
		.profile {
			display: flex;
			/*width: 100%;*/
		}
		.userForm {
			/*display: flex;*/
		}
		.preview-profile {
			display: flex;
		}
		.preview-profile .thumb {
			box-sizing: border-box;
			min-width: 150px;
			border: 1px solid pink;
			padding: 4px;
			line-height: 0;
		}
		.preview-profile img {
			width: 100%;
			margin: 0;
			padding: 0;
		}
		.preview-profile p {
			margin-left: 15px;
			margin-top: 0;
		}
	</style>
</form-input>
