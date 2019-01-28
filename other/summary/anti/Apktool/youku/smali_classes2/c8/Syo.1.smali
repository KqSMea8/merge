.class public Lc8/Syo;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static DEBUG:Z = false

.field public static ERROR:Z = false

.field public static INFO:Z = false

.field public static LOGLEVEL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Youku"

.field public static VERBOSE:Z

.field public static WARN:Z

.field public static flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9
    sget v0, Lc8/VLj;->flags:I

    sput v0, Lc8/Syo;->flags:I

    .line 20
    invoke-static {}, Lc8/Gyo;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 22
    :goto_0
    sput v0, Lc8/Syo;->LOGLEVEL:I

    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Lc8/Syo;->VERBOSE:Z

    .line 23
    sget v0, Lc8/Syo;->LOGLEVEL:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_2

    move v0, v2

    :goto_2
    sput-boolean v0, Lc8/Syo;->DEBUG:Z

    .line 24
    sget v0, Lc8/Syo;->LOGLEVEL:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_3

    move v0, v2

    :goto_3
    sput-boolean v0, Lc8/Syo;->INFO:Z

    .line 25
    sget v0, Lc8/Syo;->LOGLEVEL:I

    if-le v0, v2, :cond_4

    move v0, v2

    :goto_4
    sput-boolean v0, Lc8/Syo;->WARN:Z

    .line 26
    sget v0, Lc8/Syo;->LOGLEVEL:I

    if-lez v0, :cond_5

    :goto_5
    sput-boolean v2, Lc8/Syo;->ERROR:Z

    return-void

    :cond_0
    move v0, v1

    .line 20
    goto :goto_0

    :cond_1
    move v0, v1

    .line 22
    goto :goto_1

    :cond_2
    move v0, v1

    .line 23
    goto :goto_2

    :cond_3
    move v0, v1

    .line 24
    goto :goto_3

    :cond_4
    move v0, v1

    .line 25
    goto :goto_4

    :cond_5
    move v2, v1

    .line 26
    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-boolean v0, Lc8/VLj;->isShowLog:Z

    if-eqz v0, :cond_1

    .line 93
    const-string/jumbo v0, "Youku"

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-boolean v0, Lc8/VLj;->isShowLog:Z

    if-eqz v0, :cond_1

    .line 83
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    sget-boolean v0, Lc8/VLj;->isShowLog:Z

    if-eqz v0, :cond_1

    .line 88
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    sget-boolean v0, Lc8/VLj;->isShowLog:Z

    if-eqz v0, :cond_1

    .line 98
    const-string/jumbo v0, "Youku"

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :cond_1
    return-void
.end method

.method public static wz(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-boolean v0, Lc8/VLj;->isShowLog:Z

    if-eqz v0, :cond_1

    .line 63
    const-string/jumbo v0, "WZ"

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    return-void
.end method
