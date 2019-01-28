.class public Lc8/Fob;
.super Ljava/lang/Object;
.source "AliWeex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Eob;
    }
.end annotation


# static fields
.field private static sInstance:Lc8/Fob;


# instance fields
.field private mApp:Landroid/app/Application;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mConfig:Lc8/Eob;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method public static getInstance()Lc8/Fob;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lc8/Fob;->sInstance:Lc8/Fob;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lc8/Fob;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lc8/Fob;->sInstance:Lc8/Fob;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lc8/Fob;

    invoke-direct {v0}, Lc8/Fob;-><init>()V

    sput-object v0, Lc8/Fob;->sInstance:Lc8/Fob;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lc8/Fob;->sInstance:Lc8/Fob;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAliPayModuleAdapter()Lc8/Job;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    invoke-virtual {v0}, Lc8/Eob;->getAliPayModuleAdapter()Lc8/Job;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/Fob;->mApp:Landroid/app/Application;

    return-object v0
.end method

.method public getConfigAdapter()Lc8/Hob;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    invoke-virtual {v0}, Lc8/Eob;->getConfigAdapter()Lc8/Hob;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lc8/Fob;->mApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getEventModuleAdapter()Lc8/Lob;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    invoke-virtual {v0}, Lc8/Eob;->getEventModuleAdapter()Lc8/Lob;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFestivalModuleAdapter()Lc8/Mob;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    invoke-virtual {v0}, Lc8/Eob;->getFestivalModuleAdapter()Lc8/Mob;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHttpAdapter()Lc8/DVf;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    invoke-virtual {v0}, Lc8/Eob;->getHttpAdapter()Lc8/DVf;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImgLoaderAdapter()Lc8/EVf;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    invoke-virtual {v0}, Lc8/Eob;->getImgLoaderAdapter()Lc8/EVf;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInitConfig()Lc8/RUf;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    invoke-virtual {v0}, Lc8/Eob;->getInitConfig()Lc8/RUf;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationBarModuleAdapter()Lc8/Oob;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    invoke-virtual {v0}, Lc8/Eob;->getNavigationBarModuleAdapter()Lc8/Oob;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageInfoModuleAdapter()Lc8/Pob;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    invoke-virtual {v0}, Lc8/Eob;->getPageInfoModuleAdapter()Lc8/Pob;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShareModuleAdapter()Lc8/Qob;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    invoke-virtual {v0}, Lc8/Eob;->getShareModuleAdapter()Lc8/Qob;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserModuleAdapter()Lc8/Sob;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    invoke-virtual {v0}, Lc8/Eob;->getUserModuleAdapter()Lc8/Sob;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lc8/Fob;->mApp:Landroid/app/Application;

    .line 39
    return-void
.end method

.method public initWithConfig(Landroid/app/Application;Lc8/Eob;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "config"    # Lc8/Eob;

    .prologue
    .line 42
    iput-object p1, p0, Lc8/Fob;->mApp:Landroid/app/Application;

    .line 43
    iput-object p2, p0, Lc8/Fob;->mConfig:Lc8/Eob;

    .line 44
    return-void
.end method
