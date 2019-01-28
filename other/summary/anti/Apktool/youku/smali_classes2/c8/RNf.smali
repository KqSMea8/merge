.class public Lc8/RNf;
.super Ljava/lang/Object;
.source "FLog.java"


# static fields
.field private static sFormatLog:Lc8/TNf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 99
    invoke-static {}, Lc8/RNf;->ensureFormatLog()V

    .line 100
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lc8/TNf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p1, p2}, Lc8/RNf;->formatFileSize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 102
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    invoke-interface {v0, p0, p1, p2}, Lc8/TNf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 121
    invoke-static {}, Lc8/RNf;->ensureFormatLog()V

    .line 122
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lc8/TNf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    invoke-interface {v0, p0, p1, p2}, Lc8/TNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_0
    return-void
.end method

.method private static ensureFormatLog()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lc8/QNf;

    invoke-direct {v0}, Lc8/QNf;-><init>()V

    sput-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    .line 18
    :cond_0
    return-void
.end method

.method public static varargs formatFileSize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "fmt"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 67
    .local v3, "ret":[B
    array-length v5, v3

    .line 68
    .local v5, "total":I
    const/4 v2, 0x0

    .line 69
    .local v2, "index":I
    const/4 v1, 0x0

    .line 71
    .local v1, "findAfter":I
    :cond_0
    :goto_0
    const/16 v6, 0x25

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, "find":I
    if-ltz v0, :cond_2

    add-int/lit8 v6, v5, -0x1

    if-ge v0, v6, :cond_2

    .line 72
    add-int/lit8 v1, v0, 0x1

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 74
    .local v4, "tmp":C
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    const/16 v6, 0x4b

    if-ne v4, v6, :cond_1

    array-length v6, p1

    if-ge v2, v6, :cond_1

    .line 76
    aget-object v6, p1, v2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Lc8/RNf;->unitSize(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p1, v2

    .line 77
    const/16 v6, 0x73

    aput-byte v6, v3, v1

    .line 79
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v4    # "tmp":C
    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    return-object v6
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 107
    invoke-static {}, Lc8/RNf;->ensureFormatLog()V

    .line 108
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lc8/TNf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    invoke-interface {v0, p0, p1, p2}, Lc8/TNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :cond_0
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 86
    invoke-static {}, Lc8/RNf;->ensureFormatLog()V

    .line 87
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    invoke-interface {v0, p0}, Lc8/TNf;->isLoggable(I)Z

    move-result v0

    return v0
.end method

.method public static setFormatLog(Lc8/TNf;)V
    .locals 0
    .param p0, "formatLog"    # Lc8/TNf;

    .prologue
    .line 11
    sput-object p0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    .line 12
    return-void
.end method

.method public static setMinLevel(I)V
    .locals 1
    .param p0, "minLevel"    # I

    .prologue
    .line 21
    invoke-static {}, Lc8/RNf;->ensureFormatLog()V

    .line 22
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    invoke-interface {v0, p0}, Lc8/TNf;->setMinLevel(I)V

    .line 23
    return-void
.end method

.method public static unitSize(J)Ljava/lang/String;
    .locals 10
    .param p0, "number"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x44800000    # 1024.0f

    const/high16 v6, 0x44610000    # 900.0f

    .line 26
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-gtz v3, :cond_0

    .line 27
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 61
    :goto_0
    return-object v3

    .line 29
    :cond_0
    long-to-float v0, p0

    .line 30
    .local v0, "result":F
    const-string/jumbo v1, "B"

    .line 31
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v3, v0, v6

    if-lez v3, :cond_1

    .line 32
    const-string/jumbo v1, "KB"

    .line 33
    div-float/2addr v0, v7

    .line 35
    :cond_1
    cmpl-float v3, v0, v6

    if-lez v3, :cond_2

    .line 36
    const-string/jumbo v1, "MB"

    .line 37
    div-float/2addr v0, v7

    .line 39
    :cond_2
    cmpl-float v3, v0, v6

    if-lez v3, :cond_3

    .line 40
    const-string/jumbo v1, "GB"

    .line 41
    div-float/2addr v0, v7

    .line 43
    :cond_3
    cmpl-float v3, v0, v6

    if-lez v3, :cond_4

    .line 44
    const-string/jumbo v1, "TB"

    .line 45
    div-float/2addr v0, v7

    .line 47
    :cond_4
    cmpl-float v3, v0, v6

    if-lez v3, :cond_5

    .line 48
    const-string/jumbo v1, "PB"

    .line 49
    div-float/2addr v0, v7

    .line 52
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "%.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "value":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 54
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_7

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "%.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 56
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_8

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "%.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 59
    .end local v2    # "value":Ljava/lang/String;
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "%.0f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 91
    invoke-static {}, Lc8/RNf;->ensureFormatLog()V

    .line 92
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lc8/TNf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p1, p2}, Lc8/RNf;->formatFileSize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 94
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    invoke-interface {v0, p0, p1, p2}, Lc8/TNf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 114
    invoke-static {}, Lc8/RNf;->ensureFormatLog()V

    .line 115
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lc8/TNf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lc8/RNf;->sFormatLog:Lc8/TNf;

    invoke-interface {v0, p0, p1, p2}, Lc8/TNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_0
    return-void
.end method
