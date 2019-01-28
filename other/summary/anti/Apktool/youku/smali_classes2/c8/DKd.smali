.class public Lc8/DKd;
.super Ljava/lang/Object;
.source "PushPlatformManager.java"


# static fields
.field private static mInstance:Lc8/DKd;


# instance fields
.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mContext:Landroid/content/Context;

.field private pushAPI:Lc8/CKd;

.field private registerStatusStrategy:Lc8/GKd;

.field private subScribeAliasStrategy:Lc8/JKd;

.field private subScribeTagStrategy:Lc8/KKd;

.field private switchStatusStrategy:Lc8/LKd;

.field private unRegisterStatusStrategy:Lc8/MKd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isAsync"    # Z

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lc8/DKd;-><init>(Landroid/content/Context;ZZ)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isAsync"    # Z
    .param p3, "enableRPC"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/DKd;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lc8/CKd;

    iget-object v1, p0, Lc8/DKd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/CKd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/DKd;->pushAPI:Lc8/CKd;

    .line 44
    if-eqz p2, :cond_0

    .line 45
    invoke-static {}, Lc8/cLd;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lc8/DKd;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    :cond_0
    new-instance v0, Lc8/GKd;

    iget-object v1, p0, Lc8/DKd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/DKd;->pushAPI:Lc8/CKd;

    iget-object v3, p0, Lc8/DKd;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, p3}, Lc8/GKd;-><init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    iput-object v0, p0, Lc8/DKd;->registerStatusStrategy:Lc8/GKd;

    .line 48
    new-instance v0, Lc8/MKd;

    iget-object v1, p0, Lc8/DKd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/DKd;->pushAPI:Lc8/CKd;

    iget-object v3, p0, Lc8/DKd;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, p3}, Lc8/MKd;-><init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    iput-object v0, p0, Lc8/DKd;->unRegisterStatusStrategy:Lc8/MKd;

    .line 49
    new-instance v0, Lc8/LKd;

    iget-object v1, p0, Lc8/DKd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/DKd;->pushAPI:Lc8/CKd;

    iget-object v3, p0, Lc8/DKd;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, p3}, Lc8/LKd;-><init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    iput-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    .line 50
    new-instance v0, Lc8/KKd;

    iget-object v1, p0, Lc8/DKd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/DKd;->pushAPI:Lc8/CKd;

    iget-object v3, p0, Lc8/DKd;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, p3}, Lc8/KKd;-><init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    iput-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    .line 51
    new-instance v0, Lc8/JKd;

    iget-object v1, p0, Lc8/DKd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/DKd;->pushAPI:Lc8/CKd;

    iget-object v3, p0, Lc8/DKd;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, p3}, Lc8/JKd;-><init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    iput-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/DKd;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lc8/DKd;->mInstance:Lc8/DKd;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lc8/DKd;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lc8/DKd;->mInstance:Lc8/DKd;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lc8/DKd;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lc8/DKd;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lc8/DKd;->mInstance:Lc8/DKd;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Lc8/DKd;->mInstance:Lc8/DKd;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pushId"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p1}, Lc8/LKd;->setAppId(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p2}, Lc8/LKd;->setAppKey(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p3}, Lc8/LKd;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p4}, Lc8/LKd;->setPushId(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/LKd;->setSwitchType(I)V

    .line 169
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0}, Lc8/LKd;->process()Z

    move-result v0

    return v0
.end method

.method public checkSubScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pushId"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p1}, Lc8/JKd;->setAppId(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p2}, Lc8/JKd;->setAppKey(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p3}, Lc8/JKd;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p4}, Lc8/JKd;->setPushId(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/JKd;->setSubAliasType(I)V

    .line 256
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0}, Lc8/JKd;->process()Z

    move-result v0

    return v0
.end method

.method public checkSubScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pushId"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p1}, Lc8/KKd;->setAppId(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p2}, Lc8/KKd;->setAppKey(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p3}, Lc8/KKd;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p4}, Lc8/KKd;->setPushId(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lc8/KKd;->setSubTagType(I)V

    .line 227
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0}, Lc8/KKd;->process()Z

    move-result v0

    return v0
.end method

.method public enableRemoteInvoker(Z)V
    .locals 1
    .param p1, "isRemoteInvoker"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lc8/DKd;->registerStatusStrategy:Lc8/GKd;

    invoke-virtual {v0, p1}, Lc8/GKd;->setSupportRemoteInvoke(Z)V

    .line 67
    iget-object v0, p0, Lc8/DKd;->unRegisterStatusStrategy:Lc8/MKd;

    invoke-virtual {v0, p1}, Lc8/MKd;->setSupportRemoteInvoke(Z)V

    .line 68
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p1}, Lc8/LKd;->setSupportRemoteInvoke(Z)V

    .line 69
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p1}, Lc8/JKd;->setSupportRemoteInvoke(Z)V

    .line 70
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p1}, Lc8/KKd;->setSupportRemoteInvoke(Z)V

    .line 71
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lc8/DKd;->registerStatusStrategy:Lc8/GKd;

    invoke-virtual {v0, p1}, Lc8/GKd;->setAppId(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lc8/DKd;->registerStatusStrategy:Lc8/GKd;

    invoke-virtual {v0, p2}, Lc8/GKd;->setAppKey(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lc8/DKd;->registerStatusStrategy:Lc8/GKd;

    invoke-virtual {v0, p3}, Lc8/GKd;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lc8/DKd;->registerStatusStrategy:Lc8/GKd;

    invoke-virtual {v0}, Lc8/GKd;->process()Z

    move-result v0

    return v0
.end method

.method public subScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pushId"    # Ljava/lang/String;
    .param p5, "alias"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p1}, Lc8/JKd;->setAppId(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p2}, Lc8/JKd;->setAppKey(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p3}, Lc8/JKd;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p4}, Lc8/JKd;->setPushId(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/JKd;->setSubAliasType(I)V

    .line 236
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p5}, Lc8/JKd;->setAlias(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0}, Lc8/JKd;->process()Z

    move-result v0

    return v0
.end method

.method public subScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pushId"    # Ljava/lang/String;
    .param p5, "tags"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p1}, Lc8/KKd;->setAppId(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p2}, Lc8/KKd;->setAppKey(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p3}, Lc8/KKd;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p4}, Lc8/KKd;->setPushId(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/KKd;->setSubTagType(I)V

    .line 198
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p5}, Lc8/KKd;->setSubTags(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0}, Lc8/KKd;->process()Z

    move-result v0

    return v0
.end method

.method public switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pushId"    # Ljava/lang/String;
    .param p5, "msgType"    # I
    .param p6, "switcher"    # Z

    .prologue
    .line 173
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p1}, Lc8/LKd;->setAppId(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p2}, Lc8/LKd;->setAppKey(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p3}, Lc8/LKd;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p4}, Lc8/LKd;->setPushId(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p5}, Lc8/LKd;->setSwitchType(I)V

    .line 178
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p6}, Lc8/LKd;->setSwitcher(Z)V

    .line 179
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0}, Lc8/LKd;->process()Z

    move-result v0

    return v0
.end method

.method public switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pushId"    # Ljava/lang/String;
    .param p5, "switcher"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p1}, Lc8/LKd;->setAppId(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p2}, Lc8/LKd;->setAppKey(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p3}, Lc8/LKd;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p4}, Lc8/LKd;->setPushId(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lc8/LKd;->setSwitchType(I)V

    .line 188
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0, p5}, Lc8/LKd;->setSwitcher(Z)V

    .line 189
    iget-object v0, p0, Lc8/DKd;->switchStatusStrategy:Lc8/LKd;

    invoke-virtual {v0}, Lc8/LKd;->process()Z

    move-result v0

    return v0
.end method

.method public unRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lc8/DKd;->unRegisterStatusStrategy:Lc8/MKd;

    invoke-virtual {v0, p1}, Lc8/MKd;->setAppId(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lc8/DKd;->unRegisterStatusStrategy:Lc8/MKd;

    invoke-virtual {v0, p2}, Lc8/MKd;->setAppKey(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lc8/DKd;->unRegisterStatusStrategy:Lc8/MKd;

    invoke-virtual {v0, p3}, Lc8/MKd;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lc8/DKd;->unRegisterStatusStrategy:Lc8/MKd;

    invoke-virtual {v0}, Lc8/MKd;->process()Z

    move-result v0

    return v0
.end method

.method public unSubScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pushId"    # Ljava/lang/String;
    .param p5, "alias"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p1}, Lc8/JKd;->setAppId(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p2}, Lc8/JKd;->setAppKey(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p3}, Lc8/JKd;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p4}, Lc8/JKd;->setPushId(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/JKd;->setSubAliasType(I)V

    .line 246
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0, p5}, Lc8/JKd;->setAlias(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lc8/DKd;->subScribeAliasStrategy:Lc8/JKd;

    invoke-virtual {v0}, Lc8/JKd;->process()Z

    move-result v0

    return v0
.end method

.method public unSubScribeAllTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pushId"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p1}, Lc8/KKd;->setAppId(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p2}, Lc8/KKd;->setAppKey(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p3}, Lc8/KKd;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p4}, Lc8/KKd;->setPushId(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/KKd;->setSubTagType(I)V

    .line 218
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0}, Lc8/KKd;->process()Z

    move-result v0

    return v0
.end method

.method public unSubScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pushId"    # Ljava/lang/String;
    .param p5, "tags"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p1}, Lc8/KKd;->setAppId(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p2}, Lc8/KKd;->setAppKey(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p3}, Lc8/KKd;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p4}, Lc8/KKd;->setPushId(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/KKd;->setSubTagType(I)V

    .line 208
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0, p5}, Lc8/KKd;->setSubTags(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lc8/DKd;->subScribeTagStrategy:Lc8/KKd;

    invoke-virtual {v0}, Lc8/KKd;->process()Z

    move-result v0

    return v0
.end method

.method public uploadLogFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lc8/WHd;
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "logFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Lc8/WHd",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lc8/DKd;->pushAPI:Lc8/CKd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/CKd;->uploadLogFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lc8/WHd;

    move-result-object v0

    return-object v0
.end method
