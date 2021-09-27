// CONTOH ILUSTRASI
// https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/academy/dos:77f743e4b1fe43f96c74066057e9000820210921112704.png

class Product {
    constructor() {
        if (this.constructor.name === 'Product') {
            throw new Error(`${this.constructor.name} is abstract class!`);
        }
    }
 
    getName() {
        throw new Error('Method not implemented!');
    }
 
    /**
     * Function to get all of information about product
     */
    getProductInfo() {
        // some magic code
    }
}
 
class FoodProduct extends Product {
    constructor() {
        super();
 
        if (this.constructor.name === 'FoodProduct') {
            throw new Error(`${this.constructor.name} is abstract class!`);
        }
    }
 
    getExpiredDate() {
        throw new Error('Method not implemented!');
    }
}
 
class Vegetable extends FoodProduct {
    getExpiredDate() {
        return new Date();
    }
 
    getName() {
        return 'Broccoli';
    }
}

class Smartphone extends Product {
    getName() {
        return 'Samsung S10+ Limited Edition';
    }
}