function kolor(nazwa) {
    var wiersze = document.getElementsByTagName('tr');
    var producent = document.getElementById(nazwa);

    // zmiania stylu u¿ytego elementu
    if (producent.classList.contains('wybrany'))
        producent.classList.remove('wybrany');
    else
        producent.classList.add('wybrany');

    //zmiania stylu wierszy bêd¹cych w relacji z wcisniêtym elementem
    for (var i = 0, n = wiersze.length; i < n; i++) {
        if (wiersze[i].getAttribute('producent') !== null) {
            if (wiersze[i].getAttribute('producent') == nazwa) {
                if (wiersze[i].classList.contains('wybrany'))
                    wiersze[i].classList.remove('wybrany');
				else
                    wiersze[i].classList.add('wybrany');
			}
		}
	}
}