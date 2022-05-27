const dotenv = require('dotenv');
dotenv.config({path : './config.env'});
console.log(process.env.NODE_ENV);
const app = require('./app');
const port = process.env.PORT || 1000;
app.listen(port, () => {
    console.log('Server is Up !!');
});