form = document.getElementById('new_storage');
if (form) {
  email = document.getElementById('email');
  emailConfirmation = document.getElementById('email_confirmation');
  fname = document.getElementById('fname');
  lname = document.getElementById('lname');
  form.addEventListener('submit', (event) => {
    event.preventDefault();
    if (email.value === '' || emailConfirmation.value === '' || fname.value === '' || lname.value === '') {
      email.value === '' ? email.classList.add('border') : email.classList.remove('border');
      email.value === '' ? email.classList.add('border-danger') : email.classList.remove('border-danger');
      emailConfirmation.value === '' ? emailConfirmation.classList.add('border') : emailConfirmation.classList.remove('border');
      emailConfirmation.value === '' ? emailConfirmation.classList.add('border-danger') : emailConfirmation.classList.remove('border-danger');
      fname.value === '' ? fname.classList.add('border') : fname.classList.remove('border');
      fname.value === '' ? fname.classList.add('border-danger') : fname.classList.remove('border-danger');
      lname.value === '' ? lname.classList.add('border') : lname.classList.remove('border');
      lname.value === '' ? lname.classList.add('border-danger') : lname.classList.remove('border-danger');
      document.getElementById('email-error-message').innerText = "Fields can't be blank";
      document.getElementById('email-error-message').classList.remove('d-none');
    } else {
      email.classList.remove('border');
      emailConfirmation.classList.remove('border');
      fname.classList.remove('border');
      lname.classList.remove('border');
      email.classList.remove('border-danger');
      emailConfirmation.classList.remove('border-danger');
      fname.classList.remove('border-danger');
      lname.classList.remove('border-danger');

      if (email.value === emailConfirmation.value) {
        document.getElementById('email-error-message').classList.add('d-none');
        form.submit();
      } else {
        email.classList.add('border');
        emailConfirmation.classList.add('border');
        email.classList.add('border-danger');
        emailConfirmation.classList.add('border-danger');
        document.getElementById('email-error-message').innerText = "Emails don't match";
        document.getElementById('email-error-message').classList.remove('d-none');
      }
    }
  });
}
