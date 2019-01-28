.class public Lc8/idc;
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
    .line 1242
    iput-object p1, p0, Lc8/idc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1246
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1248
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x0

    .line 1249
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    sget-object v6, Lc8/odc;->$SwitchMap$com$alibaba$verificationsdk$ui$VerifyType:[I

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1200()Lcom/alibaba/verificationsdk/ui/VerifyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/verificationsdk/ui/VerifyType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1277
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1278
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "error"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1279
    const v6, 0x186af

    iput v6, v4, Landroid/os/Message;->what:I

    .line 1280
    sget-object v6, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_SERVER:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    invoke-virtual {v6}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ordinal()I

    move-result v6

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 1281
    const-string/jumbo v6, "code"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 1292
    :goto_1
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    iget-object v6, p0, Lc8/idc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v6, v6, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerSMSorCallRequest:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1301
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 1251
    :pswitch_0
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1252
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3500()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3600()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3700()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    const-string/jumbo v6, "info_token"

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3800()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3900()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1256
    const-string/jumbo v6, "HOSTENV"

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3900()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    :cond_0
    iget-object v6, p0, Lc8/idc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v6}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$700(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;

    move-result-object v6

    const-string/jumbo v7, "alibaba.security.jaq.captcha.send"

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2800()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc

    invoke-interface {v6, v7, v3, v8, v9}, Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;->noCaptchaForwardAuth(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1261
    goto :goto_0

    .line 1264
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1265
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3600()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3700()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    const-string/jumbo v6, "info_token"

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3800()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3900()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1268
    const-string/jumbo v6, "HOSTENV"

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3900()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    :cond_1
    iget-object v6, p0, Lc8/idc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v6}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$700(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;

    move-result-object v6

    const-string/jumbo v7, "alibaba.security.jaq.captcha.audio.send"

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$2800()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc

    invoke-interface {v6, v7, v3, v8, v9}, Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;->noCaptchaForwardAuth(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1283
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v6, "send_status"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1284
    .local v1, "isSuccess":I
    if-lez v1, :cond_3

    .line 1285
    const v6, 0x186ae

    iput v6, v4, Landroid/os/Message;->what:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1293
    .end local v1    # "isSuccess":I
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1295
    const v6, 0x186af

    iput v6, v4, Landroid/os/Message;->what:I

    .line 1296
    sget-object v6, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_CLIENT:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    invoke-virtual {v6}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ordinal()I

    move-result v6

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 1297
    const v6, 0xc350

    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 1298
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1300
    iget-object v6, p0, Lc8/idc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v6, v6, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerSMSorCallRequest:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1287
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isSuccess":I
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_3
    const v6, 0x186af

    :try_start_3
    iput v6, v4, Landroid/os/Message;->what:I

    .line 1288
    sget-object v6, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ERROR_FROM_BUSSINESS:Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    invoke-virtual {v6}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ordinal()I

    move-result v6

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 1289
    iput v1, v4, Landroid/os/Message;->arg2:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1300
    .end local v1    # "isSuccess":I
    .end local v2    # "json":Lorg/json/JSONObject;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lc8/idc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v7, v7, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerSMSorCallRequest:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v6

    .line 1249
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
