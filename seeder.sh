#!/bin/bash
HOST='https://cocoroiki-strapi.yumekiti.net'

# create families
curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "name": "田中"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/families'

# create app-users
curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "name": "ともこ",
        "email": "tomoko@gmail.com",
        "birth": "1991-06-27",
        "age": "32",
        "gender": "female",
        "last_login": "2023-07-04",
        "families": "1"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/app-users'

curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "name": "ゆうと",
        "email": "yuto@gmail.com",
        "birth": "2015-02-03",
        "age": "8",
        "gender": "male",
        "last_login": "2023-07-04",
        "families": "1"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/app-users'

curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "name": "よしえ",
        "email": "yoshie@gmail.com",
        "birth": "1965-11-29",
        "age": "58",
        "gender": "female",
        "last_login": "2023-07-04",
        "families": "1"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/app-users'

# update families
curl -XPUT -H "Content-type: application/json" -d '{
    "data": {
        "name": "田中",
        "kids": ["2"],
        "grandparents": ["3"]
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/families/1'

# create quest_kinds
curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "name": "お家"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/quest-kinds'

curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "name": "お外"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/quest-kinds'

# create quests
curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "content": "おさんぽにいこう！",
        "quest_kinds": ["2"]
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/quests'

curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "content": "ごはんをつくろう！",
        "quest_kinds": ["1"]
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/quests'

# create rewards
curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "content": "１０円玉もらえる",
        "name": "１０円",
        "point": "1",
        "user": ["1"],
        "kinds": "おかね"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/rewards'

curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "content": "好きなお菓子がもらえる",
        "name": "ガム",
        "point": "1",
        "user": ["1"],
        "kinds": "おやつ"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/rewards'

curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "content": "",
        "name": "50円",
        "point": "2",
        "user": ["1"],
        "kinds": "おかね"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/rewards'

curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "content": "クッキーがもらえる",
        "name": "クッキー",
        "point": "2",
        "user": ["1"],
        "kinds": "スイーツ"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/rewards'

curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "content": "",
        "name": "アイス",
        "point": "2",
        "user": ["1"],
        "kinds": "おやつ"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/rewards'

curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "content": "100円玉もらえる",
        "name": "100円",
        "point": "3",
        "user": ["1"],
        "kinds": "おかね"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/rewards'

curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "content": "",
        "name": "ケーキ",
        "point": "3",
        "user": ["1"],
        "kinds": "スイーツ"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/rewards'

curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "content": "",
        "name": "ミニカー",
        "point": "3",
        "user": ["1"],
        "kinds": "おもちゃ"
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/rewards'

# create trees
curl -XPOST -H "Content-type: application/json" -d '{
    "data": {
        "state": "1",
        "wateredAt": "2023-07-10",
        "parent": ["1"],
        "grandparent": ["3"]
    }
}' 'https://cocoroiki-strapi.yumekiti.net/api/trees'