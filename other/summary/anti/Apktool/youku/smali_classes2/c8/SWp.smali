.class public Lc8/SWp;
.super Ljava/lang/Object;
.source "NotifManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UWp;->reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UWp;

.field final synthetic val$forceSendData:Z

.field final synthetic val$regId:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/UWp;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lc8/SWp;->this$0:Lc8/UWp;

    iput-object p2, p0, Lc8/SWp;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lc8/SWp;->val$regId:Ljava/lang/String;

    iput-boolean p4, p0, Lc8/SWp;->val$forceSendData:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 227
    :try_start_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v11, "reportDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "thirdTokenType"

    iget-object v2, p0, Lc8/SWp;->val$type:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string/jumbo v1, "token"

    iget-object v2, p0, Lc8/SWp;->val$regId:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string/jumbo v1, "appkey"

    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string/jumbo v1, "utdid"

    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v1, "NotifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "report,utdid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",regId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lc8/SWp;->val$regId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lc8/SWp;->val$type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 235
    .local v12, "reportJson":Lorg/json/JSONObject;
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 237
    .local v3, "data":[B
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v1, 0x0

    const-string/jumbo v2, "agooTokenReport"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 241
    .local v0, "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lc8/BWp;->getAccsConfigTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v8

    .line 242
    .local v8, "accsManager":Lcom/taobao/accs/IACCSManager;
    iget-boolean v1, p0, Lc8/SWp;->val$forceSendData:Z

    if-eqz v1, :cond_1

    .line 243
    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v8, v1, v0}, Lcom/taobao/accs/IACCSManager;->sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v9

    .line 247
    .local v9, "dataIdString":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const-string/jumbo v1, "NotifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportThirdPushToken,dataId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",regId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lc8/SWp;->val$regId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lc8/SWp;->val$type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    .end local v0    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .end local v3    # "data":[B
    .end local v8    # "accsManager":Lcom/taobao/accs/IACCSManager;
    .end local v9    # "dataIdString":Ljava/lang/String;
    .end local v11    # "reportDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "reportJson":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 245
    .restart local v0    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .restart local v3    # "data":[B
    .restart local v8    # "accsManager":Lcom/taobao/accs/IACCSManager;
    .restart local v11    # "reportDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "reportJson":Lorg/json/JSONObject;
    :cond_1
    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {v2}, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;-><init>()V

    invoke-interface {v8, v1, v0, v2}, Lcom/taobao/accs/IACCSManager;->sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .restart local v9    # "dataIdString":Ljava/lang/String;
    goto :goto_0

    .line 251
    .end local v0    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .end local v3    # "data":[B
    .end local v8    # "accsManager":Lcom/taobao/accs/IACCSManager;
    .end local v9    # "dataIdString":Ljava/lang/String;
    .end local v11    # "reportDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "reportJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 253
    .local v10, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    const v2, 0x101d2

    const-string/jumbo v4, "reportThirdPushToken"

    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    const-string/jumbo v1, "NotifManager"

    const-string/jumbo v2, "[report] is error"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v1, v2, v10, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
