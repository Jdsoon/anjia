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

//获取看房记录
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


//获取头条
router.get('/getNews', function(req, res, next) {

        console.log("getNews:houseId");
        housesDao.getNews(function (result) {
            console.log("getNews");
            if(result.length==0){
                res.json({"stateCode":30});
            }else{
                res.json(result);
            }
        })



});


//添加看房信息
router.post('/addArrInfo', function(req, res, next) {
    var arrInfo = req.body;
    arrInfo.adate = new Date();
    console.log(arrInfo);
    if(arrInfo){
        console.log(arrInfo);
        housesDao.addArrInfo(arrInfo,function (result) {
            console.log("addArrInfo");
            if(result.affectedRows==1){
                res.json({"stateCode":15});
            }else{
                res.json({"stateCode":16});            }
        })
    }


});
//用户提出看房申请
router.post('/askWatch', function(req, res, next) {
    var arrInfo = req.body;

    console.log(arrInfo);
    if(arrInfo){
        console.log(arrInfo);
        housesDao.askWatch(arrInfo,function (result) {
            console.log("addArrInfo");
            if(result.affectedRows==1){
                res.json({"stateCode":39});
            }else{
                res.json({"stateCode":40});
            }
        })
    }
});

//业主同意看房申请
router.post('/agreeWatch', function(req, res, next) {
    var arrInfo = req.body;

    console.log(arrInfo);
    if(arrInfo){
        console.log(arrInfo);
        housesDao.agreeWatch(arrInfo,function (result) {
            console.log("agreeWatch");
            if(result.affectedRows==1){
                res.json({"stateCode":41});
            }else{
                res.json({"stateCode":42});
            }
        })
    }
});


//添加房源
router.post('/addHouse', function(req, res, next) {
    var house = req.body;
    house.publishTime = new Date();
    console.log(house.publishTime);
    if(house){
        housesDao.addHouse(house,function (result) {

            if(result.affectedRows==1){
                res.json({"stateCode":11});
            }else{
                res.json({"stateCode":12});
            }
        })
    }


});

//修改房源信息
router.post('/editHouse', function(req, res, next) {
    var house = req.body;
    console.log(house);
    if(house){
        housesDao.editHouse(house,function (result) {

            if(result.affectedRows==1){
                res.json({"stateCode":31});
            }else{
                res.json({"stateCode":32});
            }
        })
    }


});
//获取关注人数
router.post('/getFocusNum', function(req, res, next) {
    var house = req.body;
    if(house){
        console.log("getFocusNum:houseId");
        housesDao.getFocusNum(house.houseId,function (result) {
            console.log("getFocusNum");
            if(result.length==0){
                res.json({"stateCode":14});
            }else{
                res.json(result);
            }
        })
    }
});

//点赞
router.post('/agree', function(req, res, next) {
    var arrangeInfo = req.body;
    console.log(arrangeInfo);
    if(arrangeInfo){
        console.log("agree");
        housesDao.agree(arrangeInfo,function (result) {
            console.log("agree");
            if(result.affectedRows==1){
                res.json({"stateCode":17});
            }else{
                res.json({"stateCode":18});
            }
        })
    }
});


//关注
router.post('/focus', function(req, res, next) {
    var focusInfo = req.body;
    console.log(focusInfo);
    if(focusInfo){
        console.log("focus");
        housesDao.focus(focusInfo,function (result) {
            if(result.affectedRows==1){
                res.json({"stateCode":21});
            }else{
                res.json({"stateCode":22});
            }
        })
    }
});

//判断当前用户是否关注该房源
router.post('/isFocus', function(req, res, next) {
    var focusInfo = req.body;
    console.log(focusInfo);
    if(focusInfo){
        console.log("focus");
        housesDao.isFocus(focusInfo,function (result) {
            console.log(result)
            if(result[0].num>0){
                res.json({"stateCode":33});
            }else{
                res.json({"stateCode":34});
            }
        })
    }
});
//判断当前用户是否预约看房
router.post('/isAsk', function(req, res, next) {
    var focusInfo = req.body;
    console.log(focusInfo);
    if(focusInfo){
        console.log("focus");
        housesDao.isAsk(focusInfo,function (result) {
            console.log(result)
            if(result[0].num>0){
                res.json({"stateCode":43});
            }else{
                res.json({"stateCode":44});
            }
        })
    }
});
//取消关注
router.post('/unFocus', function(req, res, next) {
    var focusInfo = req.body;
    console.log(focusInfo);
    if(focusInfo){
        console.log("unfocus");
        housesDao.unFocus(focusInfo,function (result) {
            if(result.affectedRows==1){
                res.json({"stateCode":23});
            }else{
                res.json({"stateCode":24});
            }
        })
    }
});


//删除房源
router.post('/delHouse', function(req, res, next) {
    var houseInfo = req.body;
    console.log(houseInfo);
    if(houseInfo){
        console.log("delHouse");
        housesDao.delHouse(houseInfo,function (result) {
            if(result.affectedRows==1){
                res.json({"stateCode":27});
            }else{
                res.json({"stateCode":28});
            }
        })
    }
});
module.exports = router;
