var admin = require("firebase-admin");

var serviceAccount = require("./proen2020itemdata-firebase-adminsdk-vgkqc-b4f381b8fa");

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
  databaseURL: "https://datatestproject-44b09.firebaseio.com"
});

const db = admin.firestore()
const fs = require('fs')
const csvSync = require('csv-parse/lib/sync')
const file = 'TestMicroWaveFix.csv' //インポートしたいcsvファイルをindex.jsと同じ階層に入れてください
let data = fs.readFileSync(file) //csvファイルの読み込み
let responses = csvSync(data)//parse csv
let objects = [] //この配列の中にパースしたcsvの中身をkey-value形式で入れていく。

responses.forEach(function(response) {
  objects.push({
    _id:                    response[0],
    itemName:              response[1],
    modelNumber:               response[2],
    itemMaker:               response[3],
    itemId:               response[4],
    releaseDate:               response[5],
    itemColor:             response[6],
    itemSizeX:               response[7],
    itemSizeY:               response[8],
    itemSizeZ:               response[9],
    itemSubSizeX:               response[10],
    itemSubSizeY:               response[11],
    itemSubSizeZ:               response[12],
    itemPrice:               response[13],
    itemUrl:          response[14],
    itemExplanation:          response[15]
  })
}, this)

objects.shift();//ヘッダもインポートされてしまうから、配列の一番最初のelementは削除します。

return db.runTransaction(function(transaction){
  return transaction.get(db.collection('MicroWaveData')).then(doc => {
    objects.forEach(function(object){
      if(object["_id"] != ""){
        let id = object["_id"]
        delete object._id
        transaction.set(db.collection('MicroWaveData').doc(id), object)
      }else{
        delete object._id
        transaction.set(db.collection('MicroWaveData').doc(), object)
      }
    }, this)
  })
}).then(function(){
  console.log("success")
}).catch(function(error){
  console.log('Failed', error)
})
