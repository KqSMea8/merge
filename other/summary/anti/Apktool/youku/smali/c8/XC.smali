.class public Lc8/XC;
.super Ljava/lang/Object;
.source "AliRequestAdapter.java"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IRequest;


# instance fields
.field TAG:Ljava/lang/String;

.field mAliRequest:Lc8/uM;

.field private final mClientResource:Ljava/lang/Object;

.field private mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

.field mFutureResponse:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lc8/vM;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUCProxy:Z

.field private mIsUseWebP:Z

.field private mLoadType:I

.field private mMethod:Ljava/lang/String;

.field private mRequestType:I

.field private mUCHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mUploadFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadFileTotalLen:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/uM;Lcom/uc/webview/export/internal/interfaces/EventHandler;)V
    .locals 1
    .param p1, "request"    # Lc8/uM;
    .param p2, "handler"    # Lcom/uc/webview/export/internal/interfaces/EventHandler;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, "alinetwork"

    iput-object v0, p0, Lc8/XC;->TAG:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/XC;->mMethod:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/XC;->mClientResource:Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Lc8/XC;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JIIZ)V
    .locals 1
    .param p1, "handler"    # Lcom/uc/webview/export/internal/interfaces/EventHandler;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "isUCProxyReq"    # Z
    .param p9, "uploadFileTotalLen"    # J
    .param p11, "requestType"    # I
    .param p12, "loadType"    # I
    .param p13, "isUseWebP"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/interfaces/EventHandler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;JIIZ)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "ucHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "uploadFileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "uploadDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, "alinetwork"

    iput-object v0, p0, Lc8/XC;->TAG:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/XC;->mMethod:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/XC;->mClientResource:Ljava/lang/Object;

    .line 59
    iput-boolean p13, p0, Lc8/XC;->mIsUseWebP:Z

    .line 60
    iput-object p1, p0, Lc8/XC;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    .line 61
    iput-object p2, p0, Lc8/XC;->mUrl:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lc8/XC;->mMethod:Ljava/lang/String;

    .line 63
    iput-boolean p4, p0, Lc8/XC;->mIsUCProxy:Z

    .line 64
    iput-object p5, p0, Lc8/XC;->mHeaders:Ljava/util/Map;

    .line 65
    iput-object p6, p0, Lc8/XC;->mUCHeaders:Ljava/util/Map;

    .line 66
    iput-object p7, p0, Lc8/XC;->mUploadFileMap:Ljava/util/Map;

    .line 67
    iput-object p8, p0, Lc8/XC;->mUploadDataMap:Ljava/util/Map;

    .line 68
    iput-wide p9, p0, Lc8/XC;->mUploadFileTotalLen:J

    .line 69
    iput p11, p0, Lc8/XC;->mRequestType:I

    .line 70
    iput p12, p0, Lc8/XC;->mLoadType:I

    .line 71
    invoke-direct {p0}, Lc8/XC;->formatAliRequest()Lc8/uM;

    move-result-object v0

    iput-object v0, p0, Lc8/XC;->mAliRequest:Lc8/uM;

    .line 72
    return-void
.end method

.method private formatAliRequest()Lc8/uM;
    .locals 13

    .prologue
    .line 75
    iget-object v1, p0, Lc8/XC;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lc8/XC;->mMethod:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/XC;->mIsUCProxy:Z

    iget-object v4, p0, Lc8/XC;->mHeaders:Ljava/util/Map;

    iget-object v5, p0, Lc8/XC;->mUCHeaders:Ljava/util/Map;

    iget-object v6, p0, Lc8/XC;->mUploadFileMap:Ljava/util/Map;

    iget-object v7, p0, Lc8/XC;->mUploadDataMap:Ljava/util/Map;

    iget-wide v8, p0, Lc8/XC;->mUploadFileTotalLen:J

    iget v10, p0, Lc8/XC;->mRequestType:I

    iget v11, p0, Lc8/XC;->mLoadType:I

    iget-boolean v12, p0, Lc8/XC;->mIsUseWebP:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lc8/XC;->formatAliRequest(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JIIZ)Lc8/uM;

    move-result-object v0

    return-object v0
.end method

.method private formatAliRequest(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JIIZ)Lc8/uM;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "isUCProxyReq"    # Z
    .param p8, "uploadFileTotalLen"    # J
    .param p10, "requestType"    # I
    .param p11, "loadType"    # I
    .param p12, "isUseWebP"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;JIIZ)",
            "Lc8/uM;"
        }
    .end annotation

    .prologue
    .line 84
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "ucHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "uploadFileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "uploadDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz p12, :cond_0

    :try_start_0
    invoke-static {p1}, Lc8/JH;->isPicture(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 85
    invoke-static {p1}, Lc8/uNf;->justConvergeAndWebP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "decideUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 87
    iget-object v9, p0, Lc8/XC;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " decideUrl to : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    move-object p1, v2

    .line 96
    .end local v2    # "decideUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v7, Lc8/IN;

    invoke-direct {v7, p1}, Lc8/IN;-><init>(Ljava/lang/String;)V

    .line 97
    .local v7, "request":Lc8/uM;
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Lc8/uM;->setFollowRedirects(Z)V

    .line 98
    const/16 v9, 0x62

    invoke-interface {v7, v9}, Lc8/uM;->setBizId(I)V

    .line 99
    invoke-static {p1}, Lc8/DD;->isNeedCookie(Ljava/lang/String;)Z

    move-result v9

    invoke-interface {v7, v9}, Lc8/uM;->setCookieEnabled(Z)V

    .line 100
    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Lc8/uM;->setMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    if-eqz p4, :cond_3

    .line 107
    const-string/jumbo v9, "f-refer"

    const-string/jumbo v10, "wv_h5"

    invoke-interface {v7, v9, v10}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lc8/ZC;->getInstance()Lc8/ZC;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0, p1}, Lc8/ZC;->onSendRequest(Ljava/util/Map;Ljava/lang/String;)V

    .line 109
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 110
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 111
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 112
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 113
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 114
    .local v8, "value":Ljava/lang/String;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 115
    iget-object v9, p0, Lc8/XC;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "AliRequestAdapter from uc header key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    invoke-interface {v7, v6, v8}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "request":Lc8/uM;
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lc8/XC;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " AliRequestAdapter formatAliRequest Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v7, 0x0

    .line 122
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-object v7

    .line 119
    .restart local v7    # "request":Lc8/uM;
    :cond_3
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 120
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v9

    iget-object v10, p0, Lc8/XC;->mUrl:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-interface {v9, v10, v12, v13}, Lc8/cG;->didResourceStartLoadAtTime(Ljava/lang/String;J)V

    goto :goto_2

    .end local v7    # "request":Lc8/uM;
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/XC;->mFutureResponse:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/XC;->mFutureResponse:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v2, p0, Lc8/XC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AliRequestAdapter cancel desc url="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lc8/XC;->mFutureResponse:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vM;

    invoke-interface {v1}, Lc8/vM;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {p0}, Lc8/XC;->complete()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    :goto_0
    iget-object v1, p0, Lc8/XC;->mFutureResponse:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lc8/XC;->mFutureResponse:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 157
    :cond_1
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 149
    iget-object v1, p0, Lc8/XC;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AliRequestAdapter cancel ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 152
    iget-object v1, p0, Lc8/XC;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AliRequestAdapter cancel ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method complete()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lc8/XC;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v1, p0, Lc8/XC;->mClientResource:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lc8/XC;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "AliRequestAdapter complete will notify"

    invoke-static {v0, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lc8/XC;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit v1

    .line 137
    :cond_1
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAliRequest()Lc8/uM;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lc8/XC;->mAliRequest:Lc8/uM;

    return-object v0
.end method

.method public getEventHandler()Lcom/uc/webview/export/internal/interfaces/EventHandler;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lc8/XC;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lc8/XC;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getIsUCProxy()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lc8/XC;->mIsUCProxy:Z

    return v0
.end method

.method public getLoadtype()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lc8/XC;->mLoadType:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lc8/XC;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lc8/XC;->mRequestType:I

    return v0
.end method

.method public getUCHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lc8/XC;->mUCHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getUploadDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lc8/XC;->mUploadDataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUploadFileMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lc8/XC;->mUploadFileMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUploadFileTotalLen()J
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lc8/XC;->mUploadFileTotalLen:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lc8/XC;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public handleSslErrorResponse(Z)V
    .locals 0
    .param p1, "proceed"    # Z

    .prologue
    .line 188
    return-void
.end method

.method public setEventHandler(Lcom/uc/webview/export/internal/interfaces/EventHandler;)V
    .locals 0
    .param p1, "h"    # Lcom/uc/webview/export/internal/interfaces/EventHandler;

    .prologue
    .line 161
    iput-object p1, p0, Lc8/XC;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    .line 162
    return-void
.end method

.method public setFutureResponse(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lc8/vM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "futureResponse":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lanetwork/channel/Response;>;"
    iput-object p1, p0, Lc8/XC;->mFutureResponse:Ljava/util/concurrent/Future;

    .line 127
    return-void
.end method

.method public waitUntilComplete(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lc8/XC;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v1, p0, Lc8/XC;->mClientResource:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lc8/XC;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AliRequestAdapter waitUntilComplete timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/XC;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lc8/XC;->mClientResource:Ljava/lang/Object;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 203
    :cond_1
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
