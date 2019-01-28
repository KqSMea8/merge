.class public abstract Lc8/Mtf;
.super Lc8/Ltf;
.source "CdnRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Ltf",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CdnRequest"


# instance fields
.field private mMD5:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "retryMaxNum"    # I

    .prologue
    .line 30
    .local p0, "this":Lc8/Mtf;, "Lcom/taobao/orange/request/CdnRequest<TT;>;"
    invoke-direct {p0, p3}, Lc8/Ltf;-><init>(I)V

    .line 31
    iput-object p1, p0, Lc8/Mtf;->mUrl:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lc8/Mtf;->mMD5:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract parseResContent(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public syncRequest()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lc8/Mtf;, "Lcom/taobao/orange/request/CdnRequest<TT;>;"
    iget-object v7, p0, Lc8/Mtf;->mUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 39
    const-string/jumbo v7, "CdnRequest"

    const-string/jumbo v8, "syncRequest"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "get content from cdn error as url is null"

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const/16 v7, 0x1f42

    iput v7, p0, Lc8/Mtf;->mErrorCode:I

    .line 41
    const/4 v5, 0x0

    .line 84
    :cond_0
    :goto_0
    return-object v5

    .line 43
    :cond_1
    const-string/jumbo v7, "CdnRequest"

    const-string/jumbo v8, "syncRequest"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "cdn url"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lc8/Mtf;->mUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    new-instance v0, Lc8/sN;

    sget-object v7, Lc8/Ksf;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lc8/sN;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "network":Lc8/hM;
    const/4 v2, 0x0

    .line 47
    .local v2, "resContent":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "retryNo":I
    :goto_1
    iget v7, p0, Lc8/Mtf;->mRetryMaxNum:I

    if-ge v6, v7, :cond_4

    .line 48
    new-instance v1, Lc8/IN;

    iget-object v7, p0, Lc8/Mtf;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v7}, Lc8/IN;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "request":Lc8/uM;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v1, v7}, Lc8/uM;->setCharset(Ljava/lang/String;)V

    .line 50
    const/4 v7, 0x0

    invoke-interface {v0, v1, v7}, Lc8/hM;->syncSend(Lc8/uM;Ljava/lang/Object;)Lc8/vM;

    move-result-object v4

    .line 52
    .local v4, "response":Lc8/vM;
    invoke-interface {v4}, Lc8/vM;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_2

    .line 53
    invoke-interface {v4}, Lc8/vM;->getStatusCode()I

    move-result v7

    iput v7, p0, Lc8/Mtf;->mErrorCode:I

    .line 54
    invoke-interface {v4}, Lc8/vM;->getDesc()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lc8/Mtf;->mErrorMsg:Ljava/lang/String;

    .line 55
    const-string/jumbo v7, "CdnRequest"

    const-string/jumbo v8, "syncRequest need retry as network error"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "mErrorCode"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lc8/Mtf;->mErrorCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "mErrorMsg"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lc8/Mtf;->mErrorMsg:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "retryNo"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {v4}, Lc8/vM;->getBytedata()[B

    move-result-object v7

    if-eqz v7, :cond_3

    .line 60
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-interface {v4}, Lc8/vM;->getBytedata()[B

    move-result-object v7

    const-string/jumbo v8, "utf-8"

    invoke-direct {v3, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "resContent":Ljava/lang/String;
    .local v3, "resContent":Ljava/lang/String;
    move-object v2, v3

    .line 64
    .end local v3    # "resContent":Ljava/lang/String;
    .restart local v2    # "resContent":Ljava/lang/String;
    :cond_3
    :goto_3
    iget-object v7, p0, Lc8/Mtf;->mMD5:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lc8/Mtf;->mMD5:Ljava/lang/String;

    invoke-static {v2}, Lc8/auf;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 65
    const/4 v2, 0x0

    .line 66
    const/16 v7, 0x1f43

    iput v7, p0, Lc8/Mtf;->mErrorCode:I

    .line 67
    const-string/jumbo v7, "CdnRequest"

    const-string/jumbo v8, "syncRequest need retry as broken as MD5 not match"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "retryNo"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 73
    .end local v1    # "request":Lc8/uM;
    .end local v4    # "response":Lc8/vM;
    :cond_4
    const/4 v5, 0x0

    .line 74
    .local v5, "resultObj":Ljava/lang/Object;, "TT;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 75
    invoke-virtual {p0, v2}, Lc8/Mtf;->parseResContent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 76
    if-eqz v5, :cond_5

    .line 77
    const/16 v7, 0xc8

    iput v7, p0, Lc8/Mtf;->mErrorCode:I

    .line 78
    const-string/jumbo v7, "CdnRequest"

    const-string/jumbo v8, "syncRequest"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "resultObj"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 80
    :cond_5
    const/16 v7, 0x1f44

    iput v7, p0, Lc8/Mtf;->mErrorCode:I

    .line 81
    const-string/jumbo v7, "CdnRequest"

    const-string/jumbo v8, "syncRequest content illegal format"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .end local v5    # "resultObj":Ljava/lang/Object;, "TT;"
    .restart local v1    # "request":Lc8/uM;
    .restart local v4    # "response":Lc8/vM;
    :catch_0
    move-exception v7

    goto :goto_3
.end method
