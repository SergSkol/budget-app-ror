const showMenu = () => {
  var modal = document.querySelector('.nav-menu')
  if (modal.classList.contains('hide')) {
    modal.classList.remove('hide');
  } else {
    modal.classList.add('hide');
  }
}
