var mongoose = require( 'mongoose' );
var Schema   = mongoose.Schema;

var Todo = new Schema({
    user_id    : String,
    content    : String,
    updated_at : Date
});

mongoose.model( 'Todo', Todo );

var mongo_host = process.env.MONGO_PORT_27017_TCP_ADDR || 'localhost';

mongoose.connect( 'mongodb://' + mongo_host + '/express-todo' );