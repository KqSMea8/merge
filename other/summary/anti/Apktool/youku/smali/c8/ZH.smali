.class public final Lc8/ZH;
.super Ljava/lang/Object;
.source "TaoLog.java"


# static fields
.field public static LogLevel:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static enabled:Z = false

.field private static impl:Lc8/fI; = null

.field private static final tagPre:Ljava/lang/String; = "WindVane."


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 21
    const/4 v4, 0x0

    sput-boolean v4, Lc8/ZH;->enabled:Z

    .line 23
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lc8/ZH;->LogLevel:Ljava/util/Map;

    .line 26
    new-instance v4, Lc8/eI;

    invoke-direct {v4}, Lc8/eI;-><init>()V

    invoke-static {v4}, Lc8/ZH;->setImpl(Lc8/fI;)V

    .line 28
    invoke-static {}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->values()[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    move-result-object v0

    .local v0, "arr$":[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 29
    .local v3, "leve":Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;
    sget-object v4, Lc8/ZH;->LogLevel:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->getLogLevelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->getLogLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v3    # "leve":Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;
    :cond_0
    new-instance v4, Lc8/eI;

    invoke-direct {v4}, Lc8/eI;-><init>()V

    sput-object v4, Lc8/ZH;->impl:Lc8/fI;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lc8/ZH;->shouldPrintDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/fI;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 58
    invoke-static {}, Lc8/ZH;->shouldPrintDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3}, Lc8/ZH;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lc8/fI;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 52
    invoke-static {}, Lc8/ZH;->shouldPrintDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lc8/ZH;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/fI;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lc8/ZH;->shouldPrintError()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/fI;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 99
    invoke-static {}, Lc8/ZH;->shouldPrintError()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3}, Lc8/ZH;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lc8/fI;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 92
    invoke-static {}, Lc8/ZH;->shouldPrintError()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lc8/ZH;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/fI;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method private static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 162
    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getLogStatus()Z
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/ZH;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {}, Lc8/ZH;->shouldPrintInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/fI;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 111
    invoke-static {}, Lc8/ZH;->shouldPrintInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3}, Lc8/ZH;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lc8/fI;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 105
    invoke-static {}, Lc8/ZH;->shouldPrintInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lc8/ZH;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/fI;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public static setImpl(Lc8/fI;)V
    .locals 2
    .param p0, "implement"    # Lc8/fI;

    .prologue
    .line 36
    invoke-static {}, Lc8/OH;->isAppDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo v0, "TaoLog"

    const-string/jumbo v1, "Ignore set log impl on debug mode"

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    sput-object p0, Lc8/ZH;->impl:Lc8/fI;

    goto :goto_0
.end method

.method public static setLogSwitcher(Z)V
    .locals 0
    .param p0, "open"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lc8/ZH;->enabled:Z

    .line 49
    return-void
.end method

.method public static shouldPrintDebug()Z
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->DEBUG:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    invoke-virtual {v1}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->getLogLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lc8/fI;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldPrintError()Z
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->ERROR:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    invoke-virtual {v1}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->getLogLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lc8/fI;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldPrintInfo()Z
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->INFO:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    invoke-virtual {v1}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->getLogLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lc8/fI;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldPrintVerbose()Z
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->VERBOSE:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    invoke-virtual {v1}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->getLogLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lc8/fI;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldPrintWarn()Z
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->WARNING:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    invoke-virtual {v1}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->getLogLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lc8/fI;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Lc8/ZH;->shouldPrintVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/fI;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 123
    invoke-static {}, Lc8/ZH;->shouldPrintVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3}, Lc8/ZH;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lc8/fI;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 117
    invoke-static {}, Lc8/ZH;->shouldPrintVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lc8/ZH;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/fI;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {}, Lc8/ZH;->shouldPrintWarn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lc8/fI;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 135
    invoke-static {}, Lc8/ZH;->shouldPrintWarn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3}, Lc8/ZH;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lc8/fI;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 129
    invoke-static {}, Lc8/ZH;->shouldPrintWarn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lc8/ZH;->impl:Lc8/fI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WindVane."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lc8/ZH;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/fI;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method
