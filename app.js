const express = require('express');
const morgan = require('morgan');
const app = express();
const PORT = 3000;

app.use(morgan('tiny'));
app.use(express.static('public'));

app.listen(PORT, () => console.log(`Running on port ${PORT}`));