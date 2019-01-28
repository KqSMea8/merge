.class public Lc8/cLj;
.super Lc8/RD;
.source "WVStepJsBridge.java"


# static fields
.field public static final JS_NAME:Ljava/lang/String; = "YKWVStepBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private isSupportStepCountSensor(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 6
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v5, -0x1

    .line 50
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 51
    .local v0, "result":Lc8/kE;
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/aLj;->isSupportStepCountSensor(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lc8/KWc;->mContext:Landroid/content/Context;

    const-class v4, Lcom/youku/pedometer/service/StepService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    const-string/jumbo v1, "msg"

    const-string/jumbo v2, "Device has STEP COUNTER."

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v1, "code"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupportStepCountSensor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    return-void

    .line 58
    :catch_0
    move-exception v1

    const-string/jumbo v1, "msg"

    const-string/jumbo v2, "Device does not support."

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "code"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 63
    :cond_0
    const-string/jumbo v1, "msg"

    const-string/jumbo v2, "Device does not support."

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "code"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method private postStepData(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 3
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 30
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 32
    .local v0, "result":Lc8/kE;
    :try_start_0
    invoke-static {}, Lc8/VKj;->postStepDataMtop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string/jumbo v1, "code"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    const-string/jumbo v1, "msg"

    const-string/jumbo v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postStepData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    return-void

    .line 37
    :cond_0
    :try_start_1
    const-string/jumbo v1, "code"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string/jumbo v1, "msg"

    const-string/jumbo v2, "NOT LOGIN"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    const-string/jumbo v1, "code"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    const-string/jumbo v1, "msg"

    const-string/jumbo v2, "UNKNOWN ERROR"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v0, 0x1

    .line 19
    const-string/jumbo v1, "postStepData"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-direct {p0, p3}, Lc8/cLj;->postStepData(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 26
    :goto_0
    return v0

    .line 22
    :cond_0
    const-string/jumbo v1, "isSupportStepCountSensor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-direct {p0, p3}, Lc8/cLj;->isSupportStepCountSensor(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
