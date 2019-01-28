.class public Lc8/KC;
.super Ljava/lang/Object;
.source "WVServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MtopResult"
.end annotation


# instance fields
.field private jsContext:Ljava/lang/Object;

.field private result:Lorg/json/JSONObject;

.field private success:Z

.field final synthetic this$0:Lc8/MC;


# direct methods
.method public constructor <init>(Lc8/MC;)V
    .locals 1

    .prologue
    .line 478
    iput-object p1, p0, Lc8/KC;->this$0:Lc8/MC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/KC;->jsContext:Ljava/lang/Object;

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/KC;->success:Z

    .line 476
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/KC;->result:Lorg/json/JSONObject;

    .line 479
    return-void
.end method

.method public constructor <init>(Lc8/MC;Ljava/lang/Object;)V
    .locals 1
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 481
    iput-object p1, p0, Lc8/KC;->this$0:Lc8/MC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/KC;->jsContext:Ljava/lang/Object;

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/KC;->success:Z

    .line 476
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lc8/KC;->result:Lorg/json/JSONObject;

    .line 482
    iput-object p2, p0, Lc8/KC;->jsContext:Ljava/lang/Object;

    .line 483
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 491
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/KC;->result:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addData(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .prologue
    .line 501
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/KC;->result:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getJsContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lc8/KC;->jsContext:Ljava/lang/Object;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lc8/KC;->success:Z

    return v0
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 486
    if-eqz p1, :cond_0

    .line 487
    iput-object p1, p0, Lc8/KC;->result:Lorg/json/JSONObject;

    .line 488
    :cond_0
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 515
    iput-boolean p1, p0, Lc8/KC;->success:Z

    .line 516
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lc8/KC;->result:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
