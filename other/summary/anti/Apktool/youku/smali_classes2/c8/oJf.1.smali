.class public Lc8/oJf;
.super Ljava/lang/Object;
.source "AccsConnection.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pJf;->call(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<",
        "Lc8/qJf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/pJf;


# direct methods
.method constructor <init>(Lc8/pJf;)V
    .locals 0
    .param p1, "this$1"    # Lc8/pJf;

    .prologue
    .line 74
    iput-object p1, p0, Lc8/oJf;->this$1:Lc8/pJf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/qJf;)V
    .locals 13
    .param p1, "dataPackage"    # Lc8/qJf;

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 78
    .local v6, "netTime":J
    new-instance v4, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/network/AccsConnection$DataPackage;>;"
    const/4 v2, 0x0

    .line 80
    .local v2, "index":I
    const-string/jumbo v8, "AccsConnection"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p1, Lc8/qJf;->dataId:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "send ALL msgs:"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {p1}, Lc8/qJf;->getPackages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lc8/qJf;->getPackages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 82
    invoke-virtual {p1}, Lc8/qJf;->getPackages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/RJf;

    .line 83
    .local v5, "message":Lc8/RJf;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v5, Lc8/RJf;->packTime:J

    .line 84
    iget-object v8, v5, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v8}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->toProtocol()[B

    move-result-object v3

    .line 85
    .local v3, "item":[B
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v2, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/qJf;

    invoke-virtual {v8}, Lc8/qJf;->getStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    array-length v9, v3

    add-int/2addr v8, v9

    const/16 v9, 0x2800

    if-lt v8, v9, :cond_1

    .line 86
    :cond_0
    new-instance v8, Lc8/qJf;

    iget-object v9, p1, Lc8/qJf;->ip:Ljava/lang/String;

    iget v10, p1, Lc8/qJf;->sys:I

    iget-object v11, p1, Lc8/qJf;->topic:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v11}, Lc8/qJf;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .line 88
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/qJf;

    invoke-virtual {v8, v5}, Lc8/qJf;->add(Lc8/RJf;)V

    .line 89
    const-string/jumbo v9, "AccsConnection"

    const/4 v8, 0x5

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v11, p1, Lc8/qJf;->dataId:Ljava/lang/String;

    aput-object v11, v10, v8

    const/4 v8, 0x1

    const-string/jumbo v11, "package divided "

    aput-object v11, v10, v8

    const/4 v8, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v8, 0x3

    const-string/jumbo v11, "to"

    aput-object v11, v10, v8

    const/4 v11, 0x4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/qJf;

    iget-object v8, v8, Lc8/qJf;->dataId:Ljava/lang/String;

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_1
    :try_start_0
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/qJf;

    invoke-virtual {v8}, Lc8/qJf;->getStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/qJf;

    iget-object v8, v8, Lc8/qJf;->dataId:Ljava/lang/String;

    iput-object v8, v5, Lc8/RJf;->dataId:Ljava/lang/String;

    .line 99
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v8

    invoke-virtual {v8}, Lc8/DIf;->getResponseManager()Lc8/GIf;

    move-result-object v8

    iget-object v9, v5, Lc8/RJf;->dataId:Ljava/lang/String;

    invoke-virtual {v8, v9, v5}, Lc8/GIf;->record(Ljava/lang/String;Lc8/RJf;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v5, Lc8/RJf;->packTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v5, Lc8/RJf;->packTime:J

    .line 101
    iput-wide v6, v5, Lc8/RJf;->netTime:J

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v8, "AccsConnection"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "protocol packet error"

    aput-object v11, v9, v10

    invoke-static {v8, v0, v9}, Lc8/ZJf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v8

    invoke-virtual {v8}, Lc8/DIf;->getCallbackManager()Lc8/vIf;

    move-result-object v8

    iget-object v9, v5, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v9}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v9

    const/16 v10, -0xbbd

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lc8/vIf;->invokeCallback(Ljava/lang/String;ILjava/util/Map;)Z

    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "item":[B
    .end local v5    # "message":Lc8/RJf;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/qJf;

    .line 105
    .local v3, "item":Lc8/qJf;
    iget-object v9, p0, Lc8/oJf;->this$1:Lc8/pJf;

    iget-object v9, v9, Lc8/pJf;->this$0:Lc8/rJf;

    invoke-virtual {v9, v3}, Lc8/rJf;->sendData(Lc8/qJf;)V

    .line 106
    const-string/jumbo v9, "AccsConnection"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v3, Lc8/qJf;->dataId:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "send data:"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v3}, Lc8/qJf;->getStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "to:"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-virtual {v3}, Lc8/qJf;->getTarget()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 108
    .end local v3    # "item":Lc8/qJf;
    :cond_3
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Lc8/qJf;

    invoke-virtual {p0, p1}, Lc8/oJf;->call(Lc8/qJf;)V

    return-void
.end method
