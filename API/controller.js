const mysql = require('./db.js');

class MainController {
    async login(req, res) {
        const { user, password } = req.body;
        const regexInjection = /['\\"@./,=]/gi;
        if (regexInjection.test(user) || regexInjection.test(password)) {
            return res.status(400).json({ error: 'Invalid characters' });
        }
        if (user && password) {
            const sql = `select role from users where user = ? and password = ?`;
            pool.query(sql, [user, password], (error, results, fields) => {
                if (error) {
                    res.status(500).json("Internal error");
                }
                if (results[0].count > 0) {
                    req.session.user = user;
                    req.session.userType = results[0].role;
                    res.status(200).json({ message: 'Login successful'});
                }
            });
        } else {
            res.status(400).json({ error: 'Please provide all required data' });
        }
    }
    async createUser(req, res) {
        const { user, password } = req.body;
        const regexInjection = /['\\"@./,=]/gi;
        if (regexInjection.test(user) || regexInjection.test(password)) {
            return res.status(400).json({ error: 'Invalid characters' });
        }
        if (user && password) {
            const sql = `insert into users (user, password) values (?, ?)`;
            pool.query(sql, [user, password], (error, results, fields) => {
                if (error) {
                    res.status(500).json("Internal error");
                }
                res.status(200).json({ message: 'User created'});
            });
        } else {
            res.status(400).json({ error: 'Please provide all required data' });
        }
    };
    async getProgressTherapist(req, res){
        if (!req.session.user || checkSessionStatus(req) === false || req.session.userType !== 'therapist' || req.session.userType !== 'admin'){
            return res.status(401).json({ error: 'Unauthorized' });
        }
        //make sp for therapist to get all their patients' progress
        const sql = `select * from progress where user = ?`;
        const user = req.session.user;
        pool.query(sql, user, (error, results, fields) => {
            if (error) {
                res.status(500).json("Internal error");
            }
            res.status(200).json(results);
        });
    }
    async getProgressPatient(req, res){
        if (!req.session.user || checkSessionStatus(req) === false || req.session.userType !== 'patient' || req.session.userType !== 'admin'){
            return res.status(401).json({ error: 'Unauthorized' });
        }
        const { user } = req.body;
        const sql = `select * from progress where user = ?`;
        pool.query(sql, user, (error, results, fields) => {
            if (error) {
                res.status(500).json("Internal error");
            }
            res.status(200).json(results);
        });
    }
}

const mainController = new MainController();
module.exports = mainController;
