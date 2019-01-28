.class public Lc8/BNn;
.super Ljava/lang/Object;
.source "PlayerLoadingMsg.java"


# instance fields
.field public cdnIP:Ljava/lang/String;

.field public impairmentPoint:Ljava/lang/String;

.field public loadingState:Ljava/lang/String;

.field public netSpeed:Ljava/lang/String;

.field public playUrl:Ljava/lang/String;

.field public rangeDuration:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/BNn;->loadingState:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/BNn;->impairmentPoint:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/BNn;->rangeDuration:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/BNn;->cdnIP:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/BNn;->netSpeed:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/BNn;->playUrl:Ljava/lang/String;

    return-void
.end method

.method public static creat(Ljava/lang/String;)Lc8/BNn;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 75
    :goto_0
    return-object v1

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 58
    .local v1, "msg":Lc8/BNn;
    :try_start_0
    const-string/jumbo v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "strs":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x6

    if-lt v4, v5, :cond_1

    .line 61
    new-instance v2, Lc8/BNn;

    invoke-direct {v2}, Lc8/BNn;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "msg":Lc8/BNn;
    .local v2, "msg":Lc8/BNn;
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/BNn;->loadingState:Ljava/lang/String;

    .line 63
    const/4 v4, 0x1

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/BNn;->impairmentPoint:Ljava/lang/String;

    .line 64
    const/4 v4, 0x2

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/BNn;->rangeDuration:Ljava/lang/String;

    .line 65
    const/4 v4, 0x3

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/BNn;->cdnIP:Ljava/lang/String;

    .line 66
    const/4 v4, 0x4

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/BNn;->netSpeed:Ljava/lang/String;

    .line 67
    const/4 v4, 0x5

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/BNn;->playUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v2    # "msg":Lc8/BNn;
    .restart local v1    # "msg":Lc8/BNn;
    goto :goto_0

    .line 69
    :cond_1
    :try_start_2
    sget-object v4, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PlayerLoadingMsg ---> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 71
    .end local v3    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Lc8/BNn;
    .restart local v2    # "msg":Lc8/BNn;
    .restart local v3    # "strs":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "msg":Lc8/BNn;
    .restart local v1    # "msg":Lc8/BNn;
    goto :goto_1
.end method

.method private formateDouble(Ljava/lang/String;)D
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 42
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 48
    :cond_0
    :goto_0
    return-wide v0

    .line 46
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getFileId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "playUrl"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const-string/jumbo v2, ""

    .line 106
    :goto_0
    return-object v2

    .line 94
    :cond_0
    :try_start_0
    const-string/jumbo v2, "\\?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "strs":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_1

    .line 96
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 97
    array-length v2, v1

    if-lez v2, :cond_1

    .line 98
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    const-string/jumbo v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 99
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v1    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_0
.end method


# virtual methods
.method public getCdnIP()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    iget-object v2, p0, Lc8/BNn;->cdnIP:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    :try_start_0
    iget-object v2, p0, Lc8/BNn;->cdnIP:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 81
    .local v1, "ip":I
    invoke-static {v1}, Lc8/GOm;->intToIP(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    .end local v1    # "ip":I
    :goto_0
    return-object v2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public getImpairmentPoint()D
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lc8/BNn;->impairmentPoint:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc8/BNn;->formateDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNetSpped()D
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lc8/BNn;->netSpeed:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc8/BNn;->formateDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRangeDuration()D
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lc8/BNn;->rangeDuration:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc8/BNn;->formateDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method
