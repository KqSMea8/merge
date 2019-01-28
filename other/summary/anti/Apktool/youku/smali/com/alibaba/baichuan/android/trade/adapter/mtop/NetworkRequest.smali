.class public Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accessToken:Ljava/lang/String;

.field public apiName:Ljava/lang/String;

.field public apiVersion:Ljava/lang/String;

.field public authParams:Ljava/lang/String;

.field public extHeaders:Ljava/util/Map;

.field public isPost:Z

.field public needAuth:Z

.field public needCache:Z

.field public needLogin:Z

.field public needWua:Z

.field public openAppKey:Ljava/lang/String;

.field public paramMap:Ljava/util/Map;

.field public requestType:I

.field public timeOut:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needLogin:Z

    iput-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needCache:Z

    iput-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needAuth:Z

    iput-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needWua:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->isPost:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->authParams:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->timeOut:I

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkRequest [apiName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", apiVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->paramMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", openAppKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->openAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", needAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", needWua="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needWua:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
