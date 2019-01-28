.class public Lc8/KKj;
.super Ljava/lang/Object;
.source "ParseJson.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private jsonObject:Lorg/json/JSONObject;

.field private jsonString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lc8/KKj;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/KKj;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lc8/KKj;->jsonString:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public parseDoPayData()Lc8/HKj;
    .locals 6

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 24
    .local v1, "mDoPayData":Lc8/HKj;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lc8/KKj;->jsonString:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    .line 25
    iget-object v4, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v5, "results"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    iget-object v4, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v5, "results"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 27
    .local v3, "resultsObject":Lorg/json/JSONObject;
    new-instance v2, Lc8/HKj;

    invoke-direct {v2}, Lc8/HKj;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v1    # "mDoPayData":Lc8/HKj;
    .local v2, "mDoPayData":Lc8/HKj;
    :try_start_1
    const-string/jumbo v4, "channel_params"

    .line 29
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {v2, v4}, Lc8/HKj;->setChannel_params(Ljava/lang/String;)V

    .line 30
    const-string/jumbo v4, "trade_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lc8/HKj;->setTrade_id(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v4, "order_type"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lc8/HKj;->setOrder_type(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 36
    .end local v2    # "mDoPayData":Lc8/HKj;
    .end local v3    # "resultsObject":Lorg/json/JSONObject;
    .restart local v1    # "mDoPayData":Lc8/HKj;
    :cond_0
    :goto_0
    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v4, Lc8/KKj;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ParseJson#parseDoPayData()"

    invoke-static {v4, v5, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mDoPayData":Lc8/HKj;
    .restart local v2    # "mDoPayData":Lc8/HKj;
    .restart local v3    # "resultsObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "mDoPayData":Lc8/HKj;
    .restart local v1    # "mDoPayData":Lc8/HKj;
    goto :goto_1
.end method

.method public parseDoPayZpdData()Lc8/IKj;
    .locals 6

    .prologue
    .line 55
    new-instance v1, Lc8/IKj;

    invoke-direct {v1}, Lc8/IKj;-><init>()V

    .line 57
    .local v1, "mDoPayZpdData":Lc8/IKj;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lc8/KKj;->jsonString:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    .line 58
    iget-object v3, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lc8/IKj;->error:I

    .line 60
    iget-object v3, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/IKj;->msg:Ljava/lang/String;

    .line 61
    iget-object v3, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 63
    .local v2, "resultObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 64
    const-string/jumbo v3, "channel_response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/IKj;->channel_response:Ljava/lang/String;

    .line 65
    const-string/jumbo v3, "order_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/IKj;->order_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v2    # "resultObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lc8/KKj;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "ParseJson#parseDoPayZpdData()"

    invoke-static {v3, v4, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public parseZpdTradeInfo()Lc8/JKj;
    .locals 6

    .prologue
    .line 76
    new-instance v1, Lc8/JKj;

    invoke-direct {v1}, Lc8/JKj;-><init>()V

    .line 78
    .local v1, "mZpdTradeInfo":Lc8/JKj;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lc8/KKj;->jsonString:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    .line 79
    iget-object v3, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lc8/JKj;->error:I

    .line 81
    iget-object v3, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/JKj;->msg:Ljava/lang/String;

    .line 82
    iget-object v3, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lc8/KKj;->jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 84
    .local v2, "resultObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 85
    const-string/jumbo v3, "status"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lc8/JKj;->status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v2    # "resultObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lc8/KKj;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "ParseJson#parseZpdTradeInfo()"

    invoke-static {v3, v4, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
