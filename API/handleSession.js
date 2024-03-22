function isValidSession(req){
    if (req.session && req.session.nowInMinutes) {
        const elapsedMinutes = Math.floor(Date.now() / 60e3) - req.session.nowInMinutes;
        return elapsedMinutes < 10;
    }
    return false;
}