.class public Lc8/HOm;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static DEBUG:Z

.field public static ERROR:Z

.field public static INFO:Z

.field public static LOGLEVEL:I

.field public static TAG:Ljava/lang/String;

.field public static VERBOSE:Z

.field public static WARN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 18
    const-string/jumbo v0, "PLAYER"

    sput-object v0, Lc8/HOm;->TAG:Ljava/lang/String;

    .line 19
    sget-boolean v0, Lc8/nEj;->LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 21
    :goto_0
    sput v0, Lc8/HOm;->LOGLEVEL:I

    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Lc8/HOm;->VERBOSE:Z

    .line 22
    sget-boolean v0, Lc8/nEj;->LOG:Z

    sput-boolean v0, Lc8/HOm;->DEBUG:Z

    .line 23
    sget v0, Lc8/HOm;->LOGLEVEL:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_2

    move v0, v2

    :goto_2
    sput-boolean v0, Lc8/HOm;->INFO:Z

    .line 24
    sget v0, Lc8/HOm;->LOGLEVEL:I

    if-le v0, v2, :cond_3

    :goto_3
    sput-boolean v2, Lc8/HOm;->WARN:Z

    .line 25
    sput-boolean v1, Lc8/HOm;->ERROR:Z

    return-void

    :cond_0
    move v0, v1

    .line 19
    goto :goto_0

    :cond_1
    move v0, v1

    .line 21
    goto :goto_1

    :cond_2
    move v0, v1

    .line 23
    goto :goto_2

    :cond_3
    move v2, v1

    .line 24
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-boolean v0, Lc8/HOm;->ERROR:Z

    if-eqz v0, :cond_1

    .line 78
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    sget-boolean v0, Lc8/HOm;->ERROR:Z

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lc8/HOm;->TAG:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :cond_1
    return-void
.end method
