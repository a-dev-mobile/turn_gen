class Union {
  const Union.load({required bool isError});
  const Union.init({String msg = 'hello'});
  const Union.error([String error = 'error']);
  const Union.notSucces();
}
