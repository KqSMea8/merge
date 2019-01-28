.class public abstract Lc8/EFb;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Z

.field protected d:Ljava/lang/Boolean;

.field protected e:Z

.field protected f:Z

.field protected g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/EFb;->a:Ljava/lang/String;

    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lc8/EFb;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lc8/EFb;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/EFb;->d:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lc8/EFb;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/EFb;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lc8/EFb;->g:I

    return-void
.end method

.method private b(Ljava/util/Map;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;
    .locals 2

    new-instance v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;-><init>()V

    iget-object v1, p0, Lc8/EFb;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiName:Ljava/lang/String;

    iget-object v1, p0, Lc8/EFb;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    iget-boolean v1, p0, Lc8/EFb;->c:Z

    iput-boolean v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needLogin:Z

    iget-object v1, p0, Lc8/EFb;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needWua:Z

    iget-boolean v1, p0, Lc8/EFb;->e:Z

    iput-boolean v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needAuth:Z

    iget-boolean v1, p0, Lc8/EFb;->f:Z

    iput-boolean v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->isPost:Z

    iget v1, p0, Lc8/EFb;->g:I

    iput v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->timeOut:I

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->requestType:I

    iput-object p1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->paramMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;
    .locals 2

    invoke-static {}, Lc8/UFb;->getInstance()Lc8/UFb;

    move-result-object v0

    invoke-direct {p0, p1}, Lc8/EFb;->b(Ljava/util/Map;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/UFb;->sendRequest(Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;Lc8/VFb;)Z
    .locals 2

    invoke-static {}, Lc8/UFb;->getInstance()Lc8/UFb;

    move-result-object v0

    invoke-direct {p0, p1}, Lc8/EFb;->b(Ljava/util/Map;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lc8/UFb;->sendRequest(Lc8/VFb;Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;)Z

    move-result v0

    return v0
.end method
