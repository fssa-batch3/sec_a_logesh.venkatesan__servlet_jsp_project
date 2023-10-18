const cloudinary = cloudinaryCore.Cloudinary.new({
    cloud_name: 'YOUR_CLOUD_NAME',
    api_key: 'YOUR_API_KEY',
    api_secret: 'YOUR_API_SECRET'
});

function uploadImage() {
    const fileInput = document.getElementById('fileselect');
    const file = fileInput.files[0];

    cloudinary.upload(file, { resource_type: 'auto' })
        .then(result => {
            console.log(result.secure_url);
            // Perform further actions with the uploaded image URL
        })
        .catch(error => {
            console.error(error);
            // Handle error if the upload fails
        });
}
