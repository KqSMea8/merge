.class public Lc8/mVf;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Lc8/CVf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nVf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WXHttpListener"
.end annotation


# instance fields
.field private flag:Lcom/taobao/weex/common/WXRenderStrategy;

.field private instance:Lc8/nVf;

.field private jsonInitData:Ljava/lang/String;

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pageName:Ljava/lang/String;

.field private startRequestTime:J

.field final synthetic this$0:Lc8/nVf;

.field private traceId:I


# direct methods
.method private constructor <init>(Lc8/nVf;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;J)V
    .locals 4
    .param p2, "pageName"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .param p6, "startRequestTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1589
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1590
    iput-object p2, p0, Lc8/mVf;->pageName:Ljava/lang/String;

    .line 1591
    iput-object p3, p0, Lc8/mVf;->options:Ljava/util/Map;

    .line 1592
    iput-object p4, p0, Lc8/mVf;->jsonInitData:Ljava/lang/String;

    .line 1593
    iput-object p5, p0, Lc8/mVf;->flag:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 1594
    iput-wide p6, p0, Lc8/mVf;->startRequestTime:J

    .line 1595
    invoke-static {}, Lc8/mag;->nextId()I

    move-result v1

    iput v1, p0, Lc8/mVf;->traceId:I

    .line 1597
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    const-string/jumbo v1, "downloadBundleJS"

    invoke-static {p1}, Lc8/nVf;->access$700(Lc8/nVf;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v0

    .line 1599
    .local v0, "event":Lc8/kag;
    invoke-static {p1}, Lc8/nVf;->access$700(Lc8/nVf;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/kag;->iid:Ljava/lang/String;

    .line 1600
    const-string/jumbo v1, "Network"

    iput-object v1, v0, Lc8/kag;->tname:Ljava/lang/String;

    .line 1601
    const-string/jumbo v1, "B"

    iput-object v1, v0, Lc8/kag;->ph:Ljava/lang/String;

    .line 1602
    iget v1, p0, Lc8/mVf;->traceId:I

    iput v1, v0, Lc8/kag;->traceId:I

    .line 1603
    invoke-virtual {v0}, Lc8/kag;->submit()V

    .line 1605
    .end local v0    # "event":Lc8/kag;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lc8/nVf;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;JLc8/cVf;)V
    .locals 0
    .param p1, "x0"    # Lc8/nVf;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .param p6, "x5"    # J
    .param p8, "x6"    # Lc8/cVf;

    .prologue
    .line 1579
    invoke-direct/range {p0 .. p7}, Lc8/mVf;-><init>(Lc8/nVf;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;J)V

    return-void
.end method


# virtual methods
.method public onHeadersReceived(ILjava/util/Map;)V
    .locals 1
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1621
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lc8/mVf;->instance:Lc8/nVf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/mVf;->instance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lc8/mVf;->instance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v0

    invoke-interface {v0}, Lc8/OUf;->onHeadersReceived()V

    .line 1625
    :cond_0
    iget-object v0, p0, Lc8/mVf;->instance:Lc8/nVf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/mVf;->instance:Lc8/nVf;

    iget-object v0, v0, Lc8/nVf;->responseHeaders:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1628
    iget-object v0, p0, Lc8/mVf;->instance:Lc8/nVf;

    iget-object v0, v0, Lc8/nVf;->responseHeaders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1630
    :cond_1
    return-void
.end method

.method public onHttpFinish(Lc8/SXf;)V
    .locals 20
    .param p1, "response"    # Lc8/SXf;

    .prologue
    .line 1644
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->instance:Lc8/nVf;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->instance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->instance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v2

    invoke-interface {v2}, Lc8/OUf;->onHttpFinish()V

    .line 1649
    :cond_0
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1650
    const-string/jumbo v2, "downloadBundleJS"

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v3}, Lc8/nVf;->access$700(Lc8/nVf;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v15

    .line 1651
    .local v15, "event":Lc8/kag;
    move-object/from16 v0, p0

    iget v2, v0, Lc8/mVf;->traceId:I

    iput v2, v15, Lc8/kag;->traceId:I

    .line 1652
    const-string/jumbo v2, "Network"

    iput-object v2, v15, Lc8/kag;->tname:Ljava/lang/String;

    .line 1653
    const-string/jumbo v2, "E"

    iput-object v2, v15, Lc8/kag;->ph:Ljava/lang/String;

    .line 1654
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v15, Lc8/kag;->extParams:Ljava/util/Map;

    .line 1655
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->originalData:[B

    if-eqz v2, :cond_1

    .line 1656
    iget-object v2, v15, Lc8/kag;->extParams:Ljava/util/Map;

    const-string/jumbo v3, "BundleSize"

    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/SXf;->originalData:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    :cond_1
    invoke-virtual {v15}, Lc8/kag;->submit()V

    .line 1661
    .end local v15    # "event":Lc8/kag;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v2}, Lc8/nVf;->access$600(Lc8/nVf;)Lc8/OXf;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lc8/mVf;->startRequestTime:J

    sub-long/2addr v4, v10

    iput-wide v4, v2, Lc8/OXf;->networkTime:J

    .line 1662
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->extendParams:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 1663
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "actualNetworkTime"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1664
    .local v13, "actualNetworkTime":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v2}, Lc8/nVf;->access$600(Lc8/nVf;)Lc8/OXf;

    move-result-object v4

    instance-of v2, v13, Ljava/lang/Long;

    if-eqz v2, :cond_5

    check-cast v13, Ljava/lang/Long;

    .end local v13    # "actualNetworkTime":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    iput-wide v2, v4, Lc8/OXf;->actualNetworkTime:J

    .line 1665
    const-string/jumbo v2, "actualNetworkTime"

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v3}, Lc8/nVf;->access$600(Lc8/nVf;)Lc8/OXf;

    move-result-object v3

    iget-wide v4, v3, Lc8/OXf;->actualNetworkTime:J

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1667
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "pureNetworkTime"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1668
    .local v17, "pureNetworkTime":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v2}, Lc8/nVf;->access$600(Lc8/nVf;)Lc8/OXf;

    move-result-object v4

    move-object/from16 v0, v17

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_6

    check-cast v17, Ljava/lang/Long;

    .end local v17    # "pureNetworkTime":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    iput-wide v2, v4, Lc8/OXf;->pureNetworkTime:J

    .line 1669
    const-string/jumbo v2, "pureNetworkTime"

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v3}, Lc8/nVf;->access$600(Lc8/nVf;)Lc8/OXf;

    move-result-object v3

    iget-wide v4, v3, Lc8/OXf;->pureNetworkTime:J

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1671
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "connectionType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1672
    .local v14, "connectionType":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v2}, Lc8/nVf;->access$600(Lc8/nVf;)Lc8/OXf;

    move-result-object v2

    instance-of v3, v14, Ljava/lang/String;

    if-eqz v3, :cond_7

    check-cast v14, Ljava/lang/String;

    .end local v14    # "connectionType":Ljava/lang/Object;
    :goto_2
    iput-object v14, v2, Lc8/OXf;->connectionType:Ljava/lang/String;

    .line 1674
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "packageSpendTime"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1675
    .local v16, "packageSpendTime":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v2}, Lc8/nVf;->access$600(Lc8/nVf;)Lc8/OXf;

    move-result-object v4

    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_8

    check-cast v16, Ljava/lang/Long;

    .end local v16    # "packageSpendTime":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_3
    iput-wide v2, v4, Lc8/OXf;->packageSpendTime:J

    .line 1677
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "syncTaskTime"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1678
    .local v19, "syncTaskTime":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v2}, Lc8/nVf;->access$600(Lc8/nVf;)Lc8/OXf;

    move-result-object v4

    move-object/from16 v0, v19

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_9

    check-cast v19, Ljava/lang/Long;

    .end local v19    # "syncTaskTime":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_4
    iput-wide v2, v4, Lc8/OXf;->syncTaskTime:J

    .line 1680
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v3, "requestType"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 1681
    .local v18, "requestType":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v2}, Lc8/nVf;->access$600(Lc8/nVf;)Lc8/OXf;

    move-result-object v3

    move-object/from16 v0, v18

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v2, v18

    check-cast v2, Ljava/lang/String;

    :goto_5
    iput-object v2, v3, Lc8/OXf;->requestType:Ljava/lang/String;

    .line 1683
    const-string/jumbo v2, "network"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v2}, Lc8/nVf;->access$500(Lc8/nVf;)Lc8/HVf;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1684
    new-instance v6, Lc8/OXf;

    invoke-direct {v6}, Lc8/OXf;-><init>()V

    .line 1685
    .local v6, "performance":Lc8/OXf;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v2}, Lc8/nVf;->access$800(Lc8/nVf;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1687
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v2}, Lc8/nVf;->access$800(Lc8/nVf;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lc8/OXf;->args:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1692
    :cond_3
    :goto_6
    const-string/jumbo v2, "200"

    move-object/from16 v0, p1

    iget-object v3, v0, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1693
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSBUNDLE_DOWNLOAD:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lc8/OXf;->errCode:Ljava/lang/String;

    .line 1694
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->errorCode:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lc8/OXf;->appendErrMsg(Ljava/lang/CharSequence;)V

    .line 1695
    const-string/jumbo v2, "|"

    invoke-virtual {v6, v2}, Lc8/OXf;->appendErrMsg(Ljava/lang/CharSequence;)V

    .line 1696
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->errorMsg:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lc8/OXf;->appendErrMsg(Ljava/lang/CharSequence;)V

    .line 1704
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v2}, Lc8/nVf;->access$500(Lc8/nVf;)Lc8/HVf;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1705
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v2}, Lc8/nVf;->access$500(Lc8/nVf;)Lc8/HVf;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-virtual {v3}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "jsDownload"

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lc8/HVf;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/OXf;Ljava/util/Map;)V

    .line 1709
    .end local v6    # "performance":Lc8/OXf;
    .end local v18    # "requestType":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v2, "networkTime"

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/mVf;->this$0:Lc8/nVf;

    invoke-static {v3}, Lc8/nVf;->access$600(Lc8/nVf;)Lc8/OXf;

    move-result-object v3

    iget-wide v4, v3, Lc8/OXf;->networkTime:J

    invoke-static {v2, v4, v5}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1710
    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->originalData:[B

    if-eqz v2, :cond_e

    const-string/jumbo v2, "200"

    move-object/from16 v0, p1

    iget-object v3, v0, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1711
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->originalData:[B

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    .line 1712
    .local v9, "template":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/mVf;->this$0:Lc8/nVf;

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/mVf;->pageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/mVf;->options:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/mVf;->jsonInitData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/mVf;->flag:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual/range {v7 .. v12}, Lc8/nVf;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 1719
    .end local v9    # "template":Ljava/lang/String;
    :goto_8
    return-void

    .line 1664
    .restart local v13    # "actualNetworkTime":Ljava/lang/Object;
    :cond_5
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    .line 1668
    .end local v13    # "actualNetworkTime":Ljava/lang/Object;
    .restart local v17    # "pureNetworkTime":Ljava/lang/Object;
    :cond_6
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    .line 1672
    .end local v17    # "pureNetworkTime":Ljava/lang/Object;
    .restart local v14    # "connectionType":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v14, ""

    goto/16 :goto_2

    .line 1675
    .end local v14    # "connectionType":Ljava/lang/Object;
    .restart local v16    # "packageSpendTime":Ljava/lang/Object;
    :cond_8
    const-wide/16 v2, 0x0

    goto/16 :goto_3

    .line 1678
    .end local v16    # "packageSpendTime":Ljava/lang/Object;
    .restart local v19    # "syncTaskTime":Ljava/lang/Object;
    :cond_9
    const-wide/16 v2, 0x0

    goto/16 :goto_4

    .line 1681
    .end local v19    # "syncTaskTime":Ljava/lang/Object;
    .restart local v18    # "requestType":Ljava/lang/Object;
    :cond_a
    const-string/jumbo v2, ""

    goto/16 :goto_5

    .line 1689
    .restart local v6    # "performance":Lc8/OXf;
    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->pageName:Ljava/lang/String;

    iput-object v2, v6, Lc8/OXf;->args:Ljava/lang/String;

    goto/16 :goto_6

    .line 1697
    :cond_b
    const-string/jumbo v2, "200"

    move-object/from16 v0, p1

    iget-object v3, v0, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->originalData:[B

    if-eqz v2, :cond_c

    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->originalData:[B

    array-length v2, v2

    if-gtz v2, :cond_d

    .line 1698
    :cond_c
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSBUNDLE_DOWNLOAD:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lc8/OXf;->errCode:Ljava/lang/String;

    .line 1699
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lc8/OXf;->appendErrMsg(Ljava/lang/CharSequence;)V

    .line 1700
    const-string/jumbo v2, "|template is null!"

    invoke-virtual {v6, v2}, Lc8/OXf;->appendErrMsg(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1702
    :cond_d
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lc8/OXf;->errCode:Ljava/lang/String;

    goto/16 :goto_7

    .line 1713
    .end local v6    # "performance":Lc8/OXf;
    .end local v18    # "requestType":Ljava/lang/Object;
    :cond_e
    const-string/jumbo v2, "wx_user_intercept_error"

    move-object/from16 v0, p1

    iget-object v3, v0, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1714
    const-string/jumbo v2, "user intercept"

    invoke-static {v2}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    const-string/jumbo v3, "wx_user_intercept_error"

    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/SXf;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/nVf;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1717
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/mVf;->this$0:Lc8/nVf;

    const-string/jumbo v3, "wx_network_error"

    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/SXf;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/nVf;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public onHttpResponseProgress(I)V
    .locals 0
    .param p1, "loadedLength"    # I

    .prologue
    .line 1640
    return-void
.end method

.method public onHttpStart()V
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lc8/mVf;->instance:Lc8/nVf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/mVf;->instance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lc8/mVf;->instance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v0

    invoke-interface {v0}, Lc8/OUf;->onHttpStart()V

    .line 1617
    :cond_0
    return-void
.end method

.method public onHttpUploadProgress(I)V
    .locals 0
    .param p1, "uploadProgress"    # I

    .prologue
    .line 1635
    return-void
.end method

.method public setSDKInstance(Lc8/nVf;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;

    .prologue
    .line 1608
    iput-object p1, p0, Lc8/mVf;->instance:Lc8/nVf;

    .line 1609
    return-void
.end method
