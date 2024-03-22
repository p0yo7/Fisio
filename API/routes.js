const express = require('express');
const controller = require('./controller.js');
const router = express.Router();
// ROUTE GETS
router.get('/api/login/', controller.login);
router.get('/api/getProgressTherapist/', controller.getProgressTherapist);
router.get('/api/getProgressPatient/', controller.getProgressPatient);
// ROUTE POSTS
router.post('/api/createUser/', controller.createUser);

module.exports = router;