.class public Lc8/mdc;
.super Landroid/os/Handler;
.source "VerifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 1387
    iput-object p1, p0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v8, 0x186ba

    .line 1391
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1487
    :goto_0
    return-void

    .line 1393
    :pswitch_0
    new-instance v5, Ljava/lang/Thread;

    iget-object v6, p0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v6, v6, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestResRunnable:Ljava/lang/Runnable;

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1396
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 1397
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "md5"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1398
    .local v2, "md5":Ljava/lang/String;
    const-string/jumbo v5, "version"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1399
    .local v3, "newVersion":Ljava/lang/String;
    iget-object v5, p0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$4300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "version"

    const-string/jumbo v7, "0.0.0.0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1400
    .local v4, "version":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4, v3}, Lc8/Jdc;->isVersionUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1402
    const-string/jumbo v5, "VerifyActivity"

    const-string/jumbo v6, "new resource version is coming, upgrading now!"

    invoke-static {v5, v6}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    new-instance v5, Lc8/Fdc;

    const-string/jumbo v6, "url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v7}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Lc8/ldc;

    invoke-direct {v9, p0, v2, v3}, Lc8/ldc;-><init>(Lc8/mdc;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6, v7, v8, v9}, Lc8/Fdc;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lc8/Gdc;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lc8/Fdc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1463
    :cond_0
    iget-object v5, p0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v5, v5, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerResRequest:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1467
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "md5":Ljava/lang/String;
    .end local v3    # "newVersion":Ljava/lang/String;
    .end local v4    # "version":Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->values()[Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v5, v6

    .line 1468
    .local v0, "error_type":Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;
    sget-object v5, Lc8/odc;->$SwitchMap$com$alibaba$verificationsdk$ui$VerifyActivity$ERROR_TYPE:[I

    invoke-virtual {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1478
    :goto_1
    iget-object v5, p0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v5, v5, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerResRequest:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1470
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 1471
    .restart local v1    # "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "VerifyActivity"

    const-string/jumbo v6, "msg"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    const-string/jumbo v5, "VerifyActivity"

    const-string/jumbo v6, "sub_msg"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1475
    .end local v1    # "json":Lorg/json/JSONObject;
    :pswitch_4
    const-string/jumbo v6, "VerifyActivity"

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_2
    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v5, ""

    goto :goto_2

    .line 1481
    .end local v0    # "error_type":Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;
    :pswitch_5
    iget-object v5, p0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$4600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    .line 1482
    iget-object v5, p0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lc8/Odc;->setVisibility(I)V

    .line 1483
    iget-object v5, p0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Odc;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Odc;->stopRotationAnimation()V

    .line 1484
    iget-object v5, p0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1200()Lcom/alibaba/verificationsdk/ui/VerifyType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initUI(Lcom/alibaba/verificationsdk/ui/VerifyType;)V

    goto/16 :goto_0

    .line 1391
    .line 1468
    nop

    :pswitch_data_0
    .packed-switch 0x186b7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
