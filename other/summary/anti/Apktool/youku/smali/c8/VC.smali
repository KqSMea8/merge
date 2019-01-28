.class public Lc8/VC;
.super Ljava/lang/Object;
.source "AliNetworkAdapter.java"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/INetwork;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/UC;
    }
.end annotation


# static fields
.field public static final NETWORK_WORKING_MODE_ASYNC:I = 0x1

.field public static final NETWORK_WORKING_MODE_SYNC:I


# instance fields
.field private BUFFER_SIZE:I

.field LOGTAG:Ljava/lang/String;

.field private isUseWebpImg:Z

.field private mAliNetwork:Lc8/hM;

.field private mContext:Landroid/content/Context;

.field private mNetworkType:I

.field private mWorkingMode:I

.field public mainRequest:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/uc/webview/export/internal/interfaces/EventHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lc8/VC;-><init>(Landroid/content/Context;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string/jumbo v0, "AliNetwork"

    iput-object v0, p0, Lc8/VC;->LOGTAG:Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lc8/VC;->mNetworkType:I

    .line 51
    iput v4, p0, Lc8/VC;->mWorkingMode:I

    .line 52
    const/16 v0, 0x400

    iput v0, p0, Lc8/VC;->BUFFER_SIZE:I

    .line 53
    iput-boolean v4, p0, Lc8/VC;->isUseWebpImg:Z

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/VC;->mainRequest:Ljava/util/HashSet;

    .line 66
    iput-object p1, p0, Lc8/VC;->mContext:Landroid/content/Context;

    .line 67
    iput p2, p0, Lc8/VC;->mNetworkType:I

    .line 68
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget-wide v0, v0, Lc8/EB;->ucsdk_image_strategy_rate:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 69
    iput-boolean v4, p0, Lc8/VC;->isUseWebpImg:Z

    .line 73
    :goto_0
    iget v0, p0, Lc8/VC;->mNetworkType:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_1
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/VC;->isUseWebpImg:Z

    goto :goto_0

    .line 75
    :pswitch_0
    new-instance v0, Lc8/KN;

    invoke-direct {v0, p1}, Lc8/KN;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/VC;->mAliNetwork:Lc8/hM;

    goto :goto_1

    .line 79
    :pswitch_1
    new-instance v0, Lc8/sN;

    invoke-direct {v0, p1}, Lc8/sN;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/VC;->mAliNetwork:Lc8/hM;

    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lc8/VC;)I
    .locals 1
    .param p0, "x0"    # Lc8/VC;

    .prologue
    .line 45
    iget v0, p0, Lc8/VC;->BUFFER_SIZE:I

    return v0
.end method

.method static synthetic access$100(Lc8/VC;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/VC;

    .prologue
    .line 45
    iget-object v0, p0, Lc8/VC;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private sendRequestInternal(Lc8/XC;)Z
    .locals 14
    .param p1, "adapterRequest"    # Lc8/XC;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 110
    invoke-virtual {p1}, Lc8/XC;->getAliRequest()Lc8/uM;

    move-result-object v5

    .line 111
    .local v5, "req":Lc8/uM;
    invoke-virtual {p1}, Lc8/XC;->getEventHandler()Lcom/uc/webview/export/internal/interfaces/EventHandler;

    move-result-object v4

    .line 112
    .local v4, "handler":Lcom/uc/webview/export/internal/interfaces/EventHandler;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 113
    iget-object v8, p0, Lc8/VC;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "requestURL eventId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lc8/XC;->getEventHandler()Lcom/uc/webview/export/internal/interfaces/EventHandler;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lc8/XC;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",isSync="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->isSynchronous()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    iget v8, p0, Lc8/VC;->mWorkingMode:I

    if-nez v8, :cond_5

    .line 118
    iget-object v8, p0, Lc8/VC;->mAliNetwork:Lc8/hM;

    invoke-interface {v8, v5, v11}, Lc8/hM;->syncSend(Lc8/uM;Ljava/lang/Object;)Lc8/vM;

    move-result-object v6

    .line 119
    .local v6, "response":Lc8/vM;
    invoke-interface {v6}, Lc8/vM;->getError()Ljava/lang/Throwable;

    move-result-object v2

    .line 120
    .local v2, "exception":Ljava/lang/Throwable;
    if-eqz v2, :cond_2

    .line 121
    invoke-virtual {p0, v2}, Lc8/VC;->getErrorFromException(Ljava/lang/Throwable;)I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->error(ILjava/lang/String;)V

    .line 148
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v6    # "response":Lc8/vM;
    :cond_1
    :goto_0
    return v13

    .line 123
    .restart local v2    # "exception":Ljava/lang/Throwable;
    .restart local v6    # "response":Lc8/vM;
    :cond_2
    invoke-interface {v6}, Lc8/vM;->getStatusCode()I

    move-result v7

    .line 125
    .local v7, "status":I
    const-string/jumbo v8, ""

    invoke-interface {v4, v12, v12, v7, v8}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->status(IIILjava/lang/String;)V

    .line 126
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 127
    iget-object v8, p0, Lc8/VC;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "status code="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_3
    invoke-interface {v6}, Lc8/vM;->getConnHeadFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->headers(Ljava/util/Map;)V

    .line 132
    invoke-interface {v6}, Lc8/vM;->getBytedata()[B

    move-result-object v1

    .line 133
    .local v1, "data":[B
    if-eqz v1, :cond_4

    .line 135
    array-length v8, v1

    invoke-interface {v4, v1, v8}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->data([BI)V

    .line 138
    :cond_4
    invoke-interface {v4}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    goto :goto_0

    .line 140
    .end local v1    # "data":[B
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v6    # "response":Lc8/vM;
    .end local v7    # "status":I
    :cond_5
    iget v8, p0, Lc8/VC;->mWorkingMode:I

    if-ne v8, v13, :cond_1

    .line 141
    new-instance v0, Lc8/UC;

    invoke-direct {v0, p0}, Lc8/UC;-><init>(Lc8/VC;)V

    .line 142
    .local v0, "callback":Lc8/UC;
    invoke-virtual {v0, v4}, Lc8/UC;->setEventHandler(Lcom/uc/webview/export/internal/interfaces/EventHandler;)V

    .line 143
    invoke-virtual {p1}, Lc8/XC;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lc8/UC;->setURL(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p1}, Lc8/UC;->setRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)V

    .line 145
    iget-object v8, p0, Lc8/VC;->mAliNetwork:Lc8/hM;

    invoke-interface {v8, v5, v11, v11, v0}, Lc8/hM;->asyncSend(Lc8/uM;Ljava/lang/Object;Landroid/os/Handler;Lc8/sM;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 146
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lanetwork/channel/Response;>;"
    invoke-virtual {p1, v3}, Lc8/XC;->setFutureResponse(Ljava/util/concurrent/Future;)V

    goto :goto_0
.end method

.method private setRequestBodyHandler(Lc8/uM;Lc8/XC;)V
    .locals 8
    .param p1, "aliRequest"    # Lc8/uM;
    .param p2, "request"    # Lc8/XC;

    .prologue
    .line 283
    invoke-virtual {p2}, Lc8/XC;->getUploadFileTotalLen()J

    move-result-wide v4

    .line 284
    .local v4, "uploadFileTotalLen":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 285
    invoke-virtual {p2}, Lc8/XC;->getUploadFileMap()Ljava/util/Map;

    move-result-object v2

    .line 286
    .local v2, "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lc8/XC;->getUploadDataMap()Ljava/util/Map;

    move-result-object v1

    .line 287
    .local v1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v7

    add-int v3, v6, v7

    .line 289
    .local v3, "totalFileNum":I
    new-instance v0, Lc8/TC;

    invoke-direct {v0, p0, v3, v2, v1}, Lc8/TC;-><init>(Lc8/VC;ILjava/util/Map;Ljava/util/Map;)V

    .line 390
    .local v0, "dataHandler":Lc8/gM;
    invoke-interface {p1, v0}, Lc8/uM;->setBodyHandler(Lc8/gM;)V

    .line 392
    .end local v0    # "dataHandler":Lc8/gM;
    .end local v1    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v2    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "totalFileNum":I
    :cond_0
    return-void
.end method

.method public static willLog(Lcom/uc/webview/export/internal/interfaces/EventHandler;)Z
    .locals 3
    .param p0, "ev"    # Lcom/uc/webview/export/internal/interfaces/EventHandler;

    .prologue
    .line 104
    invoke-interface {p0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->getResourceType()I

    move-result v0

    .line 105
    .local v0, "requestType":I
    invoke-interface {p0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->isSynchronous()Z

    move-result v1

    .line 106
    .local v1, "sync":Z
    if-eqz v0, :cond_0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelPrefetchLoad()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public clearUserSslPrefTable()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public formatRequest(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)Lcom/uc/webview/export/internal/interfaces/IRequest;
    .locals 17
    .param p1, "handler"    # Lcom/uc/webview/export/internal/interfaces/EventHandler;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "isUCProxyReq"    # Z
    .param p9, "uploadFileTotalLen"    # J
    .param p11, "requestType"    # I
    .param p12, "loadType"    # I
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
            "[B>;JII)",
            "Lcom/uc/webview/export/internal/interfaces/IRequest;"
        }
    .end annotation

    .prologue
    .line 430
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "ucHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "uploadFileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "uploadDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-static/range {p2 .. p2}, Lc8/YC;->tryDecodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 431
    new-instance v3, Lc8/XC;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/VC;->isUseWebpImg:Z

    move/from16 v16, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-direct/range {v3 .. v16}, Lc8/XC;-><init>(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JIIZ)V

    .line 435
    .local v3, "requestAdatper":Lc8/XC;
    invoke-virtual {v3}, Lc8/XC;->getAliRequest()Lc8/uM;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lc8/VC;->setRequestBodyHandler(Lc8/uM;Lc8/XC;)V

    .line 436
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->setRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)V

    .line 437
    move-object/from16 v0, p1

    move/from16 v1, p11

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->setResourceType(I)V

    .line 438
    return-object v3
.end method

.method public getErrorFromException(Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 396
    const/16 v0, -0x63

    .line 397
    .local v0, "error":I
    instance-of v1, p1, Lorg/apache/http/ParseException;

    if-eqz v1, :cond_1

    .line 398
    const/16 v0, -0x2b

    .line 410
    :cond_0
    :goto_0
    return v0

    .line 399
    :cond_1
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_2

    .line 400
    const/16 v0, -0x2e

    goto :goto_0

    .line 401
    :cond_2
    instance-of v1, p1, Ljava/net/SocketException;

    if-eqz v1, :cond_3

    .line 402
    const/16 v0, -0x2f

    goto :goto_0

    .line 403
    :cond_3
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_4

    .line 404
    const/16 v0, -0x2c

    goto :goto_0

    .line 405
    :cond_4
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_5

    .line 406
    const/16 v0, -0x2d

    goto :goto_0

    .line 407
    :cond_5
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_0

    .line 408
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    const-string/jumbo v0, "1.0"

    return-object v0
.end method

.method public requestURL(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)Z
    .locals 17
    .param p1, "eventhandler"    # Lcom/uc/webview/export/internal/interfaces/EventHandler;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "isUCProxyReq"    # Z
    .param p9, "uploadFileTotalLen"    # J
    .param p11, "requestType"    # I
    .param p12, "loadType"    # I
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
            "[B>;JII)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "ucHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "uploadFileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "uploadDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/VC;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestURL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isUCProxyReq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requestType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static/range {p2 .. p2}, Lc8/YC;->tryDecodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 92
    new-instance v3, Lc8/XC;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/VC;->isUseWebpImg:Z

    move/from16 v16, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-direct/range {v3 .. v16}, Lc8/XC;-><init>(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JIIZ)V

    .line 96
    .local v3, "requestAdatper":Lc8/XC;
    invoke-virtual {v3}, Lc8/XC;->getAliRequest()Lc8/uM;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lc8/VC;->setRequestBodyHandler(Lc8/uM;Lc8/XC;)V

    .line 98
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->setRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)V

    .line 100
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc8/VC;->sendRequestInternal(Lc8/XC;)Z

    move-result v2

    return v2
.end method

.method public sendRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)Z
    .locals 2
    .param p1, "request"    # Lcom/uc/webview/export/internal/interfaces/IRequest;

    .prologue
    .line 443
    move-object v0, p1

    check-cast v0, Lc8/XC;

    .line 444
    .local v0, "requestAdapter":Lc8/XC;
    invoke-direct {p0, v0}, Lc8/VC;->sendRequestInternal(Lc8/XC;)Z

    move-result v1

    return v1
.end method
