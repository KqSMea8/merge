.class public Lc8/TSb;
.super Ljava/lang/Object;
.source "LabFeatureManager.java"


# instance fields
.field mCatcherManager:Lc8/KSb;

.field mConfiguration:Lc8/LSb;

.field mContext:Landroid/content/Context;

.field mFinalizeFake:Lc8/ETb;


# direct methods
.method constructor <init>(Landroid/content/Context;Lc8/LSb;Lc8/KSb;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lc8/LSb;
    .param p3, "catcherManager"    # Lc8/KSb;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lc8/TSb;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lc8/TSb;->mConfiguration:Lc8/LSb;

    .line 19
    iput-object p3, p0, Lc8/TSb;->mCatcherManager:Lc8/KSb;

    .line 22
    iget-object v0, p0, Lc8/TSb;->mConfiguration:Lc8/LSb;

    const-string/jumbo v1, "Configuration.enableFinalizeFake"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lc8/ETb;

    invoke-direct {v0}, Lc8/ETb;-><init>()V

    iput-object v0, p0, Lc8/TSb;->mFinalizeFake:Lc8/ETb;

    .line 25
    iget-object v0, p0, Lc8/TSb;->mCatcherManager:Lc8/KSb;

    new-instance v1, Lc8/yTb;

    invoke-direct {v1}, Lc8/yTb;-><init>()V

    invoke-virtual {v0, v1}, Lc8/KSb;->addUncaughtExceptionIgnore(Lc8/ATb;)V

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method disable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    iget-object v0, p0, Lc8/TSb;->mConfiguration:Lc8/LSb;

    const-string/jumbo v1, "Configuration.disableJitCompilation"

    invoke-virtual {v0, v1, v2}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 45
    invoke-static {}, Lc8/uTb;->startJitCompilation()Z

    .line 49
    :cond_0
    iget-object v0, p0, Lc8/TSb;->mConfiguration:Lc8/LSb;

    const-string/jumbo v1, "Configuration.enableFinalizeFake"

    invoke-virtual {v0, v1, v2}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lc8/TSb;->mFinalizeFake:Lc8/ETb;

    invoke-virtual {v0}, Lc8/ETb;->resumeFinalizerDaemon()V

    .line 52
    :cond_1
    return-void
.end method

.method enable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 30
    iget-object v0, p0, Lc8/TSb;->mConfiguration:Lc8/LSb;

    const-string/jumbo v1, "Configuration.disableJitCompilation"

    invoke-virtual {v0, v1, v2}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 32
    invoke-static {}, Lc8/uTb;->disableJitCompilation()Z

    .line 36
    :cond_0
    iget-object v0, p0, Lc8/TSb;->mConfiguration:Lc8/LSb;

    const-string/jumbo v1, "Configuration.enableFinalizeFake"

    invoke-virtual {v0, v1, v2}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lc8/TSb;->mFinalizeFake:Lc8/ETb;

    invoke-virtual {v0}, Lc8/ETb;->startFakeFinalizerDaemon()V

    .line 40
    :cond_1
    return-void
.end method
