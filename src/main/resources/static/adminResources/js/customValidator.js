function validateEmail() {
    let emailTag = document.getElementById('username');
    if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(emailTag.value) || emailTag.value == "") {
        console.log(emailTag.value);
        emailTag.style.borderColor = '#ea4335';
        return (false)
    }
    emailTag.style.borderColor = '';
    return (true)
}