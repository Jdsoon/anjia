import { Injectable } from '@angular/core';

import {HttpClient} from '@angular/common/http';

@Injectable()
export class PositionsService {

  url:string='http://115.159.104.128:3000/houses';
  constructor(
    private http:HttpClient
  ) {

  }
  addHouse(user,callback){
    this.http.post(this.url+'/addHouse',user).subscribe(
      function (result) {
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }
  //查询看房信息
  getArrInfo(house,callback){
    this.http.post(this.url+'/getArrInfo',house).subscribe(
      function (result) {
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }

  //修改看房信息
  editHouse(house,callback){
    this.http.post(this.url+'/editHouse',house).subscribe(
      function (result) {
        console.log(result)
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }
  //业主同意看房
  agreeWatch(arrange,callback){
    this.http.post(this.url+'/agreeWatch',arrange).subscribe(
      function (result) {
        console.log(result)
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }
  //添加看房信息
  addArrInfo(arrInfo,callback){
    this.http.post(this.url+'/addArrInfo',arrInfo).subscribe(
      function (result) {
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }

  //提出看房申请
  askWatch(arrInfo,callback){
    this.http.post(this.url+'/askWatch',arrInfo).subscribe(
      function (result) {
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }
  //是否看房申请
  isAsk(arrInfo,callback){
    this.http.post(this.url+'/isAsk',arrInfo).subscribe(
      function (result) {
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }
//是否关注
  isFocus(focusInfo,callback){
    this.http.post(this.url+'/isFocus',focusInfo).subscribe(
      function (result) {
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }
//关注
  focus(focusInfo,callback){
    this.http.post(this.url+'/focus',focusInfo).subscribe(
      function (result) {
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }

  //取消关注

  unFocus(focusInfo,callback){
    this.http.post(this.url+'/unFocus',focusInfo).subscribe(
      function (result) {
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }

  //删除我的房源
  delHouse(houseInfo,callback){
    this.http.post(this.url+'/delHouse',houseInfo).subscribe(
      function (result) {
        console.log("服务"+result[0])
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }
  agree(arrange,callback){
    this.http.post(this.url+'/agree',arrange).subscribe(
      function (result) {
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }

  getFocusNum(houseid,callback){
    this.http.post(this.url+'/getFocusNum',houseid).subscribe(
      function (result) {
        callback(result);
      },
      function (error) {
        console.log(error.message);
      }
    )
  }

  getAllHouses(callback){
    this.http.get(this.url).subscribe(function (result) {
      callback(result);
    })
  }
  //获取头条信息
  getNews(callback){
    this.http.get(this.url+'/getNews').subscribe(function (result) {
      callback(result);
    })
  }

//通过id获取头条信息
  getNewsById(news,callback){
    this.http.post(this.url+'/getNewsById',news).subscribe(function (result) {
      callback(result);
    })
  }



  getHouseById(houseId,callback){
    this.getAllHouses(function (houses) {
      let ho=houses.filter(function (item,index) {
         if(item.houseId==houseId){
           return item;
         }
      });
      callback(ho);

    })
  }

}
