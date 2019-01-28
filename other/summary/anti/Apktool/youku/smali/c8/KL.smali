.class public Lc8/KL;
.super Ljava/lang/Object;
.source "ALog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/JL;,
        Lc8/IL;
    }
.end annotation


# static fields
.field private static LOG_BREAK:Ljava/lang/Object;

.field private static canUseTlog:Z

.field private static isPrintLog:Z

.field private static volatile log:Lc8/IL;

.field public static logcat:Lc8/JL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 83
    new-instance v0, Lc8/JL;

    invoke-direct {v0}, Lc8/JL;-><init>()V

    .line 84
    sput-object v0, Lc8/KL;->logcat:Lc8/JL;

    sput-object v0, Lc8/KL;->log:Lc8/IL;

    .line 86
    const-string/jumbo v0, "|"

    sput-object v0, Lc8/KL;->LOG_BREAK:Ljava/lang/Object;

    .line 87
    sput-boolean v1, Lc8/KL;->isPrintLog:Z

    .line 89
    sput-boolean v1, Lc8/KL;->canUseTlog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static varargs buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "seq"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 195
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 196
    const-string/jumbo v2, ""

    .line 221
    :goto_0
    return-object v2

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    sget-object v2, Lc8/KL;->LOG_BREAK:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_1
    if-eqz p0, :cond_2

    .line 205
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_2
    if-eqz p2, :cond_6

    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    array-length v3, p2

    if-ge v2, v3, :cond_5

    .line 211
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, p2, v1

    if-eqz v2, :cond_3

    aget-object v2, p2, v1

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 211
    :cond_3
    const-string/jumbo v2, ""

    goto :goto_2

    :cond_4
    const-string/jumbo v2, ""

    goto :goto_3

    .line 216
    :cond_5
    array-length v2, p2

    if-ge v1, v2, :cond_6

    .line 217
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private static buildLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 191
    return-object p0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    invoke-static {p0}, Lc8/KL;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lc8/KL;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/IL;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 183
    const/4 v0, 0x4

    invoke-static {v0}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    invoke-static {p0}, Lc8/KL;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p4}, Lc8/KL;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lc8/IL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 175
    const/4 v0, 0x4

    invoke-static {v0}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    invoke-static {p0}, Lc8/KL;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lc8/KL;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/IL;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 151
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    invoke-static {p0}, Lc8/KL;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lc8/KL;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/IL;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method public static isPrintLog(I)Z
    .locals 2
    .param p0, "logLevel"    # I

    .prologue
    const/4 v0, 0x0

    .line 123
    sget-boolean v1, Lc8/KL;->isPrintLog:Z

    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    sget-object v1, Lc8/KL;->log:Lc8/IL;

    if-eqz v1, :cond_0

    .line 128
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    invoke-interface {v0, p0}, Lc8/IL;->isPrintLog(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static setLog(Lc8/IL;)V
    .locals 2
    .param p0, "log"    # Lc8/IL;

    .prologue
    .line 92
    if-nez p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    sget-boolean v0, Lc8/KL;->canUseTlog:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tlog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :cond_2
    invoke-interface {p0}, Lc8/IL;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sput-object p0, Lc8/KL;->log:Lc8/IL;

    goto :goto_0
.end method

.method public static setPrintLog(Z)V
    .locals 0
    .param p0, "printLog"    # Z

    .prologue
    .line 113
    sput-boolean p0, Lc8/KL;->isPrintLog:Z

    .line 114
    return-void
.end method

.method public static setUseTlog(Z)V
    .locals 1
    .param p0, "b"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    if-nez p0, :cond_0

    .line 230
    const/4 v0, 0x0

    sput-boolean v0, Lc8/KL;->canUseTlog:Z

    .line 231
    sget-object v0, Lc8/KL;->logcat:Lc8/JL;

    sput-object v0, Lc8/KL;->log:Lc8/IL;

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lc8/KL;->canUseTlog:Z

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 167
    const/4 v0, 0x3

    invoke-static {v0}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    invoke-static {p0}, Lc8/KL;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p4}, Lc8/KL;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lc8/IL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 159
    const/4 v0, 0x3

    invoke-static {v0}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lc8/KL;->log:Lc8/IL;

    invoke-static {p0}, Lc8/KL;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lc8/KL;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/IL;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method
