function kolor(nazwa, id) {
    var allElements = document.getElementsByTagName('tr');
    var producent = document.getElementById(id);

    if (producent.classList.contains('wybrany'))
        producent.classList.remove('wybrany');
    else
        producent.classList.add('wybrany');

	for (var i = 0, n = allElements.length; i < n; i++) {
		if (allElements[i].getAttribute('producent') !== null) {
			if (allElements[i].getAttribute('producent') == nazwa) {
				if (allElements[i].classList.contains('wybrany'))
					allElements[i].classList.remove('wybrany');
				else
					allElements[i].classList.add('wybrany');
			}
		}
	}
}