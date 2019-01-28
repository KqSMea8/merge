.class public Lc8/Asd;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dsd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventThread"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/os/Bundle;

.field final synthetic c:Lc8/Dsd;


# direct methods
.method public constructor <init>(Lc8/Dsd;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lc8/Asd;->c:Lc8/Dsd;

    const-string/jumbo v0, "EventRunable"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lc8/Asd;->a:Landroid/content/Context;

    iput-object p3, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "receiveType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->values()[Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_2

    :cond_1
    const-string/jumbo v1, "PushLogLightSC2559"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid receiverType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "PushLogLightSC2559"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call EventThread(ReceiveType cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_2
    sget-object v1, Lc8/xsd;->a:[I

    invoke-static {}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->values()[Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lc8/Asd;->c:Lc8/Dsd;

    iget-object v1, p0, Lc8/Asd;->a:Landroid/content/Context;

    iget-object v2, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "deviceToken"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lc8/Dsd;->onToken(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lc8/Asd;->c:Lc8/Dsd;

    iget-object v1, p0, Lc8/Asd;->a:Landroid/content/Context;

    iget-object v2, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "pushMsg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    const-string/jumbo v4, "deviceToken"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc8/Dsd;->onPushMsg(Landroid/content/Context;[BLjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lc8/Asd;->c:Lc8/Dsd;

    iget-object v1, p0, Lc8/Asd;->a:Landroid/content/Context;

    iget-object v2, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "pushState"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc8/Dsd;->onPushState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lc8/Asd;->c:Lc8/Dsd;

    iget-object v1, p0, Lc8/Asd;->a:Landroid/content/Context;

    iget-object v2, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "pushMsg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/Dsd;->onNotifyClickMsg(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lc8/Asd;->c:Lc8/Dsd;

    iget-object v1, p0, Lc8/Asd;->a:Landroid/content/Context;

    iget-object v2, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "pushNotifyId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    const-string/jumbo v4, "pushMsg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/Dsd;->onNotifyBtnClick(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "reportType"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    const-string/jumbo v2, "isReportSuccess"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lc8/Asd;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "reportExtra"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lc8/Asd;->c:Lc8/Dsd;

    iget-object v4, p0, Lc8/Asd;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v1, v2}, Lc8/Dsd;->onPluginRsp(Landroid/content/Context;IZLandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

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
