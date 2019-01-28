.class public Lc8/Oao;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static DEBUG:Z

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "US_BASE"

    sput-object v0, Lc8/Oao;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Oao;->DEBUG:Z

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lc8/Oao;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    return-void
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lc8/Oao;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    sget-object v0, Lc8/Oao;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lc8/Oao;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    const/4 v0, -0x1

    return v0
.end method

.method public static error(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0}, Lc8/Oao;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lc8/Oao;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Lc8/Oao;->i(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0, p1}, Lc8/Oao;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static printf(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .param p0, "debugMode"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lc8/Oao;->DEBUG:Z

    .line 27
    return-void
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lc8/Oao;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lc8/Oao;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 203
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 191
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lc8/Oao;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {p0}, Lc8/Oao;->w(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 226
    invoke-static {p0, p1}, Lc8/Oao;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
