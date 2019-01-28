.class public Lc8/wHf;
.super Ljava/lang/Object;
.source "TLog.java"


# static fields
.field private static SERIAL_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static final TAG:Ljava/lang/String; = "TLog.TLog"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lc8/wHf;->SERIAL_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs aopLog(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # [Ljava/lang/String;

    .prologue
    .line 235
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 236
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p1

    if-ge v7, v0, :cond_0

    .line 239
    aget-object v0, p1, v7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string/jumbo v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .end local v7    # "i":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    const-string/jumbo v2, "A"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lc8/wHf;->makeLog(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :cond_2
    return-void
.end method

.method private static checkLogLength(Ljava/lang/String;)Z
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x1

    .line 361
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v0

    invoke-interface {v0, p0}, Lc8/tHf;->checkLogLength(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs formatLogd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    :cond_2
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->D:Lcom/taobao/tao/log/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs formatLoge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs formatLogi(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    :cond_2
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->I:Lcom/taobao/tao/log/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs formatLogv(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    :cond_2
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->V:Lcom/taobao/tao/log/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs formatLogw(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    :cond_2
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->W:Lcom/taobao/tao/log/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getExceptionMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    .line 250
    if-nez p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-object v5

    .line 252
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v4, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v6, "\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string/jumbo v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string/jumbo v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 262
    .local v3, "msgs":[Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 266
    const-string/jumbo v5, "\tat  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 271
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getMemoryLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lc8/eIf;->getInstance()Lc8/eIf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/eIf;->getMemoryLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "level"    # Lcom/taobao/tao/log/LogLevel;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "content"    # [Ljava/lang/Object;

    .prologue
    .line 18
    const-string/jumbo v2, "C"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lc8/wHf;->makeLog(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 128
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 129
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    .line 131
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->D:Lcom/taobao/tao/log/LogLevel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, p0, v1, v2}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_0
    return-void
.end method

.method public static varargs logd(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # [Ljava/lang/String;

    .prologue
    .line 175
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 176
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 179
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    sget-object v2, Lcom/taobao/tao/log/LogLevel;->D:Lcom/taobao/tao/log/LogLevel;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, p1}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_2
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 152
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 153
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, p0, v1, v2}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_1
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 285
    if-nez p2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v1

    sget-object v2, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    invoke-interface {v1, v2, p0}, Lc8/tHf;->isFilter(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-static {p1, p2}, Lc8/wHf;->getExceptionMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0, v2}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs loge(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # [Ljava/lang/String;

    .prologue
    .line 217
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 218
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 221
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    sget-object v2, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, p1}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :cond_2
    return-void
.end method

.method public static logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 136
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 137
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    .line 139
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->I:Lcom/taobao/tao/log/LogLevel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, p0, v1, v2}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_0
    return-void
.end method

.method public static varargs logi(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # [Ljava/lang/String;

    .prologue
    .line 189
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 190
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 193
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    sget-object v2, Lcom/taobao/tao/log/LogLevel;->I:Lcom/taobao/tao/log/LogLevel;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, p1}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_2
    return-void
.end method

.method public static logicErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "extData"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    sget-object v2, Lcom/taobao/tao/log/LogLevel;->I:Lcom/taobao/tao/log/LogLevel;

    const-string/jumbo v4, "F"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v5, v3

    const/4 v3, 0x1

    aput-object p2, v5, v3

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lc8/wHf;->professionLog(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 120
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 121
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    .line 123
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->V:Lcom/taobao/tao/log/LogLevel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, p0, v1, v2}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_0
    return-void
.end method

.method public static varargs logv(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # [Ljava/lang/String;

    .prologue
    .line 160
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 161
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 164
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    sget-object v2, Lcom/taobao/tao/log/LogLevel;->V:Lcom/taobao/tao/log/LogLevel;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, p1}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_2
    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 145
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    .line 147
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->W:Lcom/taobao/tao/log/LogLevel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, p0, v1, v2}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_0
    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 275
    if-nez p2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v1

    sget-object v2, Lcom/taobao/tao/log/LogLevel;->W:Lcom/taobao/tao/log/LogLevel;

    invoke-interface {v1, v2, p0}, Lc8/tHf;->isFilter(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-static {p1, p2}, Lc8/wHf;->getExceptionMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/taobao/tao/log/LogLevel;->W:Lcom/taobao/tao/log/LogLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0, v2}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs logw(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # [Ljava/lang/String;

    .prologue
    .line 203
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 204
    invoke-static {}, Lc8/EHf;->isDebugable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 207
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    sget-object v2, Lcom/taobao/tao/log/LogLevel;->W:Lcom/taobao/tao/log/LogLevel;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, p1}, Lc8/wHf;->log(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_2
    return-void
.end method

.method private static varargs makeLog(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "level"    # Lcom/taobao/tao/log/LogLevel;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "clientID"    # Ljava/lang/String;
    .param p4, "serverID"    # Ljava/lang/String;
    .param p5, "format"    # Ljava/lang/String;
    .param p6, "content"    # [Ljava/lang/Object;

    .prologue
    .line 23
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v1

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lc8/tHf;->isFilter(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {}, Lc8/eIf;->getInstance()Lc8/eIf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/eIf;->isMemoryLimit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v1

    sget-object v2, Lcom/taobao/tao/log/LogLevel;->W:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v2}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 35
    :cond_2
    new-instance v0, Lc8/BHf;

    invoke-direct {v0}, Lc8/BHf;-><init>()V

    .line 36
    .local v0, "tLogEntity":Lc8/BHf;
    iput-object p0, v0, Lc8/BHf;->logLevel:Lcom/taobao/tao/log/LogLevel;

    .line 37
    iput-object p1, v0, Lc8/BHf;->tag:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Lc8/BHf;->type:Ljava/lang/String;

    .line 39
    sget-object v1, Lc8/wHf;->SERIAL_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lc8/BHf;->serialnumber:J

    .line 40
    iput-object p3, v0, Lc8/BHf;->clientID:Ljava/lang/String;

    .line 41
    iput-object p4, v0, Lc8/BHf;->serverID:Ljava/lang/String;

    .line 42
    iput-object p5, v0, Lc8/BHf;->format:Ljava/lang/String;

    .line 43
    iput-object p6, v0, Lc8/BHf;->content:[Ljava/lang/Object;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/BHf;->timestamp:J

    .line 45
    invoke-static {v0}, Lc8/IHf;->countLengthOfLog(Lc8/BHf;)I

    move-result v1

    iput v1, v0, Lc8/BHf;->length:I

    .line 46
    invoke-static {}, Lc8/eIf;->getInstance()Lc8/eIf;

    move-result-object v1

    const-string/jumbo v2, "normal"

    invoke-virtual {v1, v0, v2}, Lc8/eIf;->put(Lc8/BHf;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static varargs professionLog(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "clientId"    # Ljava/lang/String;
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/taobao/tao/log/LogLevel;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "content"    # [Ljava/lang/Object;

    .prologue
    .line 51
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v1

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v1

    invoke-interface {v1}, Lc8/tHf;->isOpenLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v0, Lc8/BHf;

    invoke-direct {v0}, Lc8/BHf;-><init>()V

    .line 56
    .local v0, "tLogEntity":Lc8/BHf;
    iput-object p2, v0, Lc8/BHf;->logLevel:Lcom/taobao/tao/log/LogLevel;

    .line 57
    iput-object p3, v0, Lc8/BHf;->tag:Ljava/lang/String;

    .line 58
    iput-object p4, v0, Lc8/BHf;->type:Ljava/lang/String;

    .line 59
    iput-object p0, v0, Lc8/BHf;->clientID:Ljava/lang/String;

    .line 60
    iput-object p1, v0, Lc8/BHf;->serverID:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, ""

    iput-object v1, v0, Lc8/BHf;->format:Ljava/lang/String;

    .line 62
    iput-object p5, v0, Lc8/BHf;->content:[Ljava/lang/Object;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/BHf;->timestamp:J

    .line 64
    invoke-static {v0}, Lc8/IHf;->countLengthOfLog(Lc8/BHf;)I

    move-result v1

    iput v1, v0, Lc8/BHf;->length:I

    .line 65
    invoke-static {}, Lc8/eIf;->getInstance()Lc8/eIf;

    move-result-object v1

    const-string/jumbo v2, "profession"

    invoke-virtual {v1, v0, v2}, Lc8/eIf;->put(Lc8/BHf;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sceneLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "extData"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    sget-object v2, Lcom/taobao/tao/log/LogLevel;->I:Lcom/taobao/tao/log/LogLevel;

    const-string/jumbo v4, "D"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v5, v3

    const/4 v3, 0x1

    aput-object p2, v5, v3

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lc8/wHf;->professionLog(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static traceLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "clientTraceId"    # Ljava/lang/String;
    .param p1, "serverTraceId"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    sget-object v2, Lcom/taobao/tao/log/LogLevel;->I:Lcom/taobao/tao/log/LogLevel;

    const-string/jumbo v3, "Trace"

    const-string/jumbo v4, "T"

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lc8/wHf;->professionLog(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static userOptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "extData"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    sget-object v2, Lcom/taobao/tao/log/LogLevel;->I:Lcom/taobao/tao/log/LogLevel;

    const-string/jumbo v4, "U"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v5, v3

    const/4 v3, 0x1

    aput-object p2, v5, v3

    const/4 v3, 0x2

    aput-object p3, v5, v3

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lc8/wHf;->professionLog(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
