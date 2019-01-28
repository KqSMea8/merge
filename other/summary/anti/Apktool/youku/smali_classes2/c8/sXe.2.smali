.class public Lc8/sXe;
.super Lcom/taobao/accs/base/AccsAbstractDataListener;
.source "RequestListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestListener"

.field public static mAgooBindCache:Lc8/rXe;


# instance fields
.field public mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/lXe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/taobao/accs/base/AccsAbstractDataListener;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/sXe;->mListeners:Ljava/util/Map;

    .line 41
    sget-object v0, Lc8/sXe;->mAgooBindCache:Lc8/rXe;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lc8/rXe;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/rXe;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/sXe;->mAgooBindCache:Lc8/rXe;

    .line 44
    :cond_0
    return-void
.end method

.method private handleSetAlias(Lorg/json/JSONObject;Lc8/lXe;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lc8/lXe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 149
    const-string/jumbo v1, "pushAliasToken"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/taobao/accs/utl/JsonUtility;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "pushUserToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lc8/BWp;->setPushAliasToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {p2}, Lc8/lXe;->onSuccess()V

    .line 154
    sget-object v1, Lc8/sXe;->mAgooBindCache:Lc8/rXe;

    iget-object v2, p2, Lc8/lXe;->extra:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/rXe;->onAgooAliasBind(Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    if-eqz p2, :cond_0

    .line 158
    const-string/jumbo v1, ""

    const-string/jumbo v2, "agoo server error-pushtoken null"

    invoke-virtual {p2, v1, v2}, Lc8/lXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 135
    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 130
    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 13
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "response"    # [B
    .param p5, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 50
    :try_start_0
    const-string/jumbo v8, "AgooDeviceCmd"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 51
    iget-object v8, p0, Lc8/sXe;->mListeners:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/lXe;

    .line 52
    .local v6, "listener":Lc8/lXe;
    const/16 v8, 0xc8

    move/from16 v0, p3

    if-ne v0, v8, :cond_b

    .line 53
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v8, "utf-8"

    move-object/from16 v0, p4

    invoke-direct {v5, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 54
    .local v5, "jsonResult":Ljava/lang/String;
    const-string/jumbo v8, "RequestListener"

    const-string/jumbo v9, "RequestListener onResponse"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "dataId"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "listener"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v6, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "json"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    aput-object v5, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "resultCode"

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Lcom/taobao/accs/utl/JsonUtility;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "agooErrorCode":Ljava/lang/String;
    const-string/jumbo v8, "cmd"

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Lcom/taobao/accs/utl/JsonUtility;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "cmd":Ljava/lang/String;
    const-string/jumbo v8, "success"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 61
    if-eqz v6, :cond_0

    .line 62
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "agoo server error"

    invoke-virtual {v6, v8, v9}, Lc8/lXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    const-string/jumbo v8, "AgooDeviceCmd"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    iget-object v8, p0, Lc8/sXe;->mListeners:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v1    # "agooErrorCode":Ljava/lang/String;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "jsonResult":Ljava/lang/String;
    .end local v6    # "listener":Lc8/lXe;
    :cond_1
    :goto_0
    return-void

    .line 68
    .restart local v1    # "agooErrorCode":Ljava/lang/String;
    .restart local v2    # "cmd":Ljava/lang/String;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "jsonResult":Ljava/lang/String;
    .restart local v6    # "listener":Lc8/lXe;
    :cond_2
    :try_start_1
    const-string/jumbo v8, "register"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 69
    const-string/jumbo v8, "deviceId"

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Lcom/taobao/accs/utl/JsonUtility;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "deviceId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 71
    if-eqz v6, :cond_3

    .line 72
    const-string/jumbo v8, ""

    const-string/jumbo v9, "agoo server error deviceid null"

    invoke-virtual {v6, v8, v9}, Lc8/lXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v6    # "listener":Lc8/lXe;
    :cond_3
    :goto_1
    const-string/jumbo v8, "AgooDeviceCmd"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    iget-object v8, p0, Lc8/sXe;->mListeners:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    .restart local v6    # "listener":Lc8/lXe;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3}, Lc8/BWp;->setDeviceToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    sget-object v8, Lc8/sXe;->mAgooBindCache:Lc8/rXe;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lc8/rXe;->onAgooRegister(Ljava/lang/String;)V

    .line 77
    if-eqz v6, :cond_3

    instance-of v8, v6, Lc8/mXe;

    if-eqz v8, :cond_3

    .line 78
    const-string/jumbo v8, "Agoo_AppStore"

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/accs/utl/UtilityImpl;->saveUtdid(Ljava/lang/String;Landroid/content/Context;)V

    .line 79
    check-cast v6, Lc8/mXe;

    .end local v6    # "listener":Lc8/lXe;
    invoke-virtual {v6, v3}, Lc8/mXe;->onSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 116
    .end local v1    # "agooErrorCode":Ljava/lang/String;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "jsonResult":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 117
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v8, "RequestListener"

    const-string/jumbo v9, "onResponse"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v7, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    const-string/jumbo v8, "AgooDeviceCmd"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    iget-object v8, p0, Lc8/sXe;->mListeners:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v1    # "agooErrorCode":Ljava/lang/String;
    .restart local v2    # "cmd":Ljava/lang/String;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "jsonResult":Ljava/lang/String;
    .restart local v6    # "listener":Lc8/lXe;
    :cond_5
    :try_start_4
    const-string/jumbo v8, "setAlias"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 88
    invoke-direct {p0, v4, v6}, Lc8/sXe;->handleSetAlias(Lorg/json/JSONObject;Lc8/lXe;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    const-string/jumbo v8, "AgooDeviceCmd"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    iget-object v8, p0, Lc8/sXe;->mListeners:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 93
    :cond_6
    :try_start_5
    const-string/jumbo v8, "removeAlias"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 94
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lc8/BWp;->setPushAliasToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    if-eqz v6, :cond_7

    .line 96
    invoke-virtual {v6}, Lc8/lXe;->onSuccess()V

    .line 98
    :cond_7
    sget-object v8, Lc8/sXe;->mAgooBindCache:Lc8/rXe;

    invoke-virtual {v8}, Lc8/rXe;->onAgooAliasUnBind()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    const-string/jumbo v8, "AgooDeviceCmd"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    iget-object v8, p0, Lc8/sXe;->mListeners:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 102
    :cond_8
    :try_start_6
    const-string/jumbo v8, "enablePush"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "disablePush"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 103
    :cond_9
    if-eqz v6, :cond_a

    .line 104
    invoke-virtual {v6}, Lc8/lXe;->onSuccess()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    :cond_a
    const-string/jumbo v8, "AgooDeviceCmd"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    iget-object v8, p0, Lc8/sXe;->mListeners:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 110
    .end local v1    # "agooErrorCode":Ljava/lang/String;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "jsonResult":Ljava/lang/String;
    :cond_b
    if-eqz v6, :cond_c

    .line 111
    :try_start_7
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "accs channel error"

    invoke-virtual {v6, v8, v9}, Lc8/lXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 119
    .end local v6    # "listener":Lc8/lXe;
    :cond_c
    const-string/jumbo v8, "AgooDeviceCmd"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    iget-object v8, p0, Lc8/sXe;->mListeners:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 119
    :catchall_0
    move-exception v8

    const-string/jumbo v9, "AgooDeviceCmd"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 120
    iget-object v9, p0, Lc8/sXe;->mListeners:Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    throw v8
.end method

.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 145
    return-void
.end method

.method public onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 140
    return-void
.end method
