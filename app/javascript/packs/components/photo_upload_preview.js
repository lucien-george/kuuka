const previewImageOnFileSelect = () => {
  // we select the photo input
  const input = document.getElementById('photo-input');
  if (input) {
    // we add a listener to know when a new picture is uploaded
    input.addEventListener('change', () => {
      // we call the displayPreview function (who retrieve the image url and display it)
      displayPreview(input);
    })
  }
}

const displayPreview = (input) => {
  const photoContainer = document.querySelector('.photo-previews');
  photoContainer.innerHTML = '';
  if (input.files && input.files[0]) {
    Array.from(input.files).forEach((file) => {
      reader = new FileReader();
      reader.onload = ((event) => {
        img = `<img src="${event.currentTarget.result}" class="photo-preview"/>`
        photoContainer.insertAdjacentHTML('beforeend', img);
      });
      reader.readAsDataURL(file)
    });
  }
}

previewImageOnFileSelect();
