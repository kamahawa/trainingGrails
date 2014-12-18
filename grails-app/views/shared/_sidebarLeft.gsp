<!-- BEGIN SIDEBAR LEFT -->
<div class="sidebar-left sidebar-nicescroller">
<ul class="sidebar-menu">
<li>
    <a href="index-2.html">
        <i class="fa fa-dashboard icon-sidebar"></i>
        ${message(code: 'menu.Home')}
        <span class="label label-success span-sidebar">UPDATED</span>
    </a>
</li>
<li>
    <a href="front-end.html">
        <i class="fa fa-bomb icon-sidebar"></i>
        ${message(code: 'menu.Electronic')}
        <span class="label label-danger span-sidebar">NEW</span>
    </a>
</li>
<li>
    <a href="#fakelink">
        <i class="fa fa-desktop icon-sidebar"></i>
        <i class="fa fa-angle-right chevron-icon-sidebar"></i>
        ${message(code: 'menu.Clothes')}
        <span class="badge badge-warning span-sidebar">2</span>
    </a>
    <ul class="submenu">
        <li><a href="#fakelink">${message(code: 'submenu.Clothes.Boy')}<span class="label label-success span-sidebar">CURRENT</span></a></li>
        <li><a href="layout-no-sidebar-right.html">${message(code: 'submenu.Clothes.Girl')}</a></li>
    </ul>
</li>
</ul>
</div><!-- /.sidebar-left -->
			<!-- END SIDEBAR LEFT -->