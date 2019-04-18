<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>测试vue.js相关功能</title>
    <style>
        #wrap{
            margin: 30px auto;
            border: 1px solid #19A566;
            min-height: 500px;
        }
        .ge-input{
            width: 400px;
            height: 30px;
            border: 1px solid #6A6AFF;
        }
    </style>
</head>
<body>
    <div id="wrap">
        <p>{{message1}}</p>
        <p v-text="message2"></p>
        <button v-bind:title="message2">鼠标悬停</button>
        <button v-if="seen">是否显示</button>
        <ol>
            <li v-for="item in product">{{item.name}}</li>
        </ol>
        <button v-on:click="showMessage">显示提示信息</button>
        <input class="ge-input" type="text" v-model="message1">

        <ul>
            <user-item v-for="item in product" v-bind:todo="item" v-bind:key="item.id"></user-item>
        </ul>
    </div>
</body>
</html>
<script>
    Vue.component('user-item', {
        props: ['todo'],
        template: '<li>{{todo.name}}</li>'
    });

    var wrap = new Vue({
        el: '#wrap',
        data: {
            message1: 'Hello! I am learning Vue.js！',
            message2: '页面加载于'+new Date().toLocaleString(),
            seen: true,
            product: [
                {id:1, name:'香蕉'},
                {id:2, name:'雪梨'},
                {id:3, name:'西瓜'},
                {id:3, name:'菠萝'},
                {id:3, name:'其它好吃的水果'},
            ]
        },
        methods: {
            showMessage: function () {
                alert(this.message2)
            }
        }
    });

    window.vm = wrap;
</script>