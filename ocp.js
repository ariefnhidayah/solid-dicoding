// ILUSTRASI
// https://d17ivq9b7rppb3.cloudfront.net/original/academy/2021070918035341d048b1157014d35c310d532ea5db36.jpeg

class Cinema {
    constructor(price) {
        if (this.constructor.name === 'Cinema') {
            throw new Error(`${this.constructor.name} is abstract class!`);
        }

        this.price = price;
    }

    calculateAdminFee() {
        throw new Error('Method not implemented!');
    }
}

class StandardCinema extends Cinema {
    calculateAdminFee() {
        return (this.price * 10) / 100;
    }
}

class DeluxeCinema extends Cinema {
    calculateAdminFee() {
        return (this.price * 12) / 100;
    }
}

class PremiumCinema extends Cinema {
    calculateAdminFee() {
        return (this.price * 20) / 100;
    }
}

const main = () => {
    const standardCinema = new StandardCinema(100);
    const adminFee = standardCinema.calculateAdminFee();
    console.log(adminFee);
}

main();