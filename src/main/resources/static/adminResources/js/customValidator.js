const ERROR_COLOR_CODE = '#ea4335';
function validateEmail() {
    let emailTag = document.getElementById('username');
    if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(emailTag.value) || emailTag.value == "") {
        emailTag.style.borderColor = ERROR_COLOR_CODE;
        emailTag.setCustomValidity('username should be valid email id');
        return false;
    }
    emailTag.setCustomValidity('');
    emailTag.style.borderColor = '';
    return true;
}

function validatePassword() {
    let passwordTag = document.getElementById('password');
    if (!/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})/.test(passwordTag.value)) {
        passwordTag.style.borderColor = ERROR_COLOR_CODE;
        passwordTag.setCustomValidity('use symbols, numbers, small and capital letters and length should be more than 8 characters');
        return false;
    }
    passwordTag.setCustomValidity('');
    passwordTag.style.borderColor = '';
    return true;
}

function comparePassword() {
    let passwordTag = document.getElementById('password');
    let confirmPasswordTag = document.getElementById('confirm-password');
    if (passwordTag.value !== confirmPasswordTag.value) {
        confirmPasswordTag.style.borderColor = ERROR_COLOR_CODE;
        confirmPasswordTag.setCustomValidity('must be same as password');
        return false;
    }
    confirmPasswordTag.setCustomValidity('');
    confirmPasswordTag.style.borderColor = '';
    return true;
}

function validatePhone() {
    let contactNoTag = document.getElementById('contact-number');
    if (!/^\(?[\d]{3}\)?[\s-]?[\d]{3}[\s-]?[\d]{4}$/.test(contactNoTag.value)) {
        contactNoTag.style.borderColor = ERROR_COLOR_CODE;
        contactNoTag.setCustomValidity('Enter valid contact number');
        return false;
    }
    contactNoTag.style.borderColor = '';
    contactNoTag.setCustomValidity('');
    return true;
}