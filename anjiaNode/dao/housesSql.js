/**
 * Created by lzhan on 2017/8/25.
 */
exports.sql={
    getAllHouses:'select * from housesinfo',
    getArrInfo:'select * from arrangeinfo  where houseId=?',
    getFocusNum:'select sum(houseId) from focusinfo where houseId = ?'
};