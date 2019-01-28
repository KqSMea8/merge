.class public Lc8/azk;
.super Lc8/rJf;
.source "MKTHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccsReceiverConnectionImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dzk;


# direct methods
.method public constructor <init>(Lc8/dzk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dzk;

    .prologue
    .line 153
    iput-object p1, p0, Lc8/azk;->this$0:Lc8/dzk;

    invoke-direct {p0}, Lc8/rJf;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 3
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "serviceID"    # Ljava/lang/String;
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "service_id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    if-eqz p4, :cond_0

    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 179
    :cond_0
    invoke-virtual {p0, p1, p3, v0}, Lc8/azk;->onResponse(Ljava/lang/String;ILjava/util/Map;)V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RequestNet accs onSendData code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    return-void
.end method

.method public sendData(Lc8/qJf;)V
    .locals 6
    .param p1, "data"    # Lc8/qJf;

    .prologue
    .line 156
    new-instance v1, Lcom/taobao/accs/ACCSManager$AccsRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 157
    invoke-static {}, Lc8/PJf;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lc8/qJf;->serviceId:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lc8/qJf;->getBytes()[B

    move-result-object v4

    iget-object v5, p1, Lc8/qJf;->dataId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 161
    .local v1, "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    invoke-virtual {p1}, Lc8/qJf;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTarget(Ljava/lang/String;)V

    .line 163
    :try_start_0
    iget-object v2, p1, Lc8/qJf;->host:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/net/URL;

    iget-object v3, p1, Lc8/qJf;->host:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setHost(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v2, "youku"

    invoke-static {v2}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/accs/ACCSClient;->sendData(Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/taobao/accs/AccsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :goto_1
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 166
    const-string/jumbo v2, "AccsConnection"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lc8/ZJf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method
