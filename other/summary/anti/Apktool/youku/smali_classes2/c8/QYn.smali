.class public Lc8/QYn;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static DEBUG:Z = false

.field public static ERROR:Z = false

.field public static INFO:Z = false

.field public static LOGLEVEL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "UpsPlayer"

.field public static VERBOSE:Z

.field public static WARN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 22
    sput v2, Lc8/QYn;->LOGLEVEL:I

    sput-boolean v2, Lc8/QYn;->VERBOSE:Z

    .line 23
    sput-boolean v1, Lc8/QYn;->DEBUG:Z

    .line 24
    sget v0, Lc8/QYn;->LOGLEVEL:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lc8/QYn;->INFO:Z

    .line 25
    sget v0, Lc8/QYn;->LOGLEVEL:I

    if-le v0, v1, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lc8/QYn;->WARN:Z

    .line 26
    sput-boolean v1, Lc8/QYn;->ERROR:Z

    return-void

    :cond_1
    move v0, v2

    .line 24
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-boolean v0, Lc8/QYn;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Lc8/QYn;->getMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    :cond_0
    return-void
.end method

.method public static d_long(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-boolean v5, Lc8/QYn;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 86
    if-nez p1, :cond_1

    .line 104
    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 89
    .local v2, "len":I
    const/16 v3, 0x7d0

    .line 92
    .local v3, "maxLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 94
    add-int v5, v1, v3

    if-le v2, v5, :cond_2

    .line 95
    add-int v0, v1, v3

    .line 100
    .local v0, "end":I
    :goto_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "sub":Ljava/lang/String;
    invoke-static {p0, v4}, Lc8/QYn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    add-int/2addr v1, v3

    goto :goto_0

    .line 97
    .end local v0    # "end":I
    .end local v4    # "sub":Ljava/lang/String;
    :cond_2
    move v0, v2

    .restart local v0    # "end":I
    goto :goto_1
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-boolean v0, Lc8/QYn;->ERROR:Z

    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v0, "UpsPlayer"

    invoke-static {p0, p1}, Lc8/QYn;->getMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method

.method protected static getMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "str":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_0
    if-eqz p1, :cond_1

    .line 43
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
