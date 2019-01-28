.class public Lc8/rQp;
.super Ljava/lang/Object;
.source "XState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.XState"

.field private static asyncServiceBinder:Lc8/nMp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/nMp",
            "<",
            "Lc8/wQp;",
            ">;"
        }
    .end annotation
.end field

.field private static isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final localMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/rQp;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lc8/rQp;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lc8/rQp;->isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lc8/rQp;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lc8/rQp;->isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static checkBindAndRetryAsyncBind()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 306
    sget-object v1, Lc8/rQp;->asyncServiceBinder:Lc8/nMp;

    if-nez v1, :cond_0

    .line 313
    :goto_0
    return v0

    .line 309
    :cond_0
    sget-object v1, Lc8/rQp;->asyncServiceBinder:Lc8/nMp;

    invoke-virtual {v1}, Lc8/nMp;->getService()Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 310
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :cond_1
    sget-object v1, Lc8/rQp;->asyncServiceBinder:Lc8/nMp;

    sget-object v2, Lc8/rQp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lc8/nMp;->asyncBind(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, "lat"

    invoke-static {v0}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, "lng"

    invoke-static {v0}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "nq"

    invoke-static {v0}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string/jumbo v0, "netType"

    invoke-static {v0}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, "t_offset"

    invoke-static {v0}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lc8/rQp;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x0

    .line 188
    :goto_0
    return-object v1

    .line 169
    :cond_0
    invoke-static {p0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-static {p0, p1}, Lc8/yMp;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    :cond_1
    invoke-static {}, Lc8/rQp;->checkBindAndRetryAsyncBind()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lc8/rQp;->isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    :try_start_0
    sget-object v1, Lc8/rQp;->asyncServiceBinder:Lc8/nMp;

    invoke-virtual {v1}, Lc8/nMp;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lc8/wQp;

    invoke-interface {v1, p1}, Lc8/wQp;->getValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getValue] IXState.getValue(Key) failed,key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getValue]Attention :Use XState Local Mode: key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_2
    sget-object v1, Lc8/rQp;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getValue]Attention :Use XState Local Mode: key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_4
    sget-object v1, Lc8/rQp;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    if-nez p0, :cond_1

    .line 42
    const-string/jumbo v0, "mtopsdk.XState"

    const-string/jumbo v1, "[init]init error,context is null"

    invoke-static {v0, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    sget-object v0, Lc8/rQp;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc8/rQp;->mContext:Landroid/content/Context;

    .line 52
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    const-string/jumbo v0, "mtopsdk.XState"

    const-string/jumbo v1, "[init]XState init called"

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_2
    invoke-static {p0}, Lc8/rQp;->initPhoneInfo(Landroid/content/Context;)V

    .line 57
    sget-object v0, Lc8/rQp;->asyncServiceBinder:Lc8/nMp;

    if-nez v0, :cond_3

    .line 58
    new-instance v0, Lc8/qQp;

    const-class v1, Lc8/wQp;

    const-class v2, Lmtopsdk/xstate/XStateService;

    invoke-direct {v0, v1, v2}, Lc8/qQp;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 73
    sput-object v0, Lc8/rQp;->asyncServiceBinder:Lc8/nMp;

    invoke-virtual {v0, p0}, Lc8/nMp;->asyncBind(Landroid/content/Context;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-static {}, Lc8/rQp;->syncToRemote()V

    goto :goto_0
.end method

.method private static initPhoneInfo(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Lc8/AQp;->getPhoneBaseInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "user_agent":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 101
    sget-object v3, Lc8/rQp;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v4, "ua"

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "utdid":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 106
    sget-object v3, Lc8/rQp;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v4, "utdid"

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    sget-object v3, Lc8/rQp;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v4, "t_offset"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "user_agent":Ljava/lang/String;
    .end local v2    # "utdid":Ljava/lang/String;
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "mtopsdk.XState"

    const-string/jumbo v4, "[initPhoneInfo]initPhoneInfo error"

    invoke-static {v3, v4, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isAppBackground()Z
    .locals 4

    .prologue
    .line 137
    const-string/jumbo v2, "AppBackground"

    invoke-static {v2}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 139
    .local v1, "returnValue":Z
    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 146
    :cond_0
    :goto_0
    return v1

    .line 143
    :catch_0
    move-exception v2

    const-string/jumbo v2, "mtopsdk.XState"

    const-string/jumbo v3, "[isAppBackground] parse KEY_APP_BACKGROUND error"

    invoke-static {v2, v3}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lc8/rQp;->removeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 228
    :goto_0
    return-object v1

    .line 208
    :cond_0
    invoke-static {p0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-static {p0, p1}, Lc8/yMp;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    :cond_1
    invoke-static {}, Lc8/rQp;->checkBindAndRetryAsyncBind()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lc8/rQp;->isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    :try_start_0
    sget-object v1, Lc8/rQp;->asyncServiceBinder:Lc8/nMp;

    invoke-virtual {v1}, Lc8/nMp;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lc8/wQp;

    invoke-interface {v1, p1}, Lc8/wQp;->removeKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[removeKey] IXState.removeKey(key) failed,key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[removeKey]Attention :Use XState Local Mode: key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_2
    sget-object v1, Lc8/rQp;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    move-object v1, v2

    .line 228
    goto :goto_0

    .line 223
    :cond_3
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 224
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[removeKey]Attention :Use XState Local Mode: key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_4
    sget-object v1, Lc8/rQp;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static setAppBackground(Z)V
    .locals 2
    .param p0, "background"    # Z

    .prologue
    .line 150
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "AppBackground"

    invoke-static {v1, v0}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-static {p0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-static {p0, p1}, Lc8/yMp;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 250
    :cond_2
    invoke-static {}, Lc8/rQp;->checkBindAndRetryAsyncBind()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lc8/rQp;->isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    :try_start_0
    sget-object v1, Lc8/rQp;->asyncServiceBinder:Lc8/nMp;

    invoke-virtual {v1}, Lc8/nMp;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lc8/wQp;

    invoke-interface {v1, p1, p2}, Lc8/wQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setValue] IXState.setValue(key,value) failed,key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setValue]Attention :Use XState Local Mode: key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_3
    sget-object v1, Lc8/rQp;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 262
    const-string/jumbo v1, "mtopsdk.XState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setValue]Attention :Use XState Local Mode: key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_5
    sget-object v1, Lc8/rQp;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected static syncToRemote()V
    .locals 9

    .prologue
    .line 275
    invoke-static {}, Lc8/rQp;->checkBindAndRetryAsyncBind()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 276
    sget-object v6, Lc8/rQp;->asyncServiceBinder:Lc8/nMp;

    invoke-virtual {v6}, Lc8/nMp;->getService()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lc8/wQp;

    .line 278
    .local v4, "service":Lc8/wQp;
    :try_start_0
    invoke-interface {v4}, Lc8/wQp;->init()V

    .line 279
    sget-object v6, Lc8/rQp;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 280
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 281
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    .local v5, "value":Ljava/lang/String;
    :try_start_1
    invoke-interface {v4, v3, v5}, Lc8/wQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    const-string/jumbo v6, "mtopsdk.XState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[syncToRemote] sync succeed, key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "mtopsdk.XState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[syncToRemote] sync error, key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "mtopsdk.XState"

    const-string/jumbo v7, "syncToRemote error."

    invoke-static {v6, v7, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void

    .line 291
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    sget-object v6, Lc8/rQp;->isSyncToRemote:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public static unInit()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lc8/rQp;->checkBindAndRetryAsyncBind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    sget-object v1, Lc8/rQp;->asyncServiceBinder:Lc8/nMp;

    invoke-virtual {v1}, Lc8/nMp;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lc8/wQp;

    invoke-interface {v1}, Lc8/wQp;->unInit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v1, Lc8/rQp;->localMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 91
    sget-object v1, Lc8/rQp;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    return-void

    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 87
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "mtopsdk.XState"

    const-string/jumbo v2, "[unInit] unInit error"

    invoke-static {v1, v2, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
