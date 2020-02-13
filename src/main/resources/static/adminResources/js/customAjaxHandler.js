const ajaxAPILink = 'http://localhost:8080/api/';

const CITY_OPTION_ID = 'selectCityOptions';
const SUB_CATEGORY_OPTION_ID = 'selectSubCategoryOption';
const CATEGORY_OPTION_ID = 'selectCategoryOption';
const PRODUCT_OPTION_ID = 'selectProductOption';

// helper functions
function removeElement(id) {
    let elem = document.getElementById(id);
    return elem.parentNode.removeChild(elem);
}

//function for api calls
async function getCities(stateId) {
    return fetch(ajaxAPILink + 'cityList/' + stateId)
        .then(result => {
            return result.json();
        }).catch(error => document.getElementById(CITY_OPTION_ID).innerHtml = '');
}

async function getSubCategories(categoryId) {
    let apiUrlPath = 'subCategoryList/' + categoryId;
    if (categoryId == null || categoryId == "" || categoryId == "-1")
        apiUrlPath = 'allSubCategoryList/';
    return fetch(ajaxAPILink + apiUrlPath)
        .then(result => {
            return result.json();
        }).catch(error => document.getElementById(SUB_CATEGORY_OPTION_ID).innerHtml = '');
}

async function getProducts(subCategoryId) {
    let apiUrlPath = 'productList/' + subCategoryId;
    if (subCategoryId == null || subCategoryId == "" || subCategoryId == "-1") {
        apiUrlPath = 'allProductList/';
    }
    return fetch(ajaxAPILink + apiUrlPath)
        .then(result => {
            return result.json();
        }).catch(error => document.getElementById(CATEGORY_OPTION_ID).innerHtml = '');
}

//functions for updating data dynamically
function updateCities(option) {
    let dataCities;
    let stateId = option.value;

    getCities(stateId).then(data => {
        dataCities = data;
        let len = Object.keys(dataCities).length;

        let selectCityOptions = document.getElementById(CITY_OPTION_ID);
        selectCityOptions.innerHTML = '';
        for (let i = 0; i < len; i++) {
            let cityId = dataCities[i].id;
            let cityName = dataCities[i].cityName;
            selectCityOptions.innerHTML += '<option value="' + cityId + '">' + cityName + '</option>';
        }
    });
}

function updateSubCategories(option) {
    let dataSubCategories;
    let categoryId = option.value;

    getSubCategories(categoryId).then(data => {
        dataSubCategories = data;
        let len = Object.keys(dataSubCategories).length;

        let selectSubCategoryOption = document.getElementById(SUB_CATEGORY_OPTION_ID);
        selectSubCategoryOption.innerHTML = '';
        for (let i = 0; i < len; i++) {
            let subCategoryId = dataSubCategories[i].id;
            let subCategoryName = dataSubCategories[i].subCategoryName;
            selectSubCategoryOption.innerHTML += '<option value="' + subCategoryId + '">' + subCategoryName + '</option>';
        }
    });
}

function updateProducts(option) {
    let dataProducts;
    let subCategoryId = option.value;

    getProducts(subCategoryId).then(data => {
        dataProducts = data;
        let len = Object.keys(dataProducts).length;

        let selectProductOption = document.getElementById(PRODUCT_OPTION_ID);
        selectProductOption.innerHTML = '';
        for (let i = 0; i < len; i++) {
            let productId = dataProducts[i].id;
            let productName = dataProducts[i].productName;
            selectProductOption.innerHTML += '<option value="' + productId + '">' + productName + '</option>';
        }
    });
}

function renderChanges(selectType) {
    let categorySection = document.getElementById('categorySection');
    let selectCategoryOption = document.getElementById('selectCategoryOption');

    let subCategorySection = document.getElementById('subCategorySection');
    let selectSubCategoryOption = document.getElementById('selectSubCategoryOption');

    let productSection = document.getElementById('productSection');
    let selectProductOption = document.getElementById('selectProductOption');

    switch (selectType.id) {
        case 'category':
            categorySection.style.display = 'block';
            subCategorySection.style.display = 'block';
            productSection.style.display = 'block';
            break;
        case 'subCategory' :
            categorySection.style.display = 'none';
            selectCategoryOption.value = "";
            subCategorySection.style.display = 'block';
            productSection.style.display = 'block';
            break;
        case 'product' :
            categorySection.style.display = 'none';
            selectCategoryOption = "";
            subCategorySection.style.display = 'none';
            selectSubCategoryOption = "";
            productSection.style.display = 'block';
            break;
    }
}