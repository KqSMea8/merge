.class public final Lc8/pXe;
.super Lcom/taobao/accs/IAgooAppReceiver;
.source "TaobaoRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qXe;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/mXe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$accsmanager:Lcom/taobao/accs/IACCSManager;

.field final synthetic val$agooCallback:Lc8/mXe;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$ttid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/taobao/accs/IACCSManager;Lc8/mXe;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lc8/pXe;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lc8/pXe;->val$accsmanager:Lcom/taobao/accs/IACCSManager;

    iput-object p3, p0, Lc8/pXe;->val$agooCallback:Lc8/mXe;

    iput-object p4, p0, Lc8/pXe;->val$appKey:Ljava/lang/String;

    iput-object p5, p0, Lc8/pXe;->val$ttid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/taobao/accs/IAgooAppReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lc8/pXe;->val$appKey:Ljava/lang/String;

    return-object v0
.end method

.method public onBindApp(ILjava/lang/String;)V
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "deviceToken"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 102
    :try_start_0
    const-string/jumbo v4, "TaobaoRegister"

    const-string/jumbo v5, "onBindApp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "errorCode"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_5

    .line 105
    invoke-static {}, Lc8/qXe;->access$000()Lc8/sXe;

    move-result-object v4

    if-nez v4, :cond_0

    .line 106
    new-instance v4, Lc8/sXe;

    iget-object v5, p0, Lc8/pXe;->val$appContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lc8/sXe;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lc8/qXe;->access$002(Lc8/sXe;)Lc8/sXe;

    .line 109
    :cond_0
    iget-object v4, p0, Lc8/pXe;->val$accsmanager:Lcom/taobao/accs/IACCSManager;

    iget-object v5, p0, Lc8/pXe;->val$appContext:Landroid/content/Context;

    const-string/jumbo v6, "AgooDeviceCmd"

    invoke-static {}, Lc8/qXe;->access$000()Lc8/sXe;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 111
    invoke-static {}, Lc8/qXe;->access$000()Lc8/sXe;

    sget-object v4, Lc8/sXe;->mAgooBindCache:Lc8/rXe;

    iget-object v5, p0, Lc8/pXe;->val$appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/rXe;->isAgooRegistered(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    const-string/jumbo v4, "TaobaoRegister"

    const-string/jumbo v5, "agoo aready Registered return "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v4, p0, Lc8/pXe;->val$agooCallback:Lc8/mXe;

    if-eqz v4, :cond_1

    .line 114
    iget-object v4, p0, Lc8/pXe;->val$agooCallback:Lc8/mXe;

    iget-object v5, p0, Lc8/pXe;->val$appContext:Landroid/content/Context;

    invoke-static {v5}, Lc8/BWp;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/mXe;->onSuccess(Ljava/lang/String;)V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-object v4, p0, Lc8/pXe;->val$appContext:Landroid/content/Context;

    iget-object v5, p0, Lc8/pXe;->val$appKey:Ljava/lang/String;

    iget-object v6, p0, Lc8/pXe;->val$ttid:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lc8/vXe;->buildRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 121
    .local v0, "data":[B
    if-nez v0, :cond_3

    .line 122
    iget-object v4, p0, Lc8/pXe;->val$agooCallback:Lc8/mXe;

    if-eqz v4, :cond_1

    .line 123
    iget-object v4, p0, Lc8/pXe;->val$agooCallback:Lc8/mXe;

    const-string/jumbo v5, "503.1"

    const-string/jumbo v6, "req data null"

    invoke-virtual {v4, v5, v6}, Lc8/mXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v0    # "data":[B
    :catch_0
    move-exception v3

    .line 147
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "TaobaoRegister"

    const-string/jumbo v5, "register onBindApp"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "data":[B
    :cond_3
    :try_start_1
    new-instance v2, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v4, 0x0

    const-string/jumbo v5, "AgooDeviceCmd"

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v0, v6}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 129
    .local v2, "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    iget-object v4, p0, Lc8/pXe;->val$accsmanager:Lcom/taobao/accs/IACCSManager;

    iget-object v5, p0, Lc8/pXe;->val$appContext:Landroid/content/Context;

    invoke-interface {v4, v5, v2}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "dataId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 131
    iget-object v4, p0, Lc8/pXe;->val$agooCallback:Lc8/mXe;

    if-eqz v4, :cond_1

    .line 132
    iget-object v4, p0, Lc8/pXe;->val$agooCallback:Lc8/mXe;

    const-string/jumbo v5, "503.1"

    const-string/jumbo v6, "accs channel disabled!"

    invoke-virtual {v4, v5, v6}, Lc8/mXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_4
    iget-object v4, p0, Lc8/pXe;->val$agooCallback:Lc8/mXe;

    if-eqz v4, :cond_1

    .line 137
    invoke-static {}, Lc8/qXe;->access$000()Lc8/sXe;

    move-result-object v4

    iget-object v4, v4, Lc8/sXe;->mListeners:Ljava/util/Map;

    iget-object v5, p0, Lc8/pXe;->val$agooCallback:Lc8/mXe;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    .end local v0    # "data":[B
    .end local v1    # "dataId":Ljava/lang/String;
    .end local v2    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    :cond_5
    iget-object v4, p0, Lc8/pXe;->val$agooCallback:Lc8/mXe;

    if-eqz v4, :cond_1

    .line 142
    iget-object v4, p0, Lc8/pXe;->val$agooCallback:Lc8/mXe;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "accs bindapp error!"

    invoke-virtual {v4, v5, v6}, Lc8/mXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
