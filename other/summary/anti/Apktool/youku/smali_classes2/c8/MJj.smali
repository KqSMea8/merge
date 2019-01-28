.class public Lc8/MJj;
.super Lc8/rJj;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/LJj;
    }
.end annotation


# static fields
.field private static okHttpClient:Lc8/QSe;


# instance fields
.field private errorYkResponse:Lc8/eJj;

.field private mOkHttpClient:Lc8/QSe;

.field private mRetryInterceptor:Lc8/LJj;

.field private request:Lc8/VSe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lc8/QSe;

    invoke-direct {v0}, Lc8/QSe;-><init>()V

    sput-object v0, Lc8/MJj;->okHttpClient:Lc8/QSe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lc8/rJj;-><init>()V

    .line 152
    return-void
.end method

.method private doAsyncCallback(Landroid/os/Handler;Lc8/OIj;Lc8/eJj;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lc8/OIj;
    .param p3, "ykResponse"    # Lc8/eJj;

    .prologue
    .line 138
    if-eqz p2, :cond_0

    .line 139
    if-eqz p1, :cond_1

    .line 140
    new-instance v0, Lc8/KJj;

    invoke-direct {v0, p0, p2, p3}, Lc8/KJj;-><init>(Lc8/MJj;Lc8/OIj;Lc8/eJj;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-interface {p2, p3}, Lc8/OIj;->onFinish(Lc8/eJj;)V

    goto :goto_0
.end method


# virtual methods
.method public asyncCall(Lc8/OIj;)V
    .locals 3
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 106
    iget-object v0, p0, Lc8/MJj;->errorYkResponse:Lc8/eJj;

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    iget-object v1, p0, Lc8/MJj;->errorYkResponse:Lc8/eJj;

    invoke-direct {p0, v0, p1, v1}, Lc8/MJj;->doAsyncCallback(Landroid/os/Handler;Lc8/OIj;Lc8/eJj;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    iget-object v1, p0, Lc8/MJj;->request:Lc8/VSe;

    invoke-virtual {v0, v1}, Lc8/QSe;->newCall(Lc8/VSe;)Lc8/mSe;

    move-result-object v0

    new-instance v1, Lc8/OJj;

    iget-object v2, p0, Lc8/MJj;->converter:Lc8/TJj;

    invoke-direct {v1, p1, v2}, Lc8/OJj;-><init>(Lc8/OIj;Lc8/TJj;)V

    invoke-virtual {v0, v1}, Lc8/mSe;->enqueue(Lc8/nSe;)V

    goto :goto_0
.end method

.method public asyncUICall(Lc8/OIj;)V
    .locals 4
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 116
    iget-object v0, p0, Lc8/MJj;->errorYkResponse:Lc8/eJj;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lc8/MJj;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/MJj;->errorYkResponse:Lc8/eJj;

    invoke-direct {p0, v0, p1, v1}, Lc8/MJj;->doAsyncCallback(Landroid/os/Handler;Lc8/OIj;Lc8/eJj;)V

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    iget-object v1, p0, Lc8/MJj;->request:Lc8/VSe;

    invoke-virtual {v0, v1}, Lc8/QSe;->newCall(Lc8/VSe;)Lc8/mSe;

    move-result-object v0

    new-instance v1, Lc8/OJj;

    sget-object v2, Lc8/MJj;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lc8/MJj;->converter:Lc8/TJj;

    invoke-direct {v1, v2, p1, v3}, Lc8/OJj;-><init>(Landroid/os/Handler;Lc8/OIj;Lc8/TJj;)V

    invoke-virtual {v0, v1}, Lc8/mSe;->enqueue(Lc8/nSe;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/MJj;->request:Lc8/VSe;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    iget-object v1, p0, Lc8/MJj;->request:Lc8/VSe;

    invoke-virtual {v1}, Lc8/VSe;->tag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/QSe;->cancel(Ljava/lang/Object;)Lc8/QSe;

    .line 128
    :cond_0
    return-void
.end method

.method public construct(Lc8/dJj;)V
    .locals 5
    .param p1, "ykRequest"    # Lc8/dJj;

    .prologue
    .line 44
    iput-object p1, p0, Lc8/MJj;->ykRequest:Lc8/dJj;

    .line 46
    :try_start_0
    sget-object v1, Lc8/MJj;->okHttpClient:Lc8/QSe;

    invoke-virtual {v1}, Lc8/QSe;->clone()Lc8/QSe;

    move-result-object v1

    iput-object v1, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    .line 47
    iget-object v1, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    invoke-virtual {p1}, Lc8/dJj;->getConnectTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lc8/QSe;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 48
    iget-object v1, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    invoke-virtual {p1}, Lc8/dJj;->getReadTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lc8/QSe;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 49
    iget-object v1, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    invoke-virtual {p1}, Lc8/dJj;->isAutoRedirect()Z

    move-result v2

    invoke-virtual {v1, v2}, Lc8/QSe;->setFollowRedirects(Z)V

    .line 50
    iget-object v1, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/QSe;->setRetryOnConnectionFailure(Z)V

    .line 51
    invoke-virtual {p1}, Lc8/dJj;->getRetryTimes()I

    move-result v1

    if-lez v1, :cond_0

    .line 52
    new-instance v1, Lc8/LJj;

    invoke-virtual {p1}, Lc8/dJj;->getRetryTimes()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lc8/LJj;-><init>(Lc8/MJj;I)V

    iput-object v1, p0, Lc8/MJj;->mRetryInterceptor:Lc8/LJj;

    .line 53
    iget-object v1, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    invoke-virtual {v1}, Lc8/QSe;->interceptors()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lc8/MJj;->mRetryInterceptor:Lc8/LJj;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    invoke-virtual {p1}, Lc8/dJj;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lc8/dJj;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    invoke-virtual {p1}, Lc8/dJj;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc8/dJj;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/dKj;->replaceUrlHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc8/dJj;->setUrl(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    new-instance v2, Lc8/IJj;

    invoke-direct {v2, p0, p1}, Lc8/IJj;-><init>(Lc8/MJj;Lc8/dJj;)V

    invoke-virtual {v1, v2}, Lc8/QSe;->setDns(Lc8/BSe;)Lc8/QSe;

    .line 75
    :goto_0
    new-instance v1, Lc8/WJj;

    invoke-direct {v1}, Lc8/WJj;-><init>()V

    iput-object v1, p0, Lc8/MJj;->converter:Lc8/TJj;

    .line 76
    iget-object v1, p0, Lc8/MJj;->converter:Lc8/TJj;

    check-cast v1, Lc8/WJj;

    invoke-virtual {v1, p1}, Lc8/WJj;->requestConvert(Lc8/dJj;)Lc8/VSe;

    move-result-object v1

    iput-object v1, p0, Lc8/MJj;->request:Lc8/VSe;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/MJj;->errorYkResponse:Lc8/eJj;

    .line 85
    :goto_1
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    new-instance v2, Lc8/JJj;

    invoke-direct {v2, p0}, Lc8/JJj;-><init>(Lc8/MJj;)V

    invoke-virtual {v1, v2}, Lc8/QSe;->setDns(Lc8/BSe;)Lc8/QSe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    invoke-static {}, Lc8/eJj;->newInstance()Lc8/eJj;

    move-result-object v1

    iput-object v1, p0, Lc8/MJj;->errorYkResponse:Lc8/eJj;

    .line 81
    iget-object v1, p0, Lc8/MJj;->errorYkResponse:Lc8/eJj;

    invoke-virtual {v1, v0}, Lc8/eJj;->setError(Ljava/lang/Throwable;)V

    .line 82
    iget-object v1, p0, Lc8/MJj;->errorYkResponse:Lc8/eJj;

    const/16 v2, -0xbbe

    invoke-virtual {v1, v2}, Lc8/eJj;->setYkErrorCode(I)V

    goto :goto_1
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lc8/MJj;->mRetryInterceptor:Lc8/LJj;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lc8/MJj;->mRetryInterceptor:Lc8/LJj;

    invoke-virtual {v0}, Lc8/LJj;->getRetryTime()I

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncCall()Lc8/eJj;
    .locals 5

    .prologue
    .line 89
    iget-object v2, p0, Lc8/MJj;->errorYkResponse:Lc8/eJj;

    if-eqz v2, :cond_0

    .line 90
    iget-object v1, p0, Lc8/MJj;->errorYkResponse:Lc8/eJj;

    .line 101
    :goto_0
    return-object v1

    .line 94
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/MJj;->converter:Lc8/TJj;

    iget-object v3, p0, Lc8/MJj;->mOkHttpClient:Lc8/QSe;

    iget-object v4, p0, Lc8/MJj;->request:Lc8/VSe;

    invoke-virtual {v3, v4}, Lc8/QSe;->newCall(Lc8/VSe;)Lc8/mSe;

    move-result-object v3

    invoke-virtual {v3}, Lc8/mSe;->execute()Lc8/cTe;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/TJj;->responseConvert(Ljava/lang/Object;)Lc8/eJj;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "ykResponse":Lc8/eJj;
    goto :goto_0

    .line 95
    .end local v1    # "ykResponse":Lc8/eJj;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    invoke-static {}, Lc8/eJj;->newInstance()Lc8/eJj;

    move-result-object v1

    .line 98
    .restart local v1    # "ykResponse":Lc8/eJj;
    invoke-virtual {v1, v0}, Lc8/eJj;->setError(Ljava/lang/Throwable;)V

    .line 99
    const/16 v2, -0xbbd

    invoke-static {v1, v0, v2}, Lc8/QJj;->judgeException(Lc8/eJj;Ljava/io/IOException;I)Lc8/eJj;

    move-result-object v1

    goto :goto_0
.end method
