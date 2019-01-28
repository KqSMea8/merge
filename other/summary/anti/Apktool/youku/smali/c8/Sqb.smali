.class public Lc8/Sqb;
.super Ljava/lang/Object;
.source "WXWindVaneCallBack.java"

# interfaces
.implements Lc8/OD;
.implements Lc8/PD;


# instance fields
.field private InstanceId:Ljava/lang/String;

.field private callback:Ljava/lang/String;

.field private transObject:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "InstanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .param p3, "needTransObject"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Sqb;->transObject:Z

    .line 19
    iput-object p1, p0, Lc8/Sqb;->InstanceId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lc8/Sqb;->callback:Ljava/lang/String;

    .line 21
    iput-boolean p3, p0, Lc8/Sqb;->transObject:Z

    .line 22
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-boolean v2, p0, Lc8/Sqb;->transObject:Z

    if-eqz v2, :cond_1

    .line 48
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, "object":Ljava/lang/Object;
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v2

    iget-object v3, p0, Lc8/Sqb;->InstanceId:Ljava/lang/String;

    iget-object v4, p0, Lc8/Sqb;->callback:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    const-string/jumbo v2, "WXWindVaneModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "call fail s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lc8/Sqb;->callback:Ljava/lang/String;

    invoke-static {v2}, Lc8/Vqb;->popMtopTracker(Ljava/lang/String;)Lc8/gxb;

    move-result-object v0

    .line 58
    .local v0, "existedTracker":Lc8/gxb;
    if-eqz v0, :cond_0

    .line 59
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lc8/gxb;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v0    # "existedTracker":Lc8/gxb;
    :cond_0
    return-void

    .line 53
    :cond_1
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v2

    iget-object v3, p0, Lc8/Sqb;->InstanceId:Ljava/lang/String;

    iget-object v4, p0, Lc8/Sqb;->callback:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, p1}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public succeed(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-boolean v2, p0, Lc8/Sqb;->transObject:Z

    if-eqz v2, :cond_1

    .line 28
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "object":Ljava/lang/Object;
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v2

    iget-object v3, p0, Lc8/Sqb;->InstanceId:Ljava/lang/String;

    iget-object v4, p0, Lc8/Sqb;->callback:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    const-string/jumbo v2, "WXWindVaneModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "call succeed s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lc8/Sqb;->callback:Ljava/lang/String;

    invoke-static {v2}, Lc8/Vqb;->popMtopTracker(Ljava/lang/String;)Lc8/gxb;

    move-result-object v0

    .line 38
    .local v0, "existedTracker":Lc8/gxb;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Lc8/gxb;->onResponse(Ljava/lang/String;)V

    .line 42
    .end local v0    # "existedTracker":Lc8/gxb;
    :cond_0
    return-void

    .line 33
    :cond_1
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v2

    iget-object v3, p0, Lc8/Sqb;->InstanceId:Ljava/lang/String;

    iget-object v4, p0, Lc8/Sqb;->callback:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, p1}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :catch_0
    move-exception v2

    goto :goto_0
.end method
