.class public Lc8/qJf;
.super Ljava/lang/Object;
.source "AccsConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rJf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataPackage"
.end annotation


# instance fields
.field public dataId:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation
.end field

.field public serviceId:Ljava/lang/String;

.field stream:Ljava/io/ByteArrayOutputStream;

.field public sys:I

.field public topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "sys"    # I
    .param p3, "topic"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string/jumbo v1, ""

    iput-object v1, p0, Lc8/qJf;->ip:Ljava/lang/String;

    .line 115
    const-string/jumbo v1, ""

    iput-object v1, p0, Lc8/qJf;->topic:Ljava/lang/String;

    .line 117
    const-string/jumbo v1, ""

    iput-object v1, p0, Lc8/qJf;->dataId:Ljava/lang/String;

    .line 118
    const-string/jumbo v1, ""

    iput-object v1, p0, Lc8/qJf;->serviceId:Ljava/lang/String;

    .line 119
    const-string/jumbo v1, ""

    iput-object v1, p0, Lc8/qJf;->host:Ljava/lang/String;

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/qJf;->packages:Ljava/util/List;

    .line 122
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lc8/qJf;->stream:Ljava/io/ByteArrayOutputStream;

    .line 125
    iput-object p1, p0, Lc8/qJf;->ip:Ljava/lang/String;

    .line 126
    iput p2, p0, Lc8/qJf;->sys:I

    .line 127
    iput-object p3, p0, Lc8/qJf;->topic:Ljava/lang/String;

    .line 128
    sget-object v1, Lc8/PJf;->serviceMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "sid":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 130
    iput-object v0, p0, Lc8/qJf;->serviceId:Ljava/lang/String;

    .line 132
    :cond_0
    sget-object v1, Lc8/PJf;->info:Lc8/OJf;

    invoke-interface {v1}, Lc8/OJf;->returnHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/qJf;->host:Ljava/lang/String;

    .line 133
    return-void

    .line 131
    :cond_1
    invoke-static {}, Lc8/PJf;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public add(Lc8/RJf;)V
    .locals 1
    .param p1, "item"    # Lc8/RJf;

    .prologue
    .line 136
    iget-object v0, p0, Lc8/qJf;->packages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 137
    iget-object v0, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v0}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/qJf;->dataId:Ljava/lang/String;

    .line 138
    :cond_0
    iget-object v0, p0, Lc8/qJf;->packages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lc8/qJf;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lc8/qJf;->packages:Ljava/util/List;

    return-object v0
.end method

.method getStream()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lc8/qJf;->stream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    const-string/jumbo v0, ""

    .line 159
    .local v0, "target":Ljava/lang/String;
    iget-object v1, p0, Lc8/qJf;->ip:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/qJf;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_0
    iget-object v1, p0, Lc8/qJf;->topic:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":T_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/qJf;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_1
    return-object v0
.end method
