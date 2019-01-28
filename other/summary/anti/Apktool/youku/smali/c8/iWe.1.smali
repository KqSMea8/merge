.class public Lc8/iWe;
.super Ljava/lang/Object;
.source "UtdidUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final POST_HTTP_URL:Ljava/lang/String; = "https://audid-api.taobao.com/v2.0/a/audid/req/"

.field private static volatile bRunning:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lc8/iWe;->bRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/iWe;->mContext:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lc8/iWe;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private buildPostDataFromDB(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/XVe;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/ta/audid/store/UtdidContent;>;"
    const/4 v5, 0x0

    .line 110
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-object v5

    .line 114
    :cond_1
    invoke-static {}, Lc8/FVe;->getInstance()Lc8/FVe;

    move-result-object v6

    invoke-virtual {v6}, Lc8/FVe;->getCurrentAppUtdid()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "appUtdid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 119
    invoke-static {v0}, Lc8/YVe;->buildUDID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "audidModle":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 124
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/XVe;

    invoke-virtual {v5}, Lc8/XVe;->getDecodedContent()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "line":Ljava/lang/String;
    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    .end local v4    # "line":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lc8/yWe;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lc8/yWe;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/aWe;->getEncodedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private reqServer(Ljava/lang/String;)Z
    .locals 8
    .param p1, "postData"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 95
    const-string/jumbo v5, "https://audid-api.taobao.com/v2.0/a/audid/req/"

    invoke-static {v5, p1, v7}, Lc8/eWe;->sendRequest(Ljava/lang/String;Ljava/lang/String;Z)Lc8/dWe;

    move-result-object v1

    .line 96
    .local v1, "response":Lc8/dWe;
    const-string/jumbo v2, ""

    .line 98
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v5, v1, Lc8/dWe;->data:[B

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    move-object v2, v3

    .line 102
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :goto_0
    iget-object v5, v1, Lc8/dWe;->signature:Ljava/lang/String;

    invoke-static {v2, v5}, Lc8/dWe;->checkSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    invoke-static {v2}, Lc8/cWe;->parseResult(Ljava/lang/String;)Lc8/cWe;

    move-result-object v4

    iget v4, v4, Lc8/cWe;->code:I

    invoke-static {v4}, Lc8/cWe;->isSuccess(I)Z

    move-result v4

    .line 105
    :cond_0
    return v4

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, ""

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {v5, v6}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private upload()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 37
    invoke-static {}, Lc8/yWe;->d()V

    .line 38
    iget-object v2, p0, Lc8/iWe;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/pWe;->isConnectInternet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    sget-boolean v2, Lc8/iWe;->bRunning:Z

    if-nez v2, :cond_0

    .line 42
    sput-boolean v3, Lc8/iWe;->bRunning:Z

    .line 47
    :try_start_0
    invoke-static {}, Lc8/oWe;->trylockUpload()Z

    move-result v1

    .line 48
    .local v1, "lock":Z
    if-nez v1, :cond_2

    .line 49
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Other Process is Uploading"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    sput-boolean v6, Lc8/iWe;->bRunning:Z

    .line 67
    invoke-static {}, Lc8/oWe;->releaseUpload()V

    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-gtz v0, :cond_3

    .line 54
    :try_start_1
    invoke-direct {p0}, Lc8/iWe;->uploadFromDataBase()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    :cond_3
    sput-boolean v6, Lc8/iWe;->bRunning:Z

    .line 67
    invoke-static {}, Lc8/oWe;->releaseUpload()V

    goto :goto_0

    .line 58
    :cond_4
    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "i":I
    .end local v1    # "lock":Z
    :catch_0
    move-exception v2

    sput-boolean v6, Lc8/iWe;->bRunning:Z

    .line 67
    invoke-static {}, Lc8/oWe;->releaseUpload()V

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v2

    sput-boolean v6, Lc8/iWe;->bRunning:Z

    .line 67
    invoke-static {}, Lc8/oWe;->releaseUpload()V

    throw v2

    .restart local v0    # "i":I
    .restart local v1    # "lock":Z
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private uploadFromDataBase()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 72
    invoke-static {}, Lc8/yWe;->d()V

    .line 73
    invoke-static {}, Lc8/ZVe;->getInstance()Lc8/ZVe;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lc8/ZVe;->get(I)Ljava/util/List;

    move-result-object v1

    .line 74
    .local v1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/ta/audid/store/UtdidContent;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 75
    :cond_0
    const-string/jumbo v5, "log is empty"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :goto_0
    return v3

    .line 78
    :cond_1
    invoke-direct {p0, v1}, Lc8/iWe;->buildPostDataFromDB(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "postData":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 80
    const-string/jumbo v5, "postData is empty"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-direct {p0, v2}, Lc8/iWe;->reqServer(Ljava/lang/String;)Z

    move-result v0

    .line 85
    .local v0, "isSendSuccess":Z
    if-eqz v0, :cond_3

    .line 86
    invoke-static {}, Lc8/ZVe;->getInstance()Lc8/ZVe;

    move-result-object v5

    invoke-virtual {v5, v1}, Lc8/ZVe;->delete(Ljava/util/List;)I

    .line 87
    const-string/jumbo v5, ""

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "upload success"

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v3, v4

    .line 91
    goto :goto_0

    .line 89
    :cond_3
    const-string/jumbo v5, ""

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "upload fail"

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 30
    :try_start_0
    invoke-direct {p0}, Lc8/iWe;->upload()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lc8/yWe;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
