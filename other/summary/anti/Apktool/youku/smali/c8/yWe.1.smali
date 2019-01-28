.class public Lc8/yWe;
.super Ljava/lang/Object;
.source "UtdidLogger.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static isDebug:Z

.field private static isSDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    const-string/jumbo v0, "Utdid"

    sput-object v0, Lc8/yWe;->TAG:Ljava/lang/String;

    .line 14
    sput-boolean v1, Lc8/yWe;->isDebug:Z

    .line 15
    sput-boolean v1, Lc8/yWe;->isSDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildLogMsg(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
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
    .line 162
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 163
    :cond_0
    const-string/jumbo v4, ""

    .line 181
    :goto_0
    return-object v4

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lc8/yWe;->getStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 169
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v3, ""

    .line 170
    .local v3, "method":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 171
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 174
    :cond_2
    const-string/jumbo v4, "[%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 181
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static varargs buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 129
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 130
    const-string/jumbo v4, ""

    .line 158
    :goto_0
    return-object v4

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lc8/yWe;->getStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 136
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v3, ""

    .line 137
    .local v3, "method":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 141
    :cond_1
    const-string/jumbo v4, "[%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    if-eqz p0, :cond_2

    .line 144
    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_2
    if-eqz p1, :cond_4

    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, "i":I
    :goto_1
    add-int/lit8 v4, v2, 0x1

    array-length v5, p1

    if-ge v4, v5, :cond_3

    .line 150
    const-string/jumbo v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    aget-object v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lc8/yWe;->formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    :cond_3
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_4

    .line 154
    const-string/jumbo v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    aget-object v4, p1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static buildLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/yWe;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/yWe;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object p0, Lc8/yWe;->TAG:Ljava/lang/String;

    .line 114
    :cond_0
    invoke-static {}, Lc8/yWe;->getStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 115
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v0, ""

    .line 116
    .local v0, "className":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 117
    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->StackTraceElement_getClassName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 119
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 120
    .local v2, "index":I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .end local v2    # "index":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "pid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 30
    sget-boolean v0, Lc8/yWe;->isDebug:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lc8/yWe;->buildLogTag()Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc8/yWe;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    .line 48
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lc8/yWe;->isDebug:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lc8/yWe;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p1}, Lc8/yWe;->buildLogMsg(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 51
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 54
    sget-boolean v0, Lc8/yWe;->isDebug:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lc8/yWe;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p1}, Lc8/yWe;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method

.method public static e()V
    .locals 3

    .prologue
    .line 36
    sget-boolean v0, Lc8/yWe;->isDebug:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lc8/yWe;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lc8/yWe;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 90
    sget-boolean v0, Lc8/yWe;->isDebug:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lc8/yWe;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2}, Lc8/yWe;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 84
    sget-boolean v0, Lc8/yWe;->isDebug:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lc8/yWe;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lc8/yWe;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    return-void
.end method

.method private static formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 99
    sget-boolean v0, Lc8/yWe;->isDebug:Z

    if-eqz v0, :cond_2

    .line 100
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

    .line 102
    .restart local p0    # "key":Ljava/lang/Object;
    .restart local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static getStackTrace()Ljava/lang/StackTraceElement;
    .locals 6

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 188
    .local v1, "sts":[Ljava/lang/StackTraceElement;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 189
    .local v0, "st":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v4

    if-nez v4, :cond_0

    .line 192
    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->StackTraceElement_getClassName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/Thread;

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->StackTraceElement_getClassName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lc8/yWe;

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 201
    .end local v0    # "st":Ljava/lang/StackTraceElement;
    :goto_1
    return-object v0

    .line 188
    .restart local v0    # "st":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "st":Ljava/lang/StackTraceElement;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 42
    sget-boolean v0, Lc8/yWe;->isDebug:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lc8/yWe;->buildLogTag()Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc8/yWe;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 66
    sget-boolean v0, Lc8/yWe;->isDebug:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lc8/yWe;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p1}, Lc8/yWe;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lc8/yWe;->isDebug:Z

    return v0
.end method

.method public static varargs sd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 60
    sget-boolean v0, Lc8/yWe;->isSDebug:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lc8/yWe;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p1}, Lc8/yWe;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 2
    .param p0, "isDebug"    # Z

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDebug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    sput-boolean p0, Lc8/yWe;->isDebug:Z

    .line 20
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 78
    sget-boolean v0, Lc8/yWe;->isDebug:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lc8/yWe;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p2}, Lc8/yWe;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 72
    sget-boolean v0, Lc8/yWe;->isDebug:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lc8/yWe;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p1}, Lc8/yWe;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    :cond_0
    return-void
.end method
