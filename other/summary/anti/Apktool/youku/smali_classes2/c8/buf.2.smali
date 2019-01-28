.class public Lc8/buf;
.super Ljava/lang/Object;
.source "OLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/orange/util/OLog$Level;
    }
.end annotation


# static fields
.field private static isUseTlog:Z

.field private static preTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "NOrange."

    sput-object v0, Lc8/buf;->preTag:Ljava/lang/String;

    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Lc8/buf;->isUseTlog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method private static varargs buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 112
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 113
    const-string/jumbo v2, ""

    .line 130
    :goto_0
    return-object v2

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 117
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    if-eqz p1, :cond_3

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 122
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lc8/buf;->formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    .line 126
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static buildLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/buf;->preTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 43
    sget-object v0, Lcom/taobao/orange/util/OLog$Level;->D:Lcom/taobao/orange/util/OLog$Level;

    invoke-static {v0}, Lc8/buf;->isPrintLog(Lcom/taobao/orange/util/OLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-boolean v0, Lc8/buf;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 45
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 93
    sget-object v0, Lcom/taobao/orange/util/OLog$Level;->E:Lcom/taobao/orange/util/OLog$Level;

    invoke-static {v0}, Lc8/buf;->isPrintLog(Lcom/taobao/orange/util/OLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-boolean v0, Lc8/buf;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 95
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 83
    sget-object v0, Lcom/taobao/orange/util/OLog$Level;->E:Lcom/taobao/orange/util/OLog$Level;

    invoke-static {v0}, Lc8/buf;->isPrintLog(Lcom/taobao/orange/util/OLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-boolean v0, Lc8/buf;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 85
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "key":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    .end local p1    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 53
    sget-object v0, Lcom/taobao/orange/util/OLog$Level;->I:Lcom/taobao/orange/util/OLog$Level;

    invoke-static {v0}, Lc8/buf;->isPrintLog(Lcom/taobao/orange/util/OLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-boolean v0, Lc8/buf;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 55
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static isPrintLog(Lcom/taobao/orange/util/OLog$Level;)Z
    .locals 5
    .param p0, "logLevel"    # Lcom/taobao/orange/util/OLog$Level;

    .prologue
    const/4 v2, 0x1

    .line 20
    sget-boolean v3, Lc8/buf;->isUseTlog:Z

    if-eqz v3, :cond_0

    .line 21
    sget-object v1, Lcom/taobao/orange/util/OLog$Level;->L:Lcom/taobao/orange/util/OLog$Level;

    .line 23
    .local v1, "tlogLevel":Lcom/taobao/orange/util/OLog$Level;
    :try_start_0
    invoke-static {}, Lc8/eOf;->getLogLevel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/orange/util/OLog$Level;->valueOf(Ljava/lang/String;)Lcom/taobao/orange/util/OLog$Level;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/orange/util/OLog$Level;->ordinal()I

    move-result v3

    invoke-virtual {v1}, Lcom/taobao/orange/util/OLog$Level;->ordinal()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 29
    .end local v1    # "tlogLevel":Lcom/taobao/orange/util/OLog$Level;
    :cond_0
    :goto_1
    return v2

    .line 24
    .restart local v1    # "tlogLevel":Lcom/taobao/orange/util/OLog$Level;
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 27
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static setUseTlog(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 16
    sput-boolean p0, Lc8/buf;->isUseTlog:Z

    .line 17
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 33
    sget-object v0, Lcom/taobao/orange/util/OLog$Level;->V:Lcom/taobao/orange/util/OLog$Level;

    invoke-static {v0}, Lc8/buf;->isPrintLog(Lcom/taobao/orange/util/OLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-boolean v0, Lc8/buf;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 35
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 73
    sget-object v0, Lcom/taobao/orange/util/OLog$Level;->W:Lcom/taobao/orange/util/OLog$Level;

    invoke-static {v0}, Lc8/buf;->isPrintLog(Lcom/taobao/orange/util/OLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-boolean v0, Lc8/buf;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 75
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lc8/eOf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p3}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 63
    sget-object v0, Lcom/taobao/orange/util/OLog$Level;->W:Lcom/taobao/orange/util/OLog$Level;

    invoke-static {v0}, Lc8/buf;->isPrintLog(Lcom/taobao/orange/util/OLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-boolean v0, Lc8/buf;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 65
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {p0}, Lc8/buf;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lc8/buf;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method
