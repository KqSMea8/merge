.class public Lc8/xIb;
.super Ljava/lang/Object;
.source "AlibcPromotionSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yIb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PromotionBusiness"
.end annotation


# instance fields
.field protected API_NAME:Ljava/lang/String;

.field protected API_VERSION:Ljava/lang/String;

.field protected IS_AUTH:Z

.field protected IS_NEED_LOGINE:Z

.field protected IS_POST:Z

.field protected IS_WUA:Ljava/lang/Boolean;

.field protected TIME_OUT:I

.field final synthetic this$0:Lc8/yIb;


# direct methods
.method public constructor <init>(Lc8/yIb;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iput-object p1, p0, Lc8/xIb;->this$0:Lc8/yIb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string/jumbo v0, "mtop.taobao.baichuan.afc.marketing.task.finish"

    iput-object v0, p0, Lc8/xIb;->API_NAME:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lc8/xIb;->API_VERSION:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lc8/xIb;->IS_NEED_LOGINE:Z

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/xIb;->IS_WUA:Ljava/lang/Boolean;

    .line 85
    iput-boolean v1, p0, Lc8/xIb;->IS_AUTH:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/xIb;->IS_POST:Z

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lc8/xIb;->TIME_OUT:I

    .line 91
    return-void
.end method

.method private getRequest(Ljava/util/Map;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)",
            "Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    new-instance v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;-><init>()V

    .line 116
    .local v0, "request":Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;
    iget-object v1, p0, Lc8/xIb;->API_NAME:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiName:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lc8/xIb;->API_VERSION:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->apiVersion:Ljava/lang/String;

    .line 118
    iget-boolean v1, p0, Lc8/xIb;->IS_NEED_LOGINE:Z

    iput-boolean v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needLogin:Z

    .line 119
    iget-object v1, p0, Lc8/xIb;->IS_WUA:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needWua:Z

    .line 120
    iget-boolean v1, p0, Lc8/xIb;->IS_AUTH:Z

    iput-boolean v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->needAuth:Z

    .line 121
    iget-boolean v1, p0, Lc8/xIb;->IS_POST:Z

    iput-boolean v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->isPost:Z

    .line 122
    iget v1, p0, Lc8/xIb;->TIME_OUT:I

    iput v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->timeOut:I

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->requestType:I

    .line 125
    iput-object p1, v0, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;->paramMap:Ljava/util/Map;

    .line 126
    return-object v0
.end method

.method private parserLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "longStr"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 110
    :goto_0
    return-wide v2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const-wide/16 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public sendRequest(Ljava/lang/String;Ljava/lang/String;Lc8/VFb;)Z
    .locals 4
    .param p1, "marketingId"    # Ljava/lang/String;
    .param p2, "encToken"    # Ljava/lang/String;
    .param p3, "callback"    # Lc8/VFb;

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    const-string/jumbo v1, "marketingId"

    invoke-direct {p0, p1}, Lc8/xIb;->parserLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v1, "encToken"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lc8/UFb;->getInstance()Lc8/UFb;

    move-result-object v1

    invoke-direct {p0, v0}, Lc8/xIb;->getRequest(Ljava/util/Map;)Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lc8/UFb;->sendRequest(Lc8/VFb;Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkRequest;)Z

    move-result v1

    return v1
.end method
