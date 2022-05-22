
<!DOCTYPE html>
<html>
<head>
    <title>客户开发计划管理</title>
    <#include "../common.ftl">
</head>
<body class="childrenBody">
<div class="layui-col-md12">
    <div class="layui-card">
        <div class="layui-card-body">
            <form class="layui-form" >

                <#-- 营销机会的ID -->
                <input name="id" type="hidden" value="${(user.id)!}"/>

                <div class="layui-form-item layui-row">
                    <div class="layui-col-xs6">
                        <label class="layui-form-label">用户姓名</label>
                        <div class="layui-input-block">
                            <input type="text" class="layui-input"
                                   name="customerName" id="customerName"  value="${(user.trueName)!}" readonly="readonly">
                        </div>
                    </div>
                    <div class="layui-col-xs6">
                        <label class="layui-form-label">email</label>
                        <div class="layui-input-block">
                            <input type="text" class="layui-input"
                                   name="chanceSource" id="chanceSource" value="${(user.email)!}" readonly="readonly">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item layui-row">
                    <div class="layui-col-xs6">
                        <label class="layui-form-label">电话号码</label>
                        <div class="layui-input-block">
                            <input type="text" class="layui-input"
                                   name="linkMan"  lay-verify="required"  value="${(user.phone)!}" readonly="readonly">
                        </div>
                    </div>
                    <div class="layui-col-xs6">
                        <label class="layui-form-label">联系电话</label>
                        <div class="layui-input-block">
                            <input type="text" class="layui-input"
                                   lay-verify="phone" name="linkPhone" value="${(saleChance.linkPhone)!}" id="phone" readonly="readonly">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item layui-row">
                    <div class="layui-col-xs6">
                        <label class="layui-form-label">概要</label>
                        <div class="layui-input-block">
                            <input type="text" class="layui-input"
                                   name="overview" value="${(saleChance.overview)!}" id="phone"  readonly="readonly">
                        </div>
                    </div>
                    <div class="layui-col-xs6">
                        <label class="layui-form-label">成功几率(%)</label>
                        <div class="layui-input-block">
                            <input type="text" class="layui-input"
                                   name="cgjl" value="${(saleChance.cgjl)!}"  readonly="readonly">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="layui-col-md12">
    <table id="cusDevPlanList" class="layui-table"  lay-filter="cusDevPlans"></table>
</div>



<script type="text/javascript" src="${ctx}/js/cusDevPlan/cus.dev.plan.data.js"></script>
</body>
</html>