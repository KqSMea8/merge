.class public Lc8/rXe;
.super Ljava/lang/Object;
.source "AgooBindCache.java"


# static fields
.field private static final BINDED:I = 0x2

.field private static final BINDING:I = 0x1

.field public static final SP_AGOO_BIND_FILE_NAME:Ljava/lang/String; = "AGOO_BIND"

.field private static final SP_BIND_KEY:Ljava/lang/String; = "bind_status"

.field private static final TAG:Ljava/lang/String; = "AgooBindCache"

.field private static final UNBINDED:I = 0x4

.field private static final UNBINDING:I = 0x3


# instance fields
.field private agooLastFlushTime:J

.field private mAgooBindStatus:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAgooBindedAlias:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/rXe;->mAgooBindStatus:Ljava/util/concurrent/ConcurrentMap;

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Context is null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/rXe;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private restoreAgooClients()V
    .locals 12

    .prologue
    .line 97
    :try_start_0
    iget-object v6, p0, Lc8/rXe;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "AGOO_BIND"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 98
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "bind_status"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "packs":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    const-string/jumbo v6, "AgooBindCache"

    const-string/jumbo v7, "restoreAgooClients packs null return"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .end local v4    # "packs":Ljava/lang/String;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 104
    .restart local v4    # "packs":Ljava/lang/String;
    .restart local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lc8/rXe;->agooLastFlushTime:J

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lc8/rXe;->agooLastFlushTime:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 107
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 108
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 109
    .local v3, "jObject":Lorg/json/JSONObject;
    iget-object v6, p0, Lc8/rXe;->mAgooBindStatus:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v7, "p"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "s"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    .end local v3    # "jObject":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v6, "AgooBindCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAgooClients mAgooBindStatus restore = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lc8/rXe;->mAgooBindStatus:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "packs":Ljava/lang/String;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v4    # "packs":Ljava/lang/String;
    .restart local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "AgooBindCache"

    const-string/jumbo v7, "restoreAgooClients expired"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "agooLastFlushTime"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-wide v10, p0, Lc8/rXe;->agooLastFlushTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lc8/rXe;->agooLastFlushTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public isAgooAliasBinded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lc8/rXe;->mAgooBindedAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/rXe;->mAgooBindedAlias:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAgooRegistered(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v2, p0, Lc8/rXe;->mAgooBindStatus:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-direct {p0}, Lc8/rXe;->restoreAgooClients()V

    .line 61
    :cond_0
    iget-object v2, p0, Lc8/rXe;->mAgooBindStatus:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 62
    .local v0, "appStatus":Ljava/lang/Integer;
    const-string/jumbo v2, "AgooBindCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAgooRegistered begin..appStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mAgooBindStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/rXe;->mAgooBindStatus:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const-string/jumbo v2, "Agoo_AppStore"

    iget-object v3, p0, Lc8/rXe;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->utdidChanged(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    :cond_1
    :goto_0
    return v1

    .line 67
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 68
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onAgooAliasBind(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lc8/rXe;->mAgooBindedAlias:Ljava/lang/String;

    goto :goto_0
.end method

.method public onAgooAliasUnBind()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/rXe;->mAgooBindedAlias:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public onAgooRegister(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 50
    iget-object v1, p0, Lc8/rXe;->mAgooBindStatus:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    .local v0, "appStatus":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 52
    :cond_0
    iget-object v1, p0, Lc8/rXe;->mAgooBindStatus:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lc8/rXe;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "AGOO_BIND"

    iget-wide v4, p0, Lc8/rXe;->agooLastFlushTime:J

    iget-object v3, p0, Lc8/rXe;->mAgooBindStatus:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1, v2, v4, v5, v3}, Lcom/taobao/accs/client/ClientManager;->saveClients(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)V

    .line 55
    :cond_1
    return-void
.end method
