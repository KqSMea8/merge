.class public Lc8/ANn;
.super Ljava/lang/Object;
.source "PlayerErrorMsg.java"


# instance fields
.field public CDNTime:Ljava/lang/String;

.field public IP:Ljava/lang/String;

.field public KTime:Ljava/lang/String;

.field public URL:Ljava/lang/String;

.field public cacheSize:Ljava/lang/String;

.field public connList:Ljava/lang/String;

.field public errorid:Ljava/lang/String;

.field public isCDN:Ljava/lang/String;

.field public lastAction:Ljava/lang/String;

.field public totalSize:Ljava/lang/String;

.field public via:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creat(Ljava/lang/String;)Lc8/ANn;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xb

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 60
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 33
    .local v1, "msg":Lc8/ANn;
    :try_start_0
    const-string/jumbo v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "strs":[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v4, v3

    const/16 v5, 0x9

    if-lt v4, v5, :cond_2

    .line 36
    new-instance v2, Lc8/ANn;

    invoke-direct {v2}, Lc8/ANn;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1    # "msg":Lc8/ANn;
    .local v2, "msg":Lc8/ANn;
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/ANn;->errorid:Ljava/lang/String;

    .line 38
    const/4 v4, 0x1

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/ANn;->isCDN:Ljava/lang/String;

    .line 39
    const/4 v4, 0x2

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/ANn;->IP:Ljava/lang/String;

    .line 40
    const/4 v4, 0x3

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/ANn;->URL:Ljava/lang/String;

    .line 41
    const/4 v4, 0x4

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/ANn;->lastAction:Ljava/lang/String;

    .line 42
    const/4 v4, 0x5

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/ANn;->KTime:Ljava/lang/String;

    .line 43
    const/4 v4, 0x6

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/ANn;->CDNTime:Ljava/lang/String;

    .line 44
    const/4 v4, 0x7

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/ANn;->cacheSize:Ljava/lang/String;

    .line 45
    const/16 v4, 0x8

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/ANn;->totalSize:Ljava/lang/String;

    .line 46
    array-length v4, v3

    if-lt v4, v6, :cond_1

    .line 47
    const/16 v4, 0xa

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/ANn;->via:Ljava/lang/String;

    .line 48
    const/16 v4, 0xb

    aget-object v4, v3, v4

    iput-object v4, v2, Lc8/ANn;->connList:Ljava/lang/String;

    move-object v1, v2

    .end local v2    # "msg":Lc8/ANn;
    .restart local v1    # "msg":Lc8/ANn;
    goto :goto_0

    .line 50
    .end local v1    # "msg":Lc8/ANn;
    .restart local v2    # "msg":Lc8/ANn;
    :cond_1
    const-string/jumbo v4, ""

    iput-object v4, v2, Lc8/ANn;->via:Ljava/lang/String;

    .line 51
    const-string/jumbo v4, ""

    iput-object v4, v2, Lc8/ANn;->connList:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v2    # "msg":Lc8/ANn;
    .restart local v1    # "msg":Lc8/ANn;
    goto :goto_0

    .line 54
    :cond_2
    :try_start_2
    sget-object v4, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PlayerErrorMsg ---> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 56
    .end local v3    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Lc8/ANn;
    .restart local v2    # "msg":Lc8/ANn;
    .restart local v3    # "strs":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "msg":Lc8/ANn;
    .restart local v1    # "msg":Lc8/ANn;
    goto :goto_1
.end method
