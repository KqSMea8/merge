.class public abstract Lcom/taobao/accs/base/AccsAbstractDataListener;
.super Ljava/lang/Object;
.source "AccsAbstractDataListener.java"

# interfaces
.implements Lcom/taobao/accs/base/AccsDataListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccsAbstractDataListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getExtHeader(Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "oriExtHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 168
    .local v2, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 169
    const/4 v8, 0x0

    .line 182
    :goto_0
    return-object v8

    .line 172
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .local v3, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    :try_start_1
    invoke-static {}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->values()[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    move-result-object v0

    .local v0, "arr$":[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    .line 174
    .local v6, "type":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    invoke-virtual {v6}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 175
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 176
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v6    # "type":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    move-object v2, v3

    .end local v0    # "arr$":[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .end local v3    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    :goto_2
    move-object v8, v2

    .line 182
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    const-string/jumbo v8, "AccsAbstractDataListener"

    const-string/jumbo v9, "getExtHeader"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v1, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v3    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    goto :goto_3
.end method

.method private static getExtraInfo(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 186
    new-instance v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {v4}, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;-><init>()V

    .line 188
    .local v4, "info":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    :try_start_0
    const-string/jumbo v7, "ext_header"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 189
    .local v5, "oriExtHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {v5}, Lcom/taobao/accs/base/AccsAbstractDataListener;->getExtHeader(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 190
    .local v1, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    const-string/jumbo v7, "packageName"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "fromPkg":Ljava/lang/String;
    const-string/jumbo v7, "host"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "host":Ljava/lang/String;
    const-string/jumbo v7, "conn_type"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 193
    .local v0, "connType":I
    iput v0, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->connType:I

    .line 194
    iput-object v1, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->extHeader:Ljava/util/Map;

    .line 195
    iput-object v5, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->oriExtHeader:Ljava/util/Map;

    .line 196
    iput-object v2, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    .line 197
    iput-object v3, v4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v0    # "connType":I
    .end local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .end local v2    # "fromPkg":Ljava/lang/String;
    .end local v3    # "host":Ljava/lang/String;
    .end local v5    # "oriExtHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    return-object v4

    .line 198
    :catch_0
    move-exception v6

    .line 199
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "AccsAbstractDataListener"

    const-string/jumbo v8, "getExtraInfo"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v6, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static onReceiveData(Landroid/content/Context;Landroid/content/Intent;Lcom/taobao/accs/base/AccsDataListener;)I
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lcom/taobao/accs/base/AccsDataListener;

    .prologue
    .line 58
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 59
    :cond_0
    const-string/jumbo v2, "AccsAbstractDataListener"

    const-string/jumbo v3, "onReceiveData listener or context null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const/4 v2, 0x2

    .line 162
    :goto_0
    return v2

    .line 62
    :cond_1
    if-eqz p1, :cond_3

    .line 67
    const-string/jumbo v9, ""

    .line 71
    .local v9, "serviceId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "command"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 72
    .local v20, "command":I
    const-string/jumbo v2, "errorCode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 73
    .local v11, "errorCode":I
    const-string/jumbo v2, "userInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 74
    .local v25, "userId":Ljava/lang/String;
    const-string/jumbo v2, "dataId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 75
    .local v21, "dataId":Ljava/lang/String;
    const-string/jumbo v2, "serviceId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 76
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    const-string/jumbo v2, "AccsAbstractDataListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceiveData dataId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_2
    if-lez v20, :cond_3

    .line 81
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d1

    const-string/jumbo v4, "MsgToBuss5"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "commandId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "serviceId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " dataId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0xdd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "to_buss"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "3commandId="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "serviceId="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    invoke-static {v2, v3, v4, v0, v1}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 88
    sparse-switch v20, :sswitch_data_0

    .line 162
    .end local v9    # "serviceId":Ljava/lang/String;
    .end local v11    # "errorCode":I
    .end local v20    # "command":I
    .end local v21    # "dataId":Ljava/lang/String;
    .end local v25    # "userId":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 90
    .restart local v9    # "serviceId":Ljava/lang/String;
    .restart local v11    # "errorCode":I
    .restart local v20    # "command":I
    .restart local v21    # "dataId":Ljava/lang/String;
    .restart local v25    # "userId":Ljava/lang/String;
    :sswitch_0
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/base/AccsAbstractDataListener;->getExtraInfo(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v11, v2}, Lcom/taobao/accs/base/AccsDataListener;->onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 152
    .end local v11    # "errorCode":I
    .end local v20    # "command":I
    .end local v21    # "dataId":Ljava/lang/String;
    .end local v25    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 153
    .local v22, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "send_fail"

    const-string/jumbo v4, "1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "callback error"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v9, v4, v8}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v2, "AccsAbstractDataListener"

    const-string/jumbo v3, "onReceiveData"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 157
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2

    .line 93
    .restart local v11    # "errorCode":I
    .restart local v20    # "command":I
    .restart local v21    # "dataId":Ljava/lang/String;
    .restart local v25    # "userId":Ljava/lang/String;
    :sswitch_1
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/base/AccsAbstractDataListener;->getExtraInfo(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v11, v2}, Lcom/taobao/accs/base/AccsDataListener;->onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_1

    .line 96
    :sswitch_2
    const-string/jumbo v2, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .line 98
    .local v6, "msg":[B
    const-string/jumbo v2, "bizAck"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 100
    .local v23, "needBizAck":Z
    if-eqz v6, :cond_6

    .line 101
    const-string/jumbo v2, "dataId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .end local v21    # "dataId":Ljava/lang/String;
    .local v5, "dataId":Ljava/lang/String;
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    const-string/jumbo v2, "AccsAbstractDataListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "COMMAND_RECEIVE_DATA onData dataId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/base/AccsAbstractDataListener;->getExtraInfo(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v7

    .line 108
    .local v7, "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    if-eqz v23, :cond_5

    .line 109
    const-string/jumbo v2, "AccsAbstractDataListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "try to send biz ack dataId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v2, v7, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->oriExtHeader:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v2}, Lcom/taobao/accs/base/AccsAbstractDataListener;->sendBusinessAck(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    move-object/from16 v2, p2

    move-object v3, v9

    move-object/from16 v4, v25

    .line 112
    invoke-interface/range {v2 .. v7}, Lcom/taobao/accs/base/AccsDataListener;->onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_1

    .line 115
    .end local v5    # "dataId":Ljava/lang/String;
    .end local v7    # "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .restart local v21    # "dataId":Ljava/lang/String;
    :cond_6
    const-string/jumbo v2, "AccsAbstractDataListener"

    const-string/jumbo v3, "COMMAND_RECEIVE_DATA msg null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "send_fail"

    const-string/jumbo v4, "1"

    const-string/jumbo v8, "COMMAND_RECEIVE_DATA msg null"

    invoke-static {v2, v3, v9, v4, v8}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 121
    .end local v6    # "msg":[B
    .end local v23    # "needBizAck":Z
    :sswitch_3
    const-string/jumbo v2, "dataId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    .end local v21    # "dataId":Ljava/lang/String;
    .restart local v5    # "dataId":Ljava/lang/String;
    const-string/jumbo v2, "res"

    const-string/jumbo v3, "send_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 124
    const-string/jumbo v2, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    .line 126
    .local v12, "data":[B
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/base/AccsAbstractDataListener;->getExtraInfo(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v13

    move-object/from16 v8, p2

    move-object v10, v5

    invoke-interface/range {v8 .. v13}, Lcom/taobao/accs/base/AccsDataListener;->onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_1

    .line 128
    .end local v12    # "data":[B
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/base/AccsAbstractDataListener;->getExtraInfo(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v5, v11, v2}, Lcom/taobao/accs/base/AccsDataListener;->onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_1

    .line 132
    .end local v5    # "dataId":Ljava/lang/String;
    .restart local v21    # "dataId":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v2, "anti_brush_ret"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 133
    .local v24, "ret":Z
    const-string/jumbo v2, "AccsAbstractDataListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "anti brush result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1, v2}, Lcom/taobao/accs/base/AccsDataListener;->onAntiBrush(ZLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_1

    .line 137
    .end local v24    # "ret":Z
    :sswitch_5
    const-string/jumbo v2, "connect_avail"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 138
    .local v19, "available":Z
    const-string/jumbo v2, "host"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 139
    .local v14, "host":Ljava/lang/String;
    const-string/jumbo v2, "errorDetail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 140
    .local v18, "errorDetail":Ljava/lang/String;
    const-string/jumbo v2, "type_inapp"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 141
    .local v15, "isInapp":Z
    const-string/jumbo v2, "is_center_host"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 142
    .local v16, "isCenter":Z
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 143
    if-eqz v19, :cond_8

    .line 144
    new-instance v2, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    move/from16 v0, v16

    invoke-direct {v2, v14, v15, v0}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZ)V

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/taobao/accs/base/AccsDataListener;->onConnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V

    goto/16 :goto_1

    .line 146
    :cond_8
    new-instance v13, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    move/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZILjava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/taobao/accs/base/AccsDataListener;->onDisconnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x64 -> :sswitch_3
        0x65 -> :sswitch_2
        0x67 -> :sswitch_5
        0x68 -> :sswitch_4
    .end sparse-switch
.end method

.method private static sendBusinessAck(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dataId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p3, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v3, "AccsAbstractDataListener"

    const-string/jumbo v6, "sendBusinessAck"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "dataId"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    invoke-static {v3, v6, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    if-eqz p1, :cond_0

    .line 208
    const-string/jumbo v3, "host"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "host":Ljava/lang/String;
    const-string/jumbo v3, "source"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "source":Ljava/lang/String;
    const-string/jumbo v3, "target"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "target":Ljava/lang/String;
    const-string/jumbo v3, "appKey"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, "appkey":Ljava/lang/String;
    const-string/jumbo v3, "configTag"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, "configTag":Ljava/lang/String;
    const-string/jumbo v3, "flags"

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v4

    .line 214
    .local v4, "flags":S
    invoke-static {p0, v7, v8}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    .line 215
    .local v0, "iAccsManager":Lcom/taobao/accs/IACCSManager;
    if-eqz v0, :cond_1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    .line 216
    invoke-interface/range {v0 .. v6}, Lcom/taobao/accs/IACCSManager;->sendBusinessAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V

    .line 217
    const-string/jumbo v3, "accs"

    const-string/jumbo v6, "bizAckSucc"

    const-string/jumbo v10, ""

    const-wide/16 v12, 0x0

    invoke-static {v3, v6, v10, v12, v13}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 227
    .end local v0    # "iAccsManager":Lcom/taobao/accs/IACCSManager;
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "source":Ljava/lang/String;
    .end local v4    # "flags":S
    .end local v5    # "host":Ljava/lang/String;
    .end local v7    # "appkey":Ljava/lang/String;
    .end local v8    # "configTag":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 219
    .restart local v0    # "iAccsManager":Lcom/taobao/accs/IACCSManager;
    .restart local v1    # "target":Ljava/lang/String;
    .restart local v2    # "source":Ljava/lang/String;
    .restart local v4    # "flags":S
    .restart local v5    # "host":Ljava/lang/String;
    .restart local v7    # "appkey":Ljava/lang/String;
    .restart local v8    # "configTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "accs"

    const-string/jumbo v6, "bizAckFail"

    const-string/jumbo v10, "no acsmgr"

    const-wide/16 v12, 0x0

    invoke-static {v3, v6, v10, v12, v13}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v0    # "iAccsManager":Lcom/taobao/accs/IACCSManager;
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "source":Ljava/lang/String;
    .end local v4    # "flags":S
    .end local v5    # "host":Ljava/lang/String;
    .end local v7    # "appkey":Ljava/lang/String;
    .end local v8    # "configTag":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 223
    .local v9, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "AccsAbstractDataListener"

    const-string/jumbo v6, "sendBusinessAck"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3, v6, v9, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 224
    const-string/jumbo v3, "accs"

    const-string/jumbo v6, "bizAckFail"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-static {v3, v6, v10, v12, v13}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method


# virtual methods
.method public onAntiBrush(ZLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "ret"    # Z
    .param p2, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 50
    return-void
.end method

.method public onConnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .locals 0
    .param p1, "connectInfo"    # Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    .prologue
    .line 33
    return-void
.end method

.method public onDisconnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .locals 0
    .param p1, "connectInfo"    # Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    .prologue
    .line 41
    return-void
.end method
