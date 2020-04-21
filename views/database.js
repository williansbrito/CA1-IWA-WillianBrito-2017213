const mongoose = require('mongoose'); //requere mongodb

mongoose.connect('mongodb+srv://user:1234@cluster0-w11hc.mongodb.net/test?retryWrites=true&w=majority') // connecting to mongodb
    .then(() => console.log('DB is connected'))// show it on console if its works
    .catch(e => console.log(e));// catch error if don't connect