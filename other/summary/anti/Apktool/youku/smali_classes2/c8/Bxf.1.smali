.class public Lc8/Bxf;
.super Lc8/ryf;
.source "LocalImageProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/ryf",
        "<",
        "Lc8/cxf;",
        "Lc8/cxf;",
        "Lc8/Jxf;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOCAL_TYPE:I = 0x1

.field private static final NETWORK_TYPE:I = 0x0

.field private static final SECONDARY_LOCAL_TYPE:I = 0x2


# instance fields
.field private final mFileLoader:Lc8/Axf;


# direct methods
.method public constructor <init>(Lc8/Axf;)V
    .locals 2
    .param p1, "fileLoader"    # Lc8/Axf;

    .prologue
    .line 24
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc8/ryf;-><init>(II)V

    .line 25
    iput-object p1, p0, Lc8/Bxf;->mFileLoader:Lc8/Axf;

    .line 26
    return-void
.end method

.method private readLocalData(Lc8/oyf;ZLc8/Mxf;Ljava/lang/String;)Lc8/bxf;
    .locals 8
    .param p2, "isSecondary"    # Z
    .param p3, "schemeInfo"    # Lc8/Mxf;
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/cxf;",
            "Lc8/Jxf;",
            ">;Z",
            "Lc8/Mxf;",
            "Ljava/lang/String;",
            ")",
            "Lc8/bxf;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/EncodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 29
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Jxf;

    .line 30
    .local v1, "request":Lc8/Jxf;
    iget-object v6, p0, Lc8/Bxf;->mFileLoader:Lc8/Axf;

    invoke-virtual {v1}, Lc8/Jxf;->getLoaderExtras()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v6, p3, p4, v7}, Lc8/Axf;->load(Lc8/Mxf;Ljava/lang/String;Ljava/util/Map;)Lc8/exf;

    move-result-object v2

    .line 31
    .local v2, "response":Lc8/exf;
    invoke-virtual {v1}, Lc8/Jxf;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32
    const-string/jumbo v6, "LocalFile"

    const-string/jumbo v7, "Request is cancelled before reading file"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6, v1, v7, v4}, Lc8/qwf;->i(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-interface {p1}, Lc8/oyf;->onCancellation()V

    .line 34
    invoke-virtual {v2}, Lc8/exf;->release()V

    move-object v3, v5

    .line 40
    :cond_0
    :goto_0
    return-object v3

    .line 38
    :cond_1
    new-instance v0, Lc8/yxf;

    iget v6, v2, Lc8/exf;->length:I

    if-eqz p2, :cond_2

    :goto_1
    invoke-direct {v0, p1, v6, v4}, Lc8/yxf;-><init>(Lc8/oyf;II)V

    .line 39
    .local v0, "handler":Lc8/yxf;
    invoke-static {v2, v0}, Lc8/bxf;->transformFrom(Lc8/exf;Lc8/yxf;)Lc8/bxf;

    move-result-object v3

    .line 40
    .local v3, "result":Lc8/bxf;
    invoke-virtual {v0}, Lc8/yxf;->isCancellationCalled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v5

    goto :goto_0

    .line 38
    .end local v0    # "handler":Lc8/yxf;
    .end local v3    # "result":Lc8/bxf;
    :cond_2
    invoke-virtual {v1}, Lc8/Jxf;->getProgressUpdateStep()I

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method protected conductResult(Lc8/oyf;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/cxf;",
            "Lc8/Jxf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/EncodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    invoke-interface/range {p1 .. p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/Jxf;

    .line 46
    .local v11, "request":Lc8/Jxf;
    invoke-virtual {v11}, Lc8/Jxf;->getImageUriInfo()Lc8/Lxf;

    move-result-object v14

    .line 47
    .local v14, "uriInfo":Lc8/Lxf;
    invoke-virtual {v11}, Lc8/Jxf;->getSecondaryUriInfo()Lc8/Lxf;

    move-result-object v13

    .line 48
    .local v13, "secondUriInfo":Lc8/Lxf;
    invoke-virtual {v14}, Lc8/Lxf;->getSchemeInfo()Lc8/Mxf;

    move-result-object v12

    .line 50
    .local v12, "schemeInfo":Lc8/Mxf;
    invoke-virtual {v12}, Lc8/Mxf;->isLocalUri()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v10, 0x1

    .line 51
    .local v10, "loadType":I
    :goto_0
    if-nez v10, :cond_3

    .line 52
    const/4 v9, 0x0

    .line 99
    :cond_0
    :goto_1
    return v9

    .line 50
    .end local v10    # "loadType":I
    :cond_1
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lc8/Lxf;->getSchemeInfo()Lc8/Mxf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Mxf;->isLocalUri()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v10, 0x2

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 56
    .restart local v10    # "loadType":I
    :cond_3
    const/4 v9, 0x0

    .line 57
    .local v9, "isLast":Z
    const/4 v3, 0x0

    .line 58
    .local v3, "encodedData":Lc8/bxf;
    invoke-virtual {v14}, Lc8/Lxf;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "filePath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lc8/Bxf;->onConductStart(Lc8/oyf;)V

    .line 60
    packed-switch v10, :pswitch_data_0

    .line 82
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lc8/Bxf;->onConductFinish(Lc8/oyf;Z)V

    .line 84
    if-eqz v3, :cond_0

    .line 86
    if-eqz v9, :cond_4

    .line 87
    invoke-virtual {v11}, Lc8/Jxf;->getStatistics()Lc8/Kxf;

    move-result-object v5

    iget v6, v3, Lc8/bxf;->length:I

    invoke-virtual {v5, v6}, Lc8/Kxf;->setSize(I)V

    .line 89
    :cond_4
    new-instance v2, Lc8/cxf;

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 94
    invoke-virtual {v14}, Lc8/Lxf;->getImageExtension()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lc8/cxf;-><init>(Lc8/bxf;Ljava/lang/String;IZLjava/lang/String;)V

    .line 96
    .local v2, "retImage":Lc8/cxf;
    const/4 v5, 0x2

    if-ne v10, v5, :cond_7

    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, v2, Lc8/cxf;->isSecondary:Z

    .line 97
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v9}, Lc8/oyf;->onNewResult(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 63
    .end local v2    # "retImage":Lc8/cxf;
    :pswitch_0
    const/4 v9, 0x1

    .line 64
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12, v4}, Lc8/Bxf;->readLocalData(Lc8/oyf;ZLc8/Mxf;Ljava/lang/String;)Lc8/bxf;

    move-result-object v3

    .line 65
    const-string/jumbo v6, "LocalFile"

    const-string/jumbo v7, "load file result=%B"

    const/4 v5, 0x1

    new-array v15, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lc8/bxf;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v15, v16

    invoke-static {v6, v4, v7, v15}, Lc8/qwf;->dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 66
    :catch_0
    move-exception v8

    .line 67
    .local v8, "ex":Ljava/lang/Exception;
    const-string/jumbo v5, "LocalFile"

    const-string/jumbo v6, "load file error=%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v7, v15

    invoke-static {v5, v4, v6, v7}, Lc8/qwf;->ep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 65
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 73
    :pswitch_1
    :try_start_1
    invoke-virtual {v13}, Lc8/Lxf;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 74
    const/4 v5, 0x1

    invoke-virtual {v13}, Lc8/Lxf;->getSchemeInfo()Lc8/Mxf;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v4}, Lc8/Bxf;->readLocalData(Lc8/oyf;ZLc8/Mxf;Ljava/lang/String;)Lc8/bxf;

    move-result-object v3

    .line 75
    invoke-interface/range {p1 .. p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Jxf;

    invoke-virtual {v5}, Lc8/Jxf;->disableSecondary()V

    .line 76
    const-string/jumbo v6, "LocalFile"

    const-string/jumbo v7, "load file(secondary) result=%B"

    const/4 v5, 0x1

    new-array v15, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lc8/bxf;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v15, v16

    invoke-static {v6, v4, v7, v15}, Lc8/qwf;->dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 77
    :catch_1
    move-exception v8

    .line 78
    .restart local v8    # "ex":Ljava/lang/Exception;
    const-string/jumbo v5, "LocalFile"

    const-string/jumbo v6, "load file(secondary) error=%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v7, v15

    invoke-static {v5, v4, v6, v7}, Lc8/qwf;->ep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 76
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    .line 96
    .restart local v2    # "retImage":Lc8/cxf;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
