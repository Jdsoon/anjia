var express = require('express');
var router = express.Router();
var housesDao=require('./../dao/housesDAO').housesDao;

/* GET home page. */
router.get('/', function(req, res, next) {
  housesDao.getAllHouses(function (result) {
      console.log("houseRoute");
      if(result.length==0){
        res.json(null);
      }else{
        res.json(result);
      }
  })
});
//获取
router.post('/getArrInfo', function(req, res, next) {
    var house = req.body;
    if(house){
        console.log("getArrInfo:houseId"+house.houseId);
        housesDao.getArrInfo(house.houseId,function (result) {
            console.log("arrangeInfo");
            if(result.length==0){
                res.json(null);
            }else{
                res.json(result);
            }
        })
    }


});
router.post('/getFocusNum', function(req, res, next) {
    var house = req.body;
    if(house){
        console.log("getFocusNum:houseId"+house.houseId);
        housesDao.getFocusNum(house.houseId,function (result) {
            console.log("getFocusNum");
            if(result.length==0){
                res.json(null);
            }else{
                res.json(result);
            }
        })
    }


});

module.exports = router;
