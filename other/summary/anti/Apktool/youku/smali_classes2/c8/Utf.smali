.class public Lc8/Utf;
.super Ljava/lang/Object;
.source "IndexUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;
    }
.end annotation


# static fields
.field private static final CHECK_INDEX_UPD_INTERVAL:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "IndexUpdateHandler"

.field private static final XCMD_VALUE_SEPARATE:Ljava/lang/String; = "&"

.field private static disableTaobaoClientIndexCheckUpd:Z

.field private static lastIndexUpdTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/Utf;->lastIndexUpdTime:J

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Utf;->disableTaobaoClientIndexCheckUpd:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method public static checkIndexUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p0, "appIndexVersion"    # Ljava/lang/String;
    .param p1, "versionIndexVersion"    # Ljava/lang/String;
    .param p2, "reqRetryNum"    # I

    .prologue
    const/4 v8, 0x0

    .line 40
    sget-object v2, Lc8/Ksf;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/Ytf;->isTaobaoPackage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lc8/Utf;->disableTaobaoClientIndexCheckUpd:Z

    if-eqz v2, :cond_0

    .line 41
    const-string/jumbo v2, "IndexUpdateHandler"

    const-string/jumbo v3, "no need checkIndexUpdate as com.taobao.taobao package "

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :goto_0
    return-void

    .line 45
    :cond_0
    const-class v3, Lc8/Utf;

    monitor-enter v3

    .line 46
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    .local v0, "startUpdTime":J
    sget-wide v4, Lc8/Utf;->lastIndexUpdTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x4e20

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    .line 48
    const-string/jumbo v2, "IndexUpdateHandler"

    const-string/jumbo v4, "checkIndexUpdate too frequently, interval should more than 20s"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    monitor-exit v3

    goto :goto_0

    .line 52
    .end local v0    # "startUpdTime":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 51
    .restart local v0    # "startUpdTime":J
    :cond_1
    :try_start_1
    sput-wide v0, Lc8/Utf;->lastIndexUpdTime:J

    .line 52
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    const-string/jumbo v2, "IndexUpdateHandler"

    const-string/jumbo v3, "checkIndexUpdate"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "appIndexVersion"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "versionIndexVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v2, Lc8/Ttf;

    invoke-direct {v2, p2, p0, p1}, Lc8/Ttf;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static parseIndexUpdInfo(Ljava/lang/String;Z)Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;
    .locals 7
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "isJsonFormat"    # Z

    .prologue
    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    const/4 v0, 0x0

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 122
    .local v0, "indexUpdInfo":Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;
    if-eqz p1, :cond_2

    .line 123
    const-class v4, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;

    invoke-static {p0, v4}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "indexUpdInfo":Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;
    check-cast v0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;

    .restart local v0    # "indexUpdInfo":Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;
    goto :goto_0

    .line 125
    :cond_2
    const-string/jumbo v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "values":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 127
    new-instance v0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;

    .end local v0    # "indexUpdInfo":Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;
    invoke-direct {v0}, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;-><init>()V

    .line 128
    .restart local v0    # "indexUpdInfo":Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 129
    .local v2, "v":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 130
    const-string/jumbo v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "temp":Ljava/lang/String;
    const-string/jumbo v6, "cdn"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 132
    iput-object v1, v0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->cdn:Ljava/lang/String;

    .line 128
    .end local v1    # "temp":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 133
    .restart local v1    # "temp":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "md5"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 134
    iput-object v1, v0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    goto :goto_2

    .line 135
    :cond_5
    const-string/jumbo v6, "resourceId"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 136
    iput-object v1, v0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    goto :goto_2

    .line 137
    :cond_6
    const-string/jumbo v6, "protocol"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    iput-object v1, v0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->protocol:Ljava/lang/String;

    goto :goto_2
.end method

.method public static declared-synchronized updateIndex(Ljava/lang/String;Z)V
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "isJsonFormat"    # Z

    .prologue
    .line 92
    const-class v4, Lc8/Utf;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p1}, Lc8/Utf;->parseIndexUpdInfo(Ljava/lang/String;Z)Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;

    move-result-object v1

    .line 93
    .local v1, "indexUpdInfo":Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;
    const-string/jumbo v3, "IndexUpdateHandler"

    const-string/jumbo v5, "updateIndex"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "indexUpdInfo"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v3, v5, v6}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v3, v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->cdn:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "http"

    iget-object v5, v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "http"

    .line 98
    .local v2, "schema":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "://"

    .line 99
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->cdn:Ljava/lang/String;

    .line 100
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 101
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    .line 102
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    sput-object v2, Lc8/Itf;->protocol:Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc8/Itf;->indexUpdCacheUrl:Ljava/lang/String;

    .line 107
    iget-object v3, v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    sput-object v3, Lc8/Itf;->indexUpdCacheMd5:Ljava/lang/String;

    .line 108
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lc8/Jsf;->updateIndex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "schema":Ljava/lang/String;
    :cond_0
    monitor-exit v4

    return-void

    .line 97
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "https"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "indexUpdInfo":Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
