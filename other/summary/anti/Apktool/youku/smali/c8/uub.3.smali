.class public Lc8/uub;
.super Ljava/lang/Object;
.source "MtopResult.java"


# instance fields
.field private callback:Lc8/EWf;

.field private dataString:Ljava/lang/String;

.field private failure:Lc8/EWf;

.field private result:Lorg/json/JSONObject;

.field private retCode:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>(Lc8/EWf;Lc8/EWf;)V
    .locals 1
    .param p1, "callback"    # Lc8/EWf;
    .param p2, "failure"    # Lc8/EWf;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/uub;->success:Z

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/uub;->result:Lorg/json/JSONObject;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/uub;->dataString:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lc8/uub;->callback:Lc8/EWf;

    .line 25
    iput-object p2, p0, Lc8/uub;->failure:Lc8/EWf;

    .line 26
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/uub;->result:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addData(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/uub;->result:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCallback()Lc8/EWf;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lc8/uub;->callback:Lc8/EWf;

    return-object v0
.end method

.method public getFailureCallback()Lc8/EWf;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lc8/uub;->failure:Lc8/EWf;

    return-object v0
.end method

.method public getResult()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lc8/uub;->result:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRetCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lc8/uub;->retCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lc8/uub;->success:Z

    return v0
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lc8/uub;->result:Lorg/json/JSONObject;

    .line 35
    :cond_0
    return-void
.end method

.method public setDataString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lc8/uub;->dataString:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setRetCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "retCode"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lc8/uub;->retCode:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lc8/uub;->success:Z

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lc8/uub;->dataString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lc8/uub;->dataString:Ljava/lang/String;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/uub;->result:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
