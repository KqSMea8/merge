.class public Lc8/Brf;
.super Ljava/lang/Object;
.source "MtopResult.java"


# instance fields
.field private dataString:Ljava/lang/String;

.field private jsContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private result:Lorg/json/JSONObject;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lc8/Brf;->jsContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Brf;->success:Z

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/Brf;->result:Lorg/json/JSONObject;

    .line 17
    iput-object v1, p0, Lc8/Brf;->dataString:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lc8/Brf;->jsContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Brf;->success:Z

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/Brf;->result:Lorg/json/JSONObject;

    .line 17
    iput-object v1, p0, Lc8/Brf;->dataString:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lc8/Brf;->jsContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 24
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/Brf;->result:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addData(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/Brf;->result:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getJsContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lc8/Brf;->jsContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lc8/Brf;->success:Z

    return v0
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lc8/Brf;->result:Lorg/json/JSONObject;

    .line 33
    :cond_0
    return-void
.end method

.method public setDataString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/Brf;->dataString:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setJsContext(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0
    .param p1, "jsContext"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 66
    iput-object p1, p0, Lc8/Brf;->jsContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 67
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lc8/Brf;->success:Z

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/Brf;->dataString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lc8/Brf;->dataString:Ljava/lang/String;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Brf;->result:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
