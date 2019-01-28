.class public Lc8/PZe;
.super Landroid/app/Application;
.source "ApplicationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/NZe;,
        Lc8/OZe;
    }
.end annotation


# instance fields
.field private final mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/OZe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/PZe;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Lc8/OZe;
    .locals 5
    .annotation build Lc8/jFp;
    .end annotation

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "callbacks":[Lc8/OZe;
    iget-object v3, p0, Lc8/PZe;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 138
    :try_start_0
    iget-object v2, p0, Lc8/PZe;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 139
    iget-object v2, p0, Lc8/PZe;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lc8/PZe;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lc8/OZe;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Lc8/OZe;

    move-object v1, v0

    .line 141
    :cond_0
    monitor-exit v3

    .line 142
    return-object v1

    .line 141
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method dispatchActivityCreatedCompat(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lc8/jFp;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-direct {p0}, Lc8/PZe;->collectActivityLifecycleCallbacks()[Lc8/OZe;

    move-result-object v0

    .line 74
    .local v0, "callbacks":[Lc8/OZe;
    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 76
    aget-object v2, v0, v1

    invoke-interface {v2, p1, p2}, Lc8/OZe;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityDestroyedCompat(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 127
    invoke-direct {p0}, Lc8/PZe;->collectActivityLifecycleCallbacks()[Lc8/OZe;

    move-result-object v0

    .line 128
    .local v0, "callbacks":[Lc8/OZe;
    if-eqz v0, :cond_0

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 130
    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lc8/OZe;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityPausedCompat(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    invoke-direct {p0}, Lc8/PZe;->collectActivityLifecycleCallbacks()[Lc8/OZe;

    move-result-object v0

    .line 101
    .local v0, "callbacks":[Lc8/OZe;
    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 103
    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lc8/OZe;->onActivityPaused(Landroid/app/Activity;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityResumedCompat(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    invoke-direct {p0}, Lc8/PZe;->collectActivityLifecycleCallbacks()[Lc8/OZe;

    move-result-object v0

    .line 92
    .local v0, "callbacks":[Lc8/OZe;
    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 94
    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lc8/OZe;->onActivityResumed(Landroid/app/Activity;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivitySaveInstanceStateCompat(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-direct {p0}, Lc8/PZe;->collectActivityLifecycleCallbacks()[Lc8/OZe;

    move-result-object v0

    .line 119
    .local v0, "callbacks":[Lc8/OZe;
    if-eqz v0, :cond_0

    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 121
    aget-object v2, v0, v1

    invoke-interface {v2, p1, p2}, Lc8/OZe;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityStartedCompat(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    invoke-direct {p0}, Lc8/PZe;->collectActivityLifecycleCallbacks()[Lc8/OZe;

    move-result-object v0

    .line 83
    .local v0, "callbacks":[Lc8/OZe;
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 85
    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lc8/OZe;->onActivityStarted(Landroid/app/Activity;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dispatchActivityStoppedCompat(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 109
    invoke-direct {p0}, Lc8/PZe;->collectActivityLifecycleCallbacks()[Lc8/OZe;

    move-result-object v0

    .line 110
    .local v0, "callbacks":[Lc8/OZe;
    if-eqz v0, :cond_0

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 112
    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lc8/OZe;->onActivityStopped(Landroid/app/Activity;)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Lc8/OZe;)V
    .locals 2
    .param p1, "callback"    # Lc8/OZe;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 56
    new-instance v0, Lc8/MZe;

    invoke-direct {v0, p1}, Lc8/MZe;-><init>(Lc8/OZe;)V

    invoke-super {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lc8/PZe;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lc8/PZe;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterActivityLifecycleCallbacks(Lc8/OZe;)V
    .locals 2
    .param p1, "callback"    # Lc8/OZe;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 66
    new-instance v0, Lc8/MZe;

    invoke-direct {v0, p1}, Lc8/MZe;-><init>(Lc8/OZe;)V

    invoke-super {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lc8/PZe;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lc8/PZe;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
