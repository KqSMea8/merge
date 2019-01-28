.class public Lc8/FWc;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static DEBUG:Z

.field public static ERROR:Z

.field public static INFO:Z

.field public static LOGLEVEL:I

.field public static VERBOSE:Z

.field public static WARN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    sput v2, Lc8/FWc;->LOGLEVEL:I

    sput-boolean v2, Lc8/FWc;->VERBOSE:Z

    .line 20
    sget-boolean v0, Lc8/KWc;->LOG:Z

    sput-boolean v0, Lc8/FWc;->DEBUG:Z

    .line 21
    sget v0, Lc8/FWc;->LOGLEVEL:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lc8/FWc;->INFO:Z

    .line 22
    sget v0, Lc8/FWc;->LOGLEVEL:I

    if-le v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lc8/FWc;->WARN:Z

    .line 23
    sget-boolean v0, Lc8/KWc;->LOG:Z

    sput-boolean v0, Lc8/FWc;->ERROR:Z

    return-void

    :cond_0
    move v0, v2

    .line 21
    goto :goto_0

    :cond_1
    move v1, v2

    .line 22
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d_long(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-boolean v3, Lc8/FWc;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "index":I
    const/16 v1, 0xfa0

    .line 100
    .local v1, "maxLength":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v4, v0, v1

    if-gt v3, v4, :cond_0

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "sub":Ljava/lang/String;
    :goto_1
    add-int/2addr v0, v1

    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    goto :goto_0

    .line 104
    .end local v2    # "sub":Ljava/lang/String;
    :cond_0
    add-int v3, v0, v1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "sub":Ljava/lang/String;
    goto :goto_1

    .line 111
    .end local v0    # "index":I
    .end local v1    # "maxLength":I
    .end local v2    # "sub":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-boolean v0, Lc8/FWc;->ERROR:Z

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lc8/KWc;->TAG:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-boolean v0, Lc8/FWc;->ERROR:Z

    if-eqz v0, :cond_1

    .line 76
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    sget-boolean v0, Lc8/FWc;->ERROR:Z

    if-eqz v0, :cond_1

    .line 81
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    sget-boolean v0, Lc8/FWc;->ERROR:Z

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Lc8/KWc;->TAG:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :cond_1
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 4
    .param p0, "debugMode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_0

    const/4 v0, 0x5

    .line 27
    :goto_0
    sput v0, Lc8/FWc;->LOGLEVEL:I

    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Lc8/FWc;->VERBOSE:Z

    .line 28
    sget v0, Lc8/FWc;->LOGLEVEL:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_2

    move v0, v2

    :goto_2
    sput-boolean v0, Lc8/FWc;->DEBUG:Z

    .line 29
    sget v0, Lc8/FWc;->LOGLEVEL:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_3

    move v0, v2

    :goto_3
    sput-boolean v0, Lc8/FWc;->INFO:Z

    .line 30
    sget v0, Lc8/FWc;->LOGLEVEL:I

    if-le v0, v2, :cond_4

    move v0, v2

    :goto_4
    sput-boolean v0, Lc8/FWc;->WARN:Z

    .line 31
    sget v0, Lc8/FWc;->LOGLEVEL:I

    if-lez v0, :cond_5

    :goto_5
    sput-boolean v2, Lc8/FWc;->ERROR:Z

    .line 32
    return-void

    :cond_0
    move v0, v1

    .line 26
    goto :goto_0

    :cond_1
    move v0, v1

    .line 27
    goto :goto_1

    :cond_2
    move v0, v1

    .line 28
    goto :goto_2

    :cond_3
    move v0, v1

    .line 29
    goto :goto_3

    :cond_4
    move v0, v1

    .line 30
    goto :goto_4

    :cond_5
    move v2, v1

    .line 31
    goto :goto_5
.end method
