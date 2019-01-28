.class public Lc8/YNp;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/WNp;,
        Lc8/XNp;
    }
.end annotation


# static fields
.field private static final CREATED_NO:Ljava/lang/String; = "0"

.field private static final CREATED_YES:Ljava/lang/String; = "1"

.field private static final DEVICEID_CREATED_KEY:Ljava/lang/String; = "deviceId_created"

.field private static final DEVICEID_KEY:Ljava/lang/String; = "deviceId"

.field private static final MTOPSDK_DEVICEID_STORE_PREFIX:Ljava/lang/String; = "MTOPSDK_DEVICEID_STORE."

.field private static final TAG:Ljava/lang/String; = "mtopsdk.DeviceIDManager"

.field private static deviceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/WNp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/YNp;->deviceIdMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lc8/UNp;)V
    .locals 0
    .param p1, "x0"    # Lc8/UNp;

    .prologue
    .line 31
    invoke-direct {p0}, Lc8/YNp;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lc8/YNp;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/YNp;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lc8/YNp;->getRemoteDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceIdFromStore(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 220
    if-nez p1, :cond_1

    move-object v1, v3

    .line 235
    :cond_0
    :goto_0
    return-object v1

    .line 223
    :cond_1
    invoke-static {}, Lc8/oMp;->getInstance()Lc8/oMp;

    move-result-object v4

    const-string/jumbo v5, "MtopConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MTOPSDK_DEVICEID_STORE."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "deviceId"

    invoke-virtual {v4, p1, v5, v6, v7}, Lc8/oMp;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "deviceIdStr":Ljava/lang/String;
    invoke-static {}, Lc8/oMp;->getInstance()Lc8/oMp;

    move-result-object v4

    const-string/jumbo v5, "MtopConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MTOPSDK_DEVICEID_STORE."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "deviceId_created"

    invoke-virtual {v4, p1, v5, v6, v7}, Lc8/oMp;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "mCreatedStr":Ljava/lang/String;
    const-string/jumbo v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    new-instance v0, Lc8/WNp;

    invoke-direct {v0, p0, v3}, Lc8/WNp;-><init>(Lc8/YNp;Ljava/util/concurrent/Future;)V

    .line 227
    .local v0, "deviceIdDomain":Lc8/WNp;
    iput-object v1, v0, Lc8/WNp;->mDeviceId:Ljava/lang/String;

    .line 228
    const/4 v3, 0x1

    iput-boolean v3, v0, Lc8/WNp;->mCreated:Z

    .line 229
    sget-object v3, Lc8/YNp;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v0    # "deviceIdDomain":Lc8/WNp;
    :cond_2
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    const-string/jumbo v3, "mtopsdk.DeviceIDManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getDeviceIdFromStore] appkey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; deviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getInstance()Lc8/YNp;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lc8/XNp;->access$100()Lc8/YNp;

    move-result-object v0

    return-object v0
.end method

.method private getRemoteDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 161
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 162
    const-string/jumbo v10, "mtopsdk.DeviceIDManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[getRemoteDeviceID] called!appkey="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lc8/YNp;->getLocalUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "utdid":Ljava/lang/String;
    invoke-static {p1}, Lc8/AQp;->getOriginalImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "imei":Ljava/lang/String;
    invoke-static {p1}, Lc8/AQp;->getOriginalImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "imsi":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v10, 0x40

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    .local v3, "device_global_id":Ljava/lang/StringBuilder;
    invoke-static {v9}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 170
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_1
    invoke-static {v5}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 173
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_2
    invoke-static {v6}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 176
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 180
    const-string/jumbo v10, "mtopsdk.DeviceIDManager"

    const-string/jumbo v11, "[getRemoteDeviceID]device_global_id is blank"

    invoke-static {v10, v11}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_4
    :goto_0
    return-object v2

    .line 183
    :cond_5
    new-instance v7, Lc8/ZNp;

    invoke-direct {v7}, Lc8/ZNp;-><init>()V

    .line 184
    .local v7, "request":Lc8/ZNp;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lc8/ZNp;->device_global_id:Ljava/lang/String;

    .line 185
    const/4 v10, 0x1

    iput-boolean v10, v7, Lc8/ZNp;->new_device:Z

    .line 186
    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v10, v7, Lc8/ZNp;->c0:Ljava/lang/String;

    .line 187
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v10, v7, Lc8/ZNp;->c1:Ljava/lang/String;

    .line 188
    iput-object v5, v7, Lc8/ZNp;->c2:Ljava/lang/String;

    .line 189
    iput-object v6, v7, Lc8/ZNp;->c3:Ljava/lang/String;

    .line 190
    invoke-static {p1}, Lc8/AQp;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lc8/ZNp;->c4:Ljava/lang/String;

    .line 191
    invoke-static {}, Lc8/AQp;->getSerialNum()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lc8/ZNp;->c5:Ljava/lang/String;

    .line 192
    invoke-static {p1}, Lc8/AQp;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lc8/ZNp;->c6:Ljava/lang/String;

    .line 194
    const-string/jumbo v10, "INNER"

    invoke-static {v10, v2}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v10

    invoke-virtual {v10, v7, v2}, Lc8/AOp;->build(Lc8/dOp;Ljava/lang/String;)Lc8/COp;

    move-result-object v10

    const/16 v11, 0x1003

    invoke-virtual {v10, v11}, Lc8/COp;->setBizId(I)Lc8/COp;

    move-result-object v10

    invoke-virtual {v10}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v8

    .line 195
    .local v8, "response":Lmtopsdk/mtop/domain/MtopResponse;
    const/4 v2, 0x0

    .line 196
    .local v2, "deviceId":Ljava/lang/String;
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 198
    :try_start_0
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v10

    const-class v11, Lc8/aOp;

    invoke-static {v10, v11}, Lc8/jPp;->jsonToOutputDO([BLjava/lang/Class;)Lc8/cOp;

    move-result-object v0

    .line 199
    .local v0, "baseOutDo":Lc8/cOp;
    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {v0}, Lc8/cOp;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/bOp;

    .line 201
    .local v1, "data":Lc8/bOp;
    iget-object v2, v1, Lc8/bOp;->device_id:Ljava/lang/String;

    .line 202
    invoke-static {v2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 203
    const-string/jumbo v10, "1"

    invoke-direct {p0, p1, p2, v2, v10}, Lc8/YNp;->saveDeviceIdToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v0    # "baseOutDo":Lc8/cOp;
    .end local v1    # "data":Lc8/bOp;
    :catch_0
    move-exception v4

    .line 207
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "mtopsdk.DeviceIDManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[getRemoteDeviceID] error ---"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private saveDeviceIdToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "mCreated"    # Ljava/lang/String;

    .prologue
    .line 244
    if-nez p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-static {}, Lc8/oMp;->getInstance()Lc8/oMp;

    move-result-object v0

    const-string/jumbo v2, "MtopConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MTOPSDK_DEVICEID_STORE."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "deviceId"

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lc8/oMp;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 248
    invoke-static {}, Lc8/oMp;->getInstance()Lc8/oMp;

    move-result-object v0

    const-string/jumbo v2, "MtopConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MTOPSDK_DEVICEID_STORE."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "deviceId_created"

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/oMp;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 250
    sget-object v0, Lc8/YNp;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/WNp;

    .line 251
    .local v7, "deviceIdDomain":Lc8/WNp;
    if-nez v7, :cond_2

    .line 252
    new-instance v7, Lc8/WNp;

    .end local v7    # "deviceIdDomain":Lc8/WNp;
    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lc8/WNp;-><init>(Lc8/YNp;Ljava/util/concurrent/Future;)V

    .line 254
    .restart local v7    # "deviceIdDomain":Lc8/WNp;
    :cond_2
    iput-object p3, v7, Lc8/WNp;->mDeviceId:Ljava/lang/String;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, v7, Lc8/WNp;->mCreated:Z

    .line 256
    sget-object v0, Lc8/YNp;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v0, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 260
    .local v6, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "[saveDeviceIdToStore] appkey="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string/jumbo v0, "; deviceId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string/jumbo v0, "; mCreated="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string/jumbo v0, "mtopsdk.DeviceIDManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-object v0, Lc8/YNp;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v0, ""

    const-string/jumbo v1, "0"

    invoke-direct {p0, p1, p2, v0, v1}, Lc8/YNp;->saveDeviceIdToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p2}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    const-string/jumbo v3, "mtopsdk.DeviceIDManager"

    const-string/jumbo v4, "appkey is null,get DeviceId error"

    invoke-static {v3, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    .line 106
    :cond_0
    :goto_0
    return-object v2

    .line 67
    :cond_1
    sget-object v3, Lc8/YNp;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WNp;

    .line 68
    .local v0, "deviceIdDomain":Lc8/WNp;
    if-eqz v0, :cond_2

    .line 69
    iget-object v2, v0, Lc8/WNp;->mLastFuture:Ljava/util/concurrent/Future;

    .line 70
    .local v2, "mLastFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_2

    .line 71
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    const-string/jumbo v3, "mtopsdk.DeviceIDManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getDeviceID] appKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " return mLastFuture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v2    # "mLastFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :cond_2
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lc8/UNp;

    invoke-direct {v3, p0, p1, p2}, Lc8/UNp;-><init>(Lc8/YNp;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 97
    .local v1, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    new-instance v3, Lc8/VNp;

    invoke-direct {v3, p0, v1}, Lc8/VNp;-><init>(Lc8/YNp;Ljava/util/concurrent/FutureTask;)V

    invoke-static {v3}, Lc8/mPp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 104
    new-instance v0, Lc8/WNp;

    .end local v0    # "deviceIdDomain":Lc8/WNp;
    invoke-direct {v0, p0, v1}, Lc8/WNp;-><init>(Lc8/YNp;Ljava/util/concurrent/Future;)V

    .line 105
    .restart local v0    # "deviceIdDomain":Lc8/WNp;
    sget-object v3, Lc8/YNp;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 106
    goto :goto_0
.end method

.method public getLocalDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 115
    sget-object v1, Lc8/YNp;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/WNp;

    .line 116
    .local v0, "deviceIdDomain":Lc8/WNp;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lc8/WNp;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    invoke-direct {p0, p1, p2}, Lc8/YNp;->getDeviceIdFromStore(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lc8/WNp;->mDeviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocalUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 129
    const-string/jumbo v2, "utdid"

    invoke-static {v2}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "utdid":Ljava/lang/String;
    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    const-string/jumbo v2, "INNER"

    invoke-static {v2, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/AOp;->registerUtdid(Ljava/lang/String;)Lc8/AOp;

    move-object v1, v0

    .line 142
    :cond_0
    :goto_0
    return-object v1

    .line 134
    :cond_1
    if-nez p1, :cond_2

    .line 135
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const-string/jumbo v2, "mtopsdk.DeviceIDManager"

    const-string/jumbo v3, "[getLocalUtdid] Context is null,get Utdid failed"

    invoke-static {v2, v3}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string/jumbo v2, "INNER"

    invoke-static {v2, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/AOp;->registerUtdid(Ljava/lang/String;)Lc8/AOp;

    move-object v1, v0

    .line 142
    goto :goto_0
.end method
