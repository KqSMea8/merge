.class public Lc8/Pko;
.super Lc8/Oko;
.source "SNSBindInfo.java"


# instance fields
.field public mBindInfo:Lc8/Qko;

.field public mBinded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lc8/Oko;-><init>()V

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 15
    const/4 v2, 0x0

    .line 17
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-super {p0}, Lc8/Oko;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .local v0, "content":Lorg/json/JSONObject;
    const-string/jumbo v3, "bound"

    iget-boolean v4, p0, Lc8/Pko;->mBinded:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-boolean v3, p0, Lc8/Pko;->mBinded:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Pko;->mBindInfo:Lc8/Qko;

    if-eqz v3, :cond_0

    .line 21
    const-string/jumbo v3, "info"

    iget-object v4, p0, Lc8/Pko;->mBindInfo:Lc8/Qko;

    invoke-virtual {v4}, Lc8/Qko;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_0
    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v0    # "content":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
