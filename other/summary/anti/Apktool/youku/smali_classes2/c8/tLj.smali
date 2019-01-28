.class public Lc8/tLj;
.super Landroid/os/Handler;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KLj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;


# direct methods
.method constructor <init>(Lc8/KLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KLj;

    .prologue
    .line 1487
    iput-object p1, p0, Lc8/tLj;->this$0:Lc8/KLj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1490
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1492
    .local v2, "start":J
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1579
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1580
    return-void

    .line 1494
    :pswitch_0
    invoke-static {}, Lc8/VLj;->exit()V

    goto :goto_0

    .line 1498
    :pswitch_1
    invoke-static {}, Lc8/dzk;->getInstance()Lc8/dzk;

    move-result-object v4

    iget-object v5, p0, Lc8/tLj;->this$0:Lc8/KLj;

    invoke-virtual {v4, v5}, Lc8/dzk;->init(Landroid/app/Application;)V

    goto :goto_0

    .line 1501
    :pswitch_2
    iget-object v4, p0, Lc8/tLj;->this$0:Lc8/KLj;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.youku.intent.action.Boot_Finished"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.youku.permission.Boot_Finished"

    invoke-virtual {v4, v5, v6}, Lc8/KLj;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1504
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v4

    sget-object v5, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeLaunch:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v4, v5}, Lc8/KB;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    .line 1506
    new-instance v4, Lc8/dGk;

    invoke-direct {v4}, Lc8/dGk;-><init>()V

    const-class v5, Lc8/aGk;

    invoke-virtual {v4, v5}, Lc8/dGk;->registerCalendarJsBridge(Ljava/lang/Class;)V

    .line 1507
    iget-object v4, p0, Lc8/tLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/KLj;->access$1600(Lc8/KLj;)V

    .line 1508
    new-instance v4, Lc8/rLj;

    invoke-direct {v4, p0}, Lc8/rLj;-><init>(Lc8/tLj;)V

    invoke-static {v4}, Lc8/uAo;->isVip(Lc8/kAo;)V

    goto :goto_0

    .line 1521
    :pswitch_3
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1522
    invoke-static {}, Lc8/llh;->getInstance()Lc8/llh;

    move-result-object v4

    invoke-virtual {v4}, Lc8/llh;->doRequestData()V

    .line 1525
    :cond_0
    invoke-static {}, Lc8/HTh;->setDefaultNoneAcceptCookieManager()V

    goto :goto_0

    .line 1529
    :pswitch_4
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1530
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ben;->startNewTask()V

    .line 1533
    :cond_1
    invoke-static {}, Lc8/Phn;->syncPreCache()V

    .line 1535
    const-string/jumbo v4, "active_time"

    invoke-static {v4}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1536
    sput-object v4, Lc8/VLj;->ACTIVE_TIME:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 1537
    const-string/jumbo v4, "active_time"

    sget-wide v6, Lc8/VLj;->LAUNCH_TIME:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    invoke-static {}, Lc8/llh;->appInitial()V

    .line 1541
    :cond_2
    invoke-static {}, Lc8/yhn;->onStartCollect()V

    .line 1543
    const-string/jumbo v4, "old_ykpid"

    invoke-static {v4}, Lc8/Iin;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1544
    .local v1, "packagePid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1546
    iget-object v4, p0, Lc8/tLj;->this$0:Lc8/KLj;

    sget-object v5, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lc8/KLj;->onVivoPidEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UT \u4e0a\u62a5 vivo pid \u6539\u53d8\u4e8b\u4ef6, old:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", changed pid: >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1551
    :cond_3
    const-string/jumbo v4, "old_ykchannelid"

    invoke-static {v4}, Lc8/Iin;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1552
    .local v0, "packageChannelId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1554
    iget-object v4, p0, Lc8/tLj;->this$0:Lc8/KLj;

    sget-object v5, Lc8/Bfh;->Wireless_channel_id:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lc8/KLj;->onVivoChannelIdEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UT \u4e0a\u62a5 vivo channel id \u6539\u53d8\u4e8b\u4ef6, old:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", changed pid: >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/Bfh;->Wireless_channel_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1562
    :cond_4
    iget-object v4, p0, Lc8/tLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/KLj;->access$1700(Lc8/KLj;)V

    .line 1564
    new-instance v4, Lc8/sLj;

    invoke-direct {v4, p0}, Lc8/sLj;-><init>(Lc8/tLj;)V

    invoke-static {v4}, Lc8/Vcf;->execute(Ljava/lang/Runnable;)V

    .line 1573
    iget-object v4, p0, Lc8/tLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/zPg;->getInstance(Landroid/content/Context;)Lc8/zPg;

    move-result-object v4

    invoke-virtual {v4}, Lc8/zPg;->fetchFontResources()V

    goto/16 :goto_0

    .line 1576
    .end local v0    # "packageChannelId":Ljava/lang/String;
    .end local v1    # "packagePid":Ljava/lang/String;
    :pswitch_5
    iget-object v4, p0, Lc8/tLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/KLj;->access$500(Lc8/KLj;)V

    goto/16 :goto_0

    .line 1492
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
