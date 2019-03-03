<app>
  <div class="bgbg">
    <header></header>
    <addmeme></addmeme>
    <lovedmeme></lovedmeme>
    <footer></footer>
  </div>

  <script>
    var that = this
    this.showAddPanel = function () {
      this.tags.addmeme.refs.panel.classList.toggle('active');
    }

    this.showLovePanel = function () {
     this.tags.lovedmeme.refs.lovepanel.classList.toggle('active');
    }
  </script>
  <style>
    .bgbg {
      margin: 100px auto;
      width: 884px;
      padding: 0 10px;
      box-shadow: 0 0 31px 1px rgba(0, 0, 0, 0.25);
      border-radius: 10px;
      position:relative;
    }
  </style>
</app>
