.class public abstract Lc8/rHf;
.super Ljava/lang/Object;
.source "CommandListener.java"


# instance fields
.field private mCommandID:I

.field private mParams:Ljava/util/Map;
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

.field private mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract parserCommand(Ljava/lang/String;ILcom/alibaba/fastjson/JSONObject;)Z
.end method

.method public parserCommand(Ljava/lang/String;ILcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)Z
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "commandID"    # I
    .param p3, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 18
    .local p4, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p4, p0, Lc8/rHf;->mParams:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lc8/rHf;->mServiceName:Ljava/lang/String;

    .line 20
    iput p2, p0, Lc8/rHf;->mCommandID:I

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lc8/rHf;->parserCommand(Ljava/lang/String;ILcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    return v0
.end method

.method protected responseCommand(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 28
    .local v5, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v0, "serviceName"

    iget-object v1, p0, Lc8/rHf;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string/jumbo v0, "commandID"

    iget v1, p0, Lc8/rHf;->mCommandID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string/jumbo v0, "content"

    invoke-virtual {v5, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const v0, 0xfff7

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    iget-object v3, p0, Lc8/rHf;->mParams:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 32
    return-void
.end method
