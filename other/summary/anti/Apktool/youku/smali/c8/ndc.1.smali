.class public Lc8/ndc;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1498
    iput-object p1, p0, Lc8/ndc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1502
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1504
    .local v5, "msg":Landroid/os/Message;
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1505
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$4700()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "android"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    iget-object v7, p0, Lc8/ndc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v7}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1508
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v0, "xhdpi"

    .line 1509
    .local v0, "densityDpi":Ljava/lang/String;
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v7, :sswitch_data_0

    .line 1532
    :goto_0
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$4800()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$4900()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const-string/jumbo v7, "info_token"

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3800()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3900()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1536
    const-string/jumbo v7, "HOSTENV"

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3900()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    :cond_0
    iget-object v7, p0, Lc8/ndc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v7}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$700(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;

    move-result-object v7

    const-string/jumbo v8, "alibaba.security.jaq.resource.fetch"

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2800()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xc

    invoke-interface {v7, v8, v4, v9, v10}, Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;->noCaptchaForwardAuth(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1538
    .local v6, "result":Ljava/lang/String;
    const-string/jumbo v7, "VerifyActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "get resource result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1540
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "error"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1541
    const v7, 0x186b9

    iput v7, v5, Landroid/os/Message;->what:I

    .line 1542
    sget-object v7, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_SERVER:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    invoke-virtual {v7}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ordinal()I

    move-result v7

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 1546
    :goto_1
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    iget-object v7, p0, Lc8/ndc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v7, v7, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerResRequest:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1554
    .end local v0    # "densityDpi":Ljava/lang/String;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "result":Ljava/lang/String;
    :goto_2
    return-void

    .line 1511
    .restart local v0    # "densityDpi":Ljava/lang/String;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_0
    :try_start_1
    const-string/jumbo v0, "ldpi"

    .line 1512
    goto/16 :goto_0

    .line 1514
    :sswitch_1
    const-string/jumbo v0, "mdpi"

    .line 1515
    goto/16 :goto_0

    .line 1517
    :sswitch_2
    const-string/jumbo v0, "hdpi"

    .line 1518
    goto/16 :goto_0

    .line 1520
    :sswitch_3
    const-string/jumbo v0, "xhdpi"

    .line 1521
    goto/16 :goto_0

    .line 1523
    :sswitch_4
    const-string/jumbo v0, "xxhdpi"

    .line 1524
    goto/16 :goto_0

    .line 1526
    :sswitch_5
    const-string/jumbo v0, "xxxhdpi"

    .line 1527
    goto/16 :goto_0

    .line 1529
    :sswitch_6
    const-string/jumbo v0, "tv"

    goto/16 :goto_0

    .line 1544
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_1
    const v7, 0x186b8

    iput v7, v5, Landroid/os/Message;->what:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1547
    .end local v0    # "densityDpi":Ljava/lang/String;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1548
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1549
    const v7, 0x186b9

    iput v7, v5, Landroid/os/Message;->what:I

    .line 1550
    sget-object v7, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_CLIENT:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    invoke-virtual {v7}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ordinal()I

    move-result v7

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 1551
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1553
    iget-object v7, p0, Lc8/ndc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v7, v7, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerResRequest:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lc8/ndc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v8, v8, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerResRequest:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v7

    .line 1509
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_6
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
        0x280 -> :sswitch_5
    .end sparse-switch
.end method
