.class public Lc8/MB;
.super Ljava/lang/Object;
.source "WVConfigUtils.java"


# static fields
.field public static final SPNAME:Ljava/lang/String;

.field protected static final TAG:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static isAppKeyAvailable:Z

.field private static isAppKeyChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-class v0, Lc8/MB;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 20
    sput-object v0, Lc8/MB;->TAG:Ljava/lang/String;

    sput-object v0, Lc8/MB;->SPNAME:Ljava/lang/String;

    .line 21
    sput-boolean v1, Lc8/MB;->isAppKeyChecked:Z

    .line 22
    sput-boolean v1, Lc8/MB;->isAppKeyAvailable:Z

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lc8/MB;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized checkAppKeyAvailable()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    const-class v5, Lc8/MB;

    monitor-enter v5

    :try_start_0
    sget-boolean v6, Lc8/MB;->isAppKeyChecked:Z

    if-eqz v6, :cond_0

    .line 132
    sget-boolean v3, Lc8/MB;->isAppKeyAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .local v0, "appKey":Ljava/lang/String;
    :goto_0
    monitor-exit v5

    return v3

    .line 134
    .end local v0    # "appKey":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x1

    :try_start_1
    sput-boolean v6, Lc8/MB;->isAppKeyChecked:Z

    .line 135
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v6

    invoke-virtual {v6}, Lc8/xB;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 136
    .restart local v0    # "appKey":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 137
    const/4 v3, 0x0

    sput-boolean v3, Lc8/MB;->isAppKeyAvailable:Z

    .line 138
    const/4 v3, 0x0

    sput-boolean v3, Lc8/MB;->isAppKeyChecked:Z

    .line 139
    sget-boolean v3, Lc8/MB;->isAppKeyAvailable:Z

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 142
    .local v2, "keyArray":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_4

    .line 143
    aget-char v6, v2, v1

    const/16 v7, 0x30

    if-lt v6, v7, :cond_2

    aget-char v6, v2, v1

    const/16 v7, 0x39

    if-le v6, v7, :cond_3

    .line 144
    :cond_2
    const/4 v4, 0x0

    .line 145
    sput-boolean v4, Lc8/MB;->isAppKeyAvailable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    .end local v2    # "keyArray":[C
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    .line 142
    .restart local v1    # "i":I
    .restart local v2    # "keyArray":[C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :cond_4
    const/4 v3, 0x1

    .line 149
    :try_start_2
    sput-boolean v3, Lc8/MB;->isAppKeyAvailable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v4

    goto :goto_0
.end method

.method public static declared-synchronized dealAppVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    const-class v1, Lc8/MB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/MB;->appVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 159
    :try_start_1
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v0

    invoke-virtual {v0}, Lc8/xB;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    sput-object v0, Lc8/MB;->appVersion:Ljava/lang/String;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "%2D"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lc8/MB;->appVersion:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getTargetValue()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v4, 0x61

    .line 107
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "h5."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v7}, Landroid/taobao/windvane/config/EnvEnum;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".taobao.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "cookie":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 109
    const-string/jumbo v5, "abt="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 111
    .local v3, "index":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    move v0, v4

    .line 112
    .local v0, "abt":C
    :goto_0
    if-gt v4, v0, :cond_2

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_2

    .line 113
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "abtValue":Ljava/lang/String;
    const-string/jumbo v4, "wv_main_config"

    const-string/jumbo v5, "abt"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    const-string/jumbo v4, "wv_main_config"

    const-string/jumbo v5, "abt"

    invoke-static {v4, v5, v1}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v0    # "abt":C
    .end local v1    # "abtValue":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_0
    :goto_1
    return-object v1

    .line 111
    .restart local v3    # "index":I
    :cond_1
    add-int/lit8 v5, v3, 0x4

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .end local v3    # "index":I
    :catch_0
    move-exception v4

    .line 124
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isNeedUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "newValue"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 60
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    const/4 v5, 0x0

    .line 62
    .local v5, "newStringValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 63
    .local v2, "needUpdate":Z
    const-string/jumbo v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    const-string/jumbo v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-ge v6, v12, :cond_1

    :cond_0
    move v3, v2

    .line 98
    .end local v2    # "needUpdate":Z
    .local v3, "needUpdate":I
    :goto_0
    return v3

    .line 68
    .end local v3    # "needUpdate":I
    .restart local v2    # "needUpdate":Z
    :cond_1
    aget-object v6, v0, v11

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 69
    .local v4, "newLongValue":Ljava/lang/Long;
    aget-object v5, v0, v10

    .line 74
    .end local v0    # "array":[Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "wv_main_config"

    const-string/jumbo v7, "0"

    invoke-static {v6, p1, v7}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "keyVal":Ljava/lang/String;
    const-string/jumbo v6, "\\."

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "array":[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aget-object v8, v0, v11

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 77
    const/4 v2, 0x1

    :cond_2
    :goto_2
    move v3, v2

    .line 98
    .restart local v3    # "needUpdate":I
    goto :goto_0

    .line 71
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "keyVal":Ljava/lang/String;
    .end local v3    # "needUpdate":I
    .end local v4    # "newLongValue":Ljava/lang/Long;
    :cond_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .restart local v4    # "newLongValue":Ljava/lang/Long;
    goto :goto_1

    .line 78
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v1    # "keyVal":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aget-object v8, v0, v11

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 80
    if-eqz v5, :cond_6

    .line 82
    array-length v6, v0

    if-le v6, v10, :cond_5

    aget-object v6, v0, v10

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 83
    const/4 v2, 0x1

    goto :goto_2

    .line 86
    :cond_5
    array-length v6, v0

    if-ge v6, v12, :cond_2

    .line 87
    const/4 v2, 0x1

    goto :goto_2

    .line 91
    :cond_6
    array-length v6, v0

    if-le v6, v10, :cond_2

    .line 92
    const/4 v2, 0x1

    goto :goto_2

    .line 96
    :cond_7
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static isNeedUpdate(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "boot"    # Z
    .param p1, "SPNAME"    # Ljava/lang/String;
    .param p2, "keyPrefix"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "wv-time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lc8/MH;->getLongVal(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 34
    .local v4, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 35
    .local v0, "interval":J
    const-wide/32 v2, 0x1499700

    .line 36
    .local v2, "maxAge":J
    if-eqz p0, :cond_0

    .line 37
    const-wide/32 v2, 0x1b7740

    .line 39
    :cond_0
    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    :cond_1
    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected needSaveConfig(Ljava/lang/String;)Z
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    new-instance v0, Lc8/gC;

    invoke-direct {v0}, Lc8/gC;-><init>()V

    .line 46
    .local v0, "response":Lc8/gC;
    invoke-virtual {v0, p1}, Lc8/gC;->parseJsonResult(Ljava/lang/String;)Lc8/gC;

    move-result-object v2

    iget-boolean v2, v2, Lc8/gC;->success:Z

    if-eqz v2, :cond_0

    .line 47
    const/4 v1, 0x1

    goto :goto_0
.end method
