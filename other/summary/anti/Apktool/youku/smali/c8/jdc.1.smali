.class public Lc8/jdc;
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
    .line 1309
    iput-object p1, p0, Lc8/jdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1313
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1315
    .local v5, "msg":Landroid/os/Message;
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1316
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "1"

    .line 1317
    .local v7, "type":Ljava/lang/String;
    sget-object v9, Lc8/odc;->$SwitchMap$com$alibaba$verificationsdk$ui$VerifyType:[I

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1200()Lcom/alibaba/verificationsdk/ui/VerifyType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/verificationsdk/ui/VerifyType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1325
    :goto_0
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3500()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3600()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3700()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$4000()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lc8/jdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v10}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    const/4 v0, 0x0

    .line 1329
    .local v0, "code":Ljava/lang/String;
    iget-object v9, p0, Lc8/jdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v9}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1400(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/EditText;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lc8/jdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v9}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1400(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1330
    iget-object v9, p0, Lc8/jdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v9}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1400(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1332
    :cond_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1333
    .local v8, "userInputCaptcha":Lorg/json/JSONObject;
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$4100()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1334
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$4200()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    const-string/jumbo v9, "info_token"

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3800()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3900()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1337
    const-string/jumbo v9, "HOSTENV"

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3900()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    :cond_1
    iget-object v9, p0, Lc8/jdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v9}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$700(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;

    move-result-object v9

    const-string/jumbo v10, "alibaba.security.jaq.captcha.verify"

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2800()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xc

    invoke-interface {v9, v10, v4, v11, v12}, Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;->noCaptchaForwardAuth(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1341
    .local v6, "result":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1342
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v9, "error"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1343
    const v9, 0x186a5

    iput v9, v5, Landroid/os/Message;->what:I

    .line 1344
    sget-object v9, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_SERVER:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    invoke-virtual {v9}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ordinal()I

    move-result v9

    iput v9, v5, Landroid/os/Message;->arg1:I

    .line 1345
    const-string/jumbo v9, "code"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Landroid/os/Message;->arg2:I

    .line 1356
    :goto_1
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    iget-object v9, p0, Lc8/jdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v9, v9, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerSMSorCallVerification:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1365
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "userInputCaptcha":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 1319
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "type":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    const-string/jumbo v7, "1"

    .line 1320
    goto/16 :goto_0

    .line 1322
    :pswitch_1
    const-string/jumbo v7, "2"

    goto/16 :goto_0

    .line 1347
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v8    # "userInputCaptcha":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v9, "verify_status"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1348
    .local v2, "isSuccess":I
    if-lez v2, :cond_3

    .line 1349
    const v9, 0x186a4

    iput v9, v5, Landroid/os/Message;->what:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1357
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "isSuccess":I
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "userInputCaptcha":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1358
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1359
    const v9, 0x186a5

    iput v9, v5, Landroid/os/Message;->what:I

    .line 1360
    sget-object v9, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_CLIENT:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    invoke-virtual {v9}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ordinal()I

    move-result v9

    iput v9, v5, Landroid/os/Message;->arg1:I

    .line 1361
    const v9, 0xc350

    iput v9, v5, Landroid/os/Message;->arg2:I

    .line 1362
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1364
    iget-object v9, p0, Lc8/jdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v9, v9, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerSMSorCallVerification:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1351
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v2    # "isSuccess":I
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    .restart local v8    # "userInputCaptcha":Lorg/json/JSONObject;
    :cond_3
    const v9, 0x186a5

    :try_start_3
    iput v9, v5, Landroid/os/Message;->what:I

    .line 1352
    sget-object v9, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_BUSSINESS:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    invoke-virtual {v9}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ordinal()I

    move-result v9

    iput v9, v5, Landroid/os/Message;->arg1:I

    .line 1353
    iput v2, v5, Landroid/os/Message;->arg2:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1364
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "isSuccess":I
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "userInputCaptcha":Lorg/json/JSONObject;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lc8/jdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v10, v10, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerSMSorCallVerification:Landroid/os/Handler;

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v9

    .line 1317
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
