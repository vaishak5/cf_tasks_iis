document.addEventListener('DOMContentLoaded', function () {
    var selectElement = document.getElementById('selectConts');
    var boxFirstDiv = document.getElementById('boxx');
    var relocateDiv = document.getElementById('relocateCont');
    var firstradioInput=document.getElementById('firstButton');
    var secondradioInput=document.getElementById('secondButon');
    var textBoxes = document.querySelectorAll('#boxxSecond input[type="text"]');
    var boxSecondDiv = document.getElementById('boxxSecond');
    var urlInput = document.getElementById('urlCont');
    var boxThirdDiv = document.getElementById('thdBox');
    var fileDiv = document.getElementById('fileCont');
    var imgSelect = document.getElementById('myFile');
    var salary=document.getElementById('salaryCont');
    var salaryInput=document.querySelectorAll('#salaryBox');
    var nameDiv = document.getElementById('boxxFourth');
    var firstNameInput = document.getElementById('firstname');
    var lastNameInput = document.getElementById('lastname');
    var email=document.getElementById('boxxFifth');
    var emailInput=document.getElementById('email');
    var phoneDiv=document.getElementById('boxSix');
    var phoneFtInput=document.getElementById('phoneFt');
    var phoneSndInput=document.getElementById('phoneSnd');
    var phoneThdInput=document.getElementById('phoneThd');
    selectElement.addEventListener('focus', function () {
        boxFirstDiv.classList.add('highlight');
    });
    selectElement.addEventListener('blur', function () {
        boxFirstDiv.classList.remove('highlight');
    });
    firstradioInput.addEventListener('focus', function () {
        relocateDiv.classList.add('highlight');
    });

    firstradioInput.addEventListener('blur', function () {
        relocateDiv.classList.remove('highlight');
    });

    secondradioInput.addEventListener('focus', function () {
        relocateDiv.classList.add('highlight');
    });

    secondradioInput.addEventListener('blur', function () {
        relocateDiv.classList.remove('highlight');
    });
    textBoxes.forEach(function(textBox) {
        textBox.addEventListener('focus', function () {
            boxSecondDiv.classList.add('highlight');
        });

        textBox.addEventListener('blur', function () {
            boxSecondDiv.classList.remove('highlight');
        });
    });
    imgSelect.addEventListener('focus', function () {
        fileDiv.classList.add('highlight');
    });

    imgSelect.addEventListener('blur', function () {
        fileDiv.classList.remove('highlight');
    });
    urlInput.addEventListener('focus', function () {
        boxThirdDiv.classList.add('highlight');
    });

    urlInput.addEventListener('blur', function () {
        boxThirdDiv.classList.remove('highlight');
    });
    salaryInput.forEach(function(textBox) {
        textBox.addEventListener('focus', function () {
            salary.classList.add('highlight');
        });

        textBox.addEventListener('blur', function () {
            salary.classList.remove('highlight');
        });
    });
    firstNameInput.addEventListener('focus', function () {
        nameDiv.classList.add('highlight');
    });

    firstNameInput.addEventListener('blur', function () {
        nameDiv.classList.remove('highlight');
    });

    lastNameInput.addEventListener('focus', function () {
        nameDiv.classList.add('highlight');
    });

    lastNameInput.addEventListener('blur', function () {
        nameDiv.classList.remove('highlight');
    });
    emailInput.addEventListener('focus',function(){
        email.classList.add('highlight');
    });
    emailInput.addEventListener('blur',function(){
        email.classList.remove('highlight');
    });
    phoneFtInput.addEventListener('focus', function () {
        phoneDiv.classList.add('highlight');
    });

    phoneFtInput.addEventListener('blur', function () {
        phoneDiv.classList.remove('highlight');
    });

    phoneSndInput.addEventListener('focus', function () {
        phoneDiv.classList.add('highlight');
    });

    phoneSndInput.addEventListener('blur', function () {
        phoneDiv.classList.remove('highlight');
    });

    phoneThdInput.addEventListener('focus', function () {
        phoneDiv.classList.add('highlight');
    });

    phoneThdInput.addEventListener('blur', function () {
        phoneDiv.classList.remove('highlight');
    });
    
    
});
function moveCursor(input,nextField) {
    if (input.value.length >= input.maxLength) {
        document.getElementById(nextField).focus();
    }
}
