<ul class="nav navbar-nav navbar-right">
  <li class="dropdown menu-merge">
    <div class="navbar-btn btn-group">
      <button data-toggle="dropdown" class="btn btn-sm dropdown-toggle">
        <span class="flag-xs flag-us"></span>
        <!-- <span class="caret"></span> -->
      </button>
      <ul class="dropdown-menu pv5 animated animated-short flipInX" role="menu">
        <li>
          <a href="javascript:void(0);">
            <span class="flag-xs flag-in mr10"></span> Hindu </a>
        </li>
        <li>
          <a href="javascript:void(0);">
            <span class="flag-xs flag-tr mr10"></span> Turkish </a>
        </li>
        <li>
          <a href="javascript:void(0);">
            <span class="flag-xs flag-es mr10"></span> Spanish </a>
        </li>
      </ul>
    </div>
  </li>
  <li class="menu-divider hidden-xs">
    <i class="fa fa-circle"></i>
  </li>
  <li class="dropdown menu-merge">
    <a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown">
      <img src="<?=SITE;?>assets/img/avatars/1.jpg" alt="avatar" class="mw30 br64">
      <span class="hidden-xs pl15"> <?= $this->name; ?> </span>
      <span class="caret caret-tp hidden-xs"></span>
    </a>
    <ul class="dropdown-menu list-group dropdown-persist w150" role="menu">
      <li class="dropdown-footer">
        <a id="logout" class="btn"><span class="fa fa-power-off pr5"></span> Выйти </a>
      </li>
    </ul>
  </li>
</ul>

<script>
  scripts.addOne(['linkClick']);
</script>