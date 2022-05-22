layui.use(['table','layer'],function(){
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        table = layui.table;

var tableIns = table.render({
    id:'usersetTable'
    // 容器元素的ID属性值
    ,elem: '#usersetList'
    // 容器的高度 full-差值
    ,height: 'full-125'
    // 单元格最小的宽度
    ,cellMinWidth:95
    // 访问数据的URL（后台的数据接口）
    ,url: ctx + '/user/set'

    // 开启头部工具栏
    ,toolbar:'#toolbarDemo'
    // 表头
    ,cols: [[
        // field：要求field属性值与返回的数据中对应的属性字段名一致
        // title：设置列的标题
        // sort：是否允许排序（默认：false）
        // fixed：固定列
        {type:'checkbox', fixed:'center'}
        ,{field: 'id', title: '编号',  sort: true, fixed: 'left'}
        ,{field: 'chanceSource', title: '机会来源', align:'center'}
        ,{field: 'customerName', title: '客户名称', align:'center'}
        ,{field: 'cgjl', title: '成功几率', align:'center'}
        ,{field: 'overview', title: '概要', align:'center'}
        ,{field: 'linkMan', title: '联系人', align:'center'}
        ,{field: 'linkPhone', title: '联系号码', align:'center'}
        ,{field: 'description', title: '描述', align:'center'}
        ,{field: 'createMan', title: '创建人', align:'center'}
        ,{field: 'uname', title: '分配人', align:'center'}
        ,{field: 'assignTime', title: '分配时间', align:'center'}
        ,{field: 'createDate', title: '创建时间', align:'center'}
        ,{field: 'updateDate', title: '修改时间', align:'center'}
        ,{field: 'state', title: '分配状态', align:'center',templet: function (d) {
                // 调用函数，返回格式化的结果
                return formatState(d.state);
            }}
        ,{field: 'devResult', title: '开发状态', align:'center', templet: function (d) {
                // 调用函数，返回格式化的结果
                return formatDevResult(d.devResult);
            }}
        ,{title:'操作',templet:'#saleChanceListBar', fixed: 'right', align:'center', minWidth:150}
    ]]
});
}