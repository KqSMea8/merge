.class public Lc8/BMp;
.super Ljava/lang/Object;
.source "TBSdkLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/common/util/TBSdkLog$LogEnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.TBSdkLog"

.field private static logEnabaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/common/util/TBSdkLog$LogEnable;",
            ">;"
        }
    .end annotation
.end field

.field private static logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field private static mLogAdapter:Lc8/kMp;

.field private static printLog:Z

.field private static tLogEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 13
    sput-boolean v4, Lc8/BMp;->printLog:Z

    .line 14
    sput-boolean v4, Lc8/BMp;->tLogEnabled:Z

    .line 15
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    sput-object v4, Lc8/BMp;->logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .line 16
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lc8/BMp;->logEnabaleMap:Ljava/util/Map;

    .line 34
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->values()[Lmtopsdk/common/util/TBSdkLog$LogEnable;

    move-result-object v0

    .local v0, "arr$":[Lmtopsdk/common/util/TBSdkLog$LogEnable;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 35
    .local v3, "logEnable":Lmtopsdk/common/util/TBSdkLog$LogEnable;
    sget-object v4, Lc8/BMp;->logEnabaleMap:Ljava/util/Map;

    invoke-virtual {v3}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->getLogEnable()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v3    # "logEnable":Lmtopsdk/common/util/TBSdkLog$LogEnable;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private static varargs append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "seqNo"    # Ljava/lang/String;
    .param p1, "msg"    # [Ljava/lang/String;

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 212
    const-string/jumbo v2, "[seq:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_0
    if-eqz p1, :cond_2

    .line 215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 216
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 218
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-boolean v0, Lc8/BMp;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    const/4 v1, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-static {p1, v2}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p0, v2, v3}, Lc8/kMp;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-boolean v0, Lc8/BMp;->printLog:Z

    if-eqz v0, :cond_0

    .line 96
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # [Ljava/lang/String;

    .prologue
    .line 102
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-boolean v0, Lc8/BMp;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    const/4 v1, 0x2

    invoke-static {p1, p2}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p0, v2, v3}, Lc8/kMp;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    sget-boolean v0, Lc8/BMp;->printLog:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1, p2}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    sget-boolean v0, Lc8/BMp;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    const/16 v1, 0x10

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-static {p1, v2}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p0, v2, v3}, Lc8/kMp;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    sget-boolean v0, Lc8/BMp;->printLog:Z

    if-eqz v0, :cond_0

    .line 187
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 197
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-boolean v0, Lc8/BMp;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    const/16 v1, 0x10

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-static {p1, v2}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p0, v2, p3}, Lc8/kMp;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    sget-boolean v0, Lc8/BMp;->printLog:Z

    if-eqz v0, :cond_0

    .line 203
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-boolean v0, Lc8/BMp;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    const/4 v1, 0x4

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-static {p1, v2}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p0, v2, v3}, Lc8/kMp;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    sget-boolean v0, Lc8/BMp;->printLog:Z

    if-eqz v0, :cond_0

    .line 126
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # [Ljava/lang/String;

    .prologue
    .line 132
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-boolean v0, Lc8/BMp;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 134
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    const/4 v1, 0x4

    invoke-static {p1, p2}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p0, v2, v3}, Lc8/kMp;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    sget-boolean v0, Lc8/BMp;->printLog:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p1, p2}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z
    .locals 3
    .param p0, "logEnable"    # Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .prologue
    .line 226
    sget-boolean v1, Lc8/BMp;->tLogEnabled:Z

    if-eqz v1, :cond_0

    .line 227
    sget-object v1, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    if-eqz v1, :cond_0

    .line 228
    sget-object v1, Lc8/BMp;->logEnabaleMap:Ljava/util/Map;

    sget-object v2, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    invoke-interface {v2}, Lc8/kMp;->getLogLevel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .line 229
    .local v0, "logAdapterLevel":Lmtopsdk/common/util/TBSdkLog$LogEnable;
    if-eqz v0, :cond_0

    sget-object v1, Lc8/BMp;->logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-virtual {v1}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 230
    invoke-static {v0}, Lc8/BMp;->setLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)V

    .line 234
    .end local v0    # "logAdapterLevel":Lmtopsdk/common/util/TBSdkLog$LogEnable;
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ordinal()I

    move-result v1

    sget-object v2, Lc8/BMp;->logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-virtual {v2}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPrintLog()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lc8/BMp;->printLog:Z

    return v0
.end method

.method public static logTraceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "clientTraceId"    # Ljava/lang/String;
    .param p1, "serverTraceId"    # Ljava/lang/String;

    .prologue
    .line 240
    :try_start_0
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    invoke-interface {v0, p0, p1}, Lc8/kMp;->traceLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setLogAdapter(Lc8/kMp;)V
    .locals 2
    .param p0, "logAdapter"    # Lc8/kMp;

    .prologue
    .line 45
    sput-object p0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[setLogAdapter] logAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static setLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)V
    .locals 2
    .param p0, "logEnable"    # Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    .line 80
    sput-object p0, Lc8/BMp;->logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[setLogEnable] logEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method

.method public static setPrintLog(Z)V
    .locals 2
    .param p0, "printLog"    # Z

    .prologue
    .line 55
    sput-boolean p0, Lc8/BMp;->printLog:Z

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[setPrintLog] printLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static setTLogEnabled(Z)V
    .locals 2
    .param p0, "tLogEnabled"    # Z

    .prologue
    .line 69
    sput-boolean p0, Lc8/BMp;->tLogEnabled:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[setTLogEnabled] tLogEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 149
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-boolean v0, Lc8/BMp;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    const/16 v1, 0x8

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-static {p1, v2}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p0, v2, v3}, Lc8/kMp;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-boolean v0, Lc8/BMp;->printLog:Z

    if-eqz v0, :cond_0

    .line 155
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 165
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-boolean v0, Lc8/BMp;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lc8/BMp;->mLogAdapter:Lc8/kMp;

    const/16 v1, 0x8

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-static {p1, v2}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p0, v2, p3}, Lc8/kMp;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    sget-boolean v0, Lc8/BMp;->printLog:Z

    if-eqz v0, :cond_0

    .line 171
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Lc8/BMp;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method
