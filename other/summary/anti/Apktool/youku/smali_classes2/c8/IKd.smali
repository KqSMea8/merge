.class public abstract Lc8/IKd;
.super Ljava/lang/Object;
.source "Strategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final APP_KEY:Ljava/lang/String; = "app_key"

.field public static final DEVICE_ERROR_CODE:Ljava/lang/String; = "20000"

.field public static final FEEDBACK_PARAMETER_ERROR_CODE:Ljava/lang/String; = "20001"

.field public static final PUSH_ID:Ljava/lang/String; = "push_id"

.field public static final STRATEGY_CHILD_TYPE:Ljava/lang/String; = "strategy_child_type"

.field public static final STRATEGY_PACKAGE_NANME:Ljava/lang/String; = "strategy_package_name"

.field public static final STRATEGY_PARAMS:Ljava/lang/String; = "strategy_params"

.field public static final STRATEGY_REGISTER:I = 0x2

.field public static final STRATEGY_SUBALIAS:I = 0x8

.field public static final STRATEGY_SUBTAGS:I = 0x4

.field public static final STRATEGY_SWITCH:I = 0x10

.field public static final STRATEGY_TYPE:Ljava/lang/String; = "strategy_type"

.field public static final STRATEGY_UNREGISTER:I = 0x20

.field public static final SUCCESS_CODE:Ljava/lang/String; = "200"

.field public static final TAG:Ljava/lang/String; = "Strategy"


# instance fields
.field protected appId:Ljava/lang/String;

.field protected appKey:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected volatile deviceId:Ljava/lang/String;

.field protected enableRPC:Z

.field protected executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field protected isSupportRemoteInvoke:Z

.field private managerServicePackageName:Ljava/lang/String;

.field protected pushAPI:Lc8/CKd;

.field protected strategyPackageNanme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "pushAPI"    # Lc8/CKd;
    .param p5, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 61
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/IKd;->isSupportRemoteInvoke:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/IKd;->enableRPC:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/IKd;->managerServicePackageName:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lc8/IKd;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 63
    iput-object p1, p0, Lc8/IKd;->context:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lc8/IKd;->appId:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lc8/IKd;->appKey:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lc8/IKd;->pushAPI:Lc8/CKd;

    .line 68
    return-void
.end method

.method private isServerError(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    .local p1, "basicPushStatus":Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;, "TT;"
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 235
    .local v1, "errorCode":I
    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    const/16 v2, 0x258

    if-lt v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_2

    :cond_1
    if-nez v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isServiceCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 147
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    const v0, 0x1adb0

    if-lt p1, v0, :cond_0

    const v0, 0x30d40

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportAllResponse()Z
    .locals 2

    .prologue
    .line 139
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    iget-boolean v0, p0, Lc8/IKd;->enableRPC:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/IKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/IKd;->managerServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected findService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    const/4 v7, 0x0

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "componentName":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 265
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v2, "localIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 267
    .local v3, "localList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_2

    .line 268
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 269
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v5, "com.meizu.cloud"

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lc8/IKd;->managerServicePackageName:Ljava/lang/String;

    .line 271
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 275
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 276
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lc8/IKd;->managerServicePackageName:Ljava/lang/String;

    .line 277
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 281
    .end local v2    # "localIntent":Landroid/content/Intent;
    .end local v3    # "localList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const-string/jumbo v4, "Strategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current process packageName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/IKd;->managerServicePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-object v0
.end method

.method protected getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    iget-object v0, p0, Lc8/IKd;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lc8/IKd;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/DLd;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/IKd;->deviceId:Ljava/lang/String;

    .line 256
    const-string/jumbo v0, "Strategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/IKd;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lc8/IKd;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method protected isRegisterStatus()Z
    .locals 2

    .prologue
    .line 156
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    const/4 v0, 0x2

    invoke-virtual {p0}, Lc8/IKd;->strategyType()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0}, Lc8/IKd;->strategyType()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract matchCondition()Z
.end method

.method protected abstract netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public process()Z
    .locals 3

    .prologue
    .line 160
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    const/4 v0, 0x1

    .line 161
    .local v0, "flag":Z
    iget-object v1, p0, Lc8/IKd;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lc8/IKd;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lc8/HKd;

    invoke-direct {v2, p0}, Lc8/HKd;-><init>(Lc8/IKd;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 171
    :goto_0
    return v0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lc8/IKd;->processMainThread()Z

    move-result v0

    goto :goto_0
.end method

.method public processMainThread()Z
    .locals 9

    .prologue
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    const/4 v5, 0x1

    .line 175
    const/4 v2, 0x1

    .line 176
    .local v2, "flag":Z
    const/4 v0, 0x0

    .line 177
    .local v0, "basicPushStatus":Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;, "TT;"
    invoke-virtual {p0}, Lc8/IKd;->matchCondition()Z

    move-result v6

    if-nez v6, :cond_3

    .line 178
    const-string/jumbo v6, "Strategy"

    const-string/jumbo v7, "Missing required parameters"

    invoke-static {v6, v7}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lc8/IKd;->feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;

    move-result-object v0

    .line 180
    invoke-virtual {p0, v0}, Lc8/IKd;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V

    .line 224
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 225
    const-string/jumbo v6, "Strategy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "current status code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, v0}, Lc8/IKd;->isServerError(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)Z

    move-result v6

    if-nez v6, :cond_a

    move v2, v5

    :cond_1
    :goto_1
    move v5, v2

    .line 228
    :cond_2
    return v5

    .line 181
    :cond_3
    invoke-virtual {p0}, Lc8/IKd;->supportServiceRpc()Z

    move-result v6

    if-nez v6, :cond_8

    .line 182
    invoke-virtual {p0}, Lc8/IKd;->netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;

    move-result-object v0

    .line 183
    const-string/jumbo v6, "Strategy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "real response status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lc8/IKd;->isRegisterStatus()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "20000"

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 188
    :cond_4
    invoke-direct {p0}, Lc8/IKd;->supportAllResponse()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 189
    const-string/jumbo v6, "Strategy"

    const-string/jumbo v7, "response all request in local app"

    invoke-static {v6, v7}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, v0}, Lc8/IKd;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V

    goto :goto_0

    .line 192
    :cond_5
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "code":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 194
    const-string/jumbo v1, "0"

    .line 197
    :cond_6
    const-string/jumbo v6, "200"

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 198
    invoke-virtual {p0, v0}, Lc8/IKd;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V

    .line 200
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 201
    .local v4, "serviceCode":I
    invoke-direct {p0, v4}, Lc8/IKd;->isServiceCode(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    const-string/jumbo v6, "Strategy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "service error so notify pushManager invoker code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, v0}, Lc8/IKd;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V

    goto/16 :goto_0

    .line 209
    .end local v1    # "code":Ljava/lang/String;
    .end local v4    # "serviceCode":I
    :cond_8
    const-string/jumbo v6, "Strategy"

    const-string/jumbo v7, "send message to remote service"

    invoke-static {v6, v7}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lc8/IKd;->isRegisterStatus()Z

    move-result v6

    if-nez v6, :cond_9

    .line 212
    invoke-virtual {p0}, Lc8/IKd;->localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_9

    .line 214
    const-string/jumbo v6, "Strategy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "local response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v0}, Lc8/IKd;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V

    .line 219
    :cond_9
    invoke-virtual {p0}, Lc8/IKd;->sendRpcRequest()Landroid/content/Intent;

    move-result-object v3

    .line 220
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {p0, v3}, Lc8/IKd;->sendIntentMessage(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 226
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method protected sendIntentMessage(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 287
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    :try_start_0
    iget-object v1, p0, Lc8/IKd;->managerServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string/jumbo v1, "com.meizu.cloud.pushservice.action.PUSH_MANAGER_SERVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v1, p0, Lc8/IKd;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Strategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start RemoteService error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract sendRpcRequest()Landroid/content/Intent;
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 75
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    iput-object p1, p0, Lc8/IKd;->appId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 79
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    iput-object p1, p0, Lc8/IKd;->appKey:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setStrategyPackageNanme(Ljava/lang/String;)V
    .locals 0
    .param p1, "strategyPackageNanme"    # Ljava/lang/String;

    .prologue
    .line 83
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    iput-object p1, p0, Lc8/IKd;->strategyPackageNanme:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSupportRemoteInvoke(Z)V
    .locals 0
    .param p1, "isSupportRemoteInvoke"    # Z

    .prologue
    .line 90
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    iput-boolean p1, p0, Lc8/IKd;->isSupportRemoteInvoke:Z

    .line 91
    return-void
.end method

.method protected abstract strategyType()I
.end method

.method protected supportServiceRpc()Z
    .locals 2

    .prologue
    .line 108
    .local p0, "this":Lc8/IKd;, "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy<TT;>;"
    iget-boolean v0, p0, Lc8/IKd;->enableRPC:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/IKd;->isSupportRemoteInvoke:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/IKd;->context:Landroid/content/Context;

    const-string/jumbo v1, "com.meizu.cloud.pushservice.action.PUSH_MANAGER_SERVICE"

    .line 109
    invoke-virtual {p0, v0, v1}, Lc8/IKd;->findService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
