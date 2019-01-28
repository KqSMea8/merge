.class public Lc8/NBb;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_ENABLELOG:Ljava/lang/String; = "enablelog"

.field private static isDebug:Z

.field private static log_prefix:Ljava/lang/String;

.field private static mTlogMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static s_is_dev:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    const-string/jumbo v0, "Analytics"

    sput-object v0, Lc8/NBb;->TAG:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "Analytics."

    sput-object v0, Lc8/NBb;->log_prefix:Ljava/lang/String;

    .line 23
    sput-boolean v3, Lc8/NBb;->s_is_dev:Z

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    sput-object v0, Lc8/NBb;->mTlogMap:Ljava/util/HashMap;

    const-string/jumbo v1, "V"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lc8/NBb;->mTlogMap:Ljava/util/HashMap;

    const-string/jumbo v1, "D"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lc8/NBb;->mTlogMap:Ljava/util/HashMap;

    const-string/jumbo v1, "I"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lc8/NBb;->mTlogMap:Ljava/util/HashMap;

    const-string/jumbo v1, "W"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lc8/NBb;->mTlogMap:Ljava/util/HashMap;

    const-string/jumbo v1, "E"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lc8/NBb;->mTlogMap:Ljava/util/HashMap;

    const-string/jumbo v1, "L"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sput-boolean v3, Lc8/NBb;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildLogMsg(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 248
    :cond_0
    const-string/jumbo v5, ""

    .line 269
    :goto_0
    return-object v5

    .line 251
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lc8/NBb;->getStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 254
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v4, ""

    .line 255
    .local v4, "method":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 259
    :cond_2
    const-string/jumbo v5, "[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    if-eqz p0, :cond_3

    .line 262
    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 266
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 269
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method static varargs buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 214
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 215
    const-string/jumbo v4, ""

    .line 243
    :goto_0
    return-object v4

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lc8/NBb;->getStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 221
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v3, ""

    .line 222
    .local v3, "method":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 226
    :cond_1
    const-string/jumbo v4, "[%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    if-eqz p0, :cond_2

    .line 229
    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_2
    if-eqz p1, :cond_4

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "i":I
    :goto_1
    add-int/lit8 v4, v2, 0x1

    array-length v5, p1

    if-ge v4, v5, :cond_3

    .line 235
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    aget-object v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lc8/NBb;->formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    :cond_3
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_4

    .line 239
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    aget-object v4, p1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static buildLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lc8/NBb;->log_prefix:Ljava/lang/String;

    invoke-static {v0}, Lc8/NBb;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object p0, Lc8/NBb;->TAG:Ljava/lang/String;

    .line 197
    :cond_0
    invoke-static {}, Lc8/NBb;->getStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 198
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v0, ""

    .line 199
    .local v0, "className":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 200
    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->StackTraceElement_getClassName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 202
    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 203
    .local v2, "index":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    .end local v2    # "index":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "pid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "tid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "D"

    invoke-static {v0}, Lc8/NBb;->isTlogEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "D"

    invoke-static {v0}, Lc8/NBb;->isTlogEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 112
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "D"

    invoke-static {v5}, Lc8/NBb;->isTlogEnable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    :try_start_0
    invoke-static {p0, p1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "logContent":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x800

    if-le v5, v6, :cond_4

    .line 118
    const/4 v4, 0x0

    .line 119
    .local v4, "start":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 120
    .local v2, "len":I
    const/16 v1, 0x800

    .line 122
    .local v1, "index":I
    :cond_2
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 124
    move v4, v1

    add-int/lit16 v5, v1, 0x800

    if-le v5, v2, :cond_3

    move v1, v2

    .line 125
    :goto_1
    if-ne v4, v1, :cond_2

    goto :goto_0

    .line 124
    :cond_3
    add-int/lit16 v1, v4, 0x800

    goto :goto_1

    .line 130
    .end local v1    # "index":I
    .end local v2    # "len":I
    .end local v4    # "start":I
    :cond_4
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v3    # "logContent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "E"

    invoke-static {v0}, Lc8/NBb;->isTlogEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 171
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "E"

    invoke-static {v0}, Lc8/NBb;->isTlogEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 163
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "E"

    invoke-static {v0}, Lc8/NBb;->isTlogEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 186
    const-string/jumbo v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "key":Ljava/lang/Object;
    :cond_0
    aput-object p0, v1, v2

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    .end local p1    # "value":Ljava/lang/Object;
    :cond_1
    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStackTrace()Ljava/lang/StackTraceElement;
    .locals 7

    .prologue
    .line 274
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 276
    .local v4, "sts":[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v4

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 277
    .local v3, "st":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-nez v5, :cond_0

    .line 280
    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->StackTraceElement_getClassName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/Thread;

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 283
    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->StackTraceElement_getClassName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lc8/NBb;

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 289
    .end local v3    # "st":Ljava/lang/StackTraceElement;
    :goto_1
    return-object v3

    .line 276
    .restart local v3    # "st":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v3    # "st":Ljava/lang/StackTraceElement;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "I"

    invoke-static {v0}, Lc8/NBb;->isTlogEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 139
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "I"

    invoke-static {v0}, Lc8/NBb;->isTlogEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 3

    .prologue
    .line 56
    sget-boolean v0, Lc8/NBb;->isDebug:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "1"

    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v1

    const-string/jumbo v2, "enablelog"

    invoke-virtual {v1, v2}, Lc8/zzb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDev()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lc8/NBb;->s_is_dev:Z

    return v0
.end method

.method public static isTlogEnable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "level"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 64
    :try_start_0
    sget-object v0, Lc8/NBb;->mTlogMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v0, Lc8/NBb;->mTlogMap:Ljava/util/HashMap;

    const-string/jumbo v3, "Analytics"

    invoke-static {v3}, Lc8/eOf;->getLogLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gt v2, v0, :cond_0

    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static setDebug(Z)V
    .locals 2
    .param p0, "isDebug"    # Z

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set environment ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    sput-boolean p0, Lc8/NBb;->isDebug:Z

    .line 53
    return-void
.end method

.method public static setDev(Z)V
    .locals 0
    .param p0, "isDev"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lc8/NBb;->s_is_dev:Z

    .line 44
    return-void
.end method

.method public static setLogPrefix(Ljava/lang/String;)V
    .locals 0
    .param p0, "pLogPrefix"    # Ljava/lang/String;

    .prologue
    .line 47
    sput-object p0, Lc8/NBb;->log_prefix:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 155
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "W"

    invoke-static {v0}, Lc8/NBb;->isTlogEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lc8/eOf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p2}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 147
    invoke-static {}, Lc8/eOf;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "W"

    invoke-static {v0}, Lc8/NBb;->isTlogEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lc8/NBb;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p1}, Lc8/NBb;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method
