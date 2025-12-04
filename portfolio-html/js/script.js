
document.addEventListener('DOMContentLoaded', function () {
	const toggle = document.getElementById('nav-toggle');
	const nav = document.getElementById('main-nav');


	if (toggle && nav) {
		toggle.addEventListener('click', function () {
			const expanded = toggle.getAttribute('aria-expanded') === 'true';
			toggle.setAttribute('aria-expanded', (!expanded).toString());
			if (nav.style.display === 'block') nav.style.display = '';
			else nav.style.display = 'block';
		});
	}

});
