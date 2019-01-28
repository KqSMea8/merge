.class public Lc8/dZn;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static mInstance:Lc8/dZn;


# instance fields
.field private final context:Landroid/content/Context;

.field private extendExecuters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/nZn;",
            ">;"
        }
    .end annotation
.end field

.field private lastOperateTime:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/dZn;->lastOperateTime:J

    .line 38
    iput-object p1, p0, Lc8/dZn;->context:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lc8/hZn;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    return-void
.end method

.method private checkIfExecutable()Z
    .locals 6

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    .local v0, "temp":J
    iget-wide v2, p0, Lc8/dZn;->lastOperateTime:J

    sub-long v2, v0, v2

    invoke-static {}, Lc8/cZn;->getInstance()Lc8/cZn;

    move-result-object v4

    invoke-virtual {v4}, Lc8/cZn;->getMin_operate_interval()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 60
    iput-wide v0, p0, Lc8/dZn;->lastOperateTime:J

    .line 61
    const/4 v2, 0x1

    .line 63
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lc8/dZn;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-class v1, Lc8/dZn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/dZn;->mInstance:Lc8/dZn;

    if-nez v0, :cond_0

    .line 44
    invoke-static {p0}, Lc8/cZn;->initInstance(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lc8/dZn;

    invoke-direct {v0, p0}, Lc8/dZn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/dZn;->mInstance:Lc8/dZn;

    .line 47
    :cond_0
    sget-object v0, Lc8/dZn;->mInstance:Lc8/dZn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIntent(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)Landroid/content/Intent;
    .locals 3
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    .param p2, "action"    # I

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lc8/dZn;->context:Landroid/content/Context;

    const-class v2, Lc8/hZn;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "key_download_entry"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53
    const-string/jumbo v1, "key_download_action"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    return-object v0
.end method


# virtual methods
.method public add(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadManager==>add(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lc8/dZn;->getIntent(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    return-void
.end method

.method public addExtendExecuter(Lc8/nZn;)V
    .locals 1
    .param p1, "extendExecuter"    # Lc8/nZn;

    .prologue
    .line 204
    iget-object v0, p0, Lc8/dZn;->extendExecuters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/dZn;->extendExecuters:Ljava/util/List;

    .line 207
    :cond_0
    iget-object v0, p0, Lc8/dZn;->extendExecuters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public addObserver(Lc8/pZn;)V
    .locals 1
    .param p1, "dataWatcher"    # Lc8/pZn;

    .prologue
    .line 168
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/oZn;->getInstance(Landroid/content/Context;)Lc8/oZn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/oZn;->addObserver(Ljava/util/Observer;)V

    .line 169
    return-void
.end method

.method public cancel(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 141
    const-string/jumbo v0, "DownloadManager==>cancel()"

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lc8/dZn;->getIntent(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 143
    return-void
.end method

.method public getAllDownloadEntry()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/us/baseframework/download/entity/DownloadEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/lZn;->getInstance(Landroid/content/Context;)Lc8/lZn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lZn;->queryAll()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadEntryByUrl(Ljava/lang/String;)Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/lZn;->getInstance(Landroid/content/Context;)Lc8/lZn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/lZn;->queryByUrl(Ljava/lang/String;)Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    move-result-object v0

    return-object v0
.end method

.method public getExtendExecuters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/nZn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lc8/dZn;->extendExecuters:Ljava/util/List;

    return-object v0
.end method

.method public pause(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 120
    invoke-direct {p0}, Lc8/dZn;->checkIfExecutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string/jumbo v0, "DownloadManager==>pause()"

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lc8/dZn;->getIntent(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public pauseAll()V
    .locals 3

    .prologue
    .line 149
    invoke-direct {p0}, Lc8/dZn;->checkIfExecutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string/jumbo v0, "DownloadManager==>pauseAll()"

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lc8/dZn;->getIntent(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public recoverAll()V
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Lc8/dZn;->checkIfExecutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string/jumbo v0, "DownloadManager==>recoverAll()"

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lc8/dZn;->getIntent(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public removeObserver(Lc8/pZn;)V
    .locals 1
    .param p1, "dataWatcher"    # Lc8/pZn;

    .prologue
    .line 176
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/oZn;->getInstance(Landroid/content/Context;)Lc8/oZn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/oZn;->deleteObserver(Ljava/util/Observer;)V

    .line 177
    return-void
.end method

.method public removeObservers()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/oZn;->getInstance(Landroid/content/Context;)Lc8/oZn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/oZn;->deleteObservers()V

    .line 184
    return-void
.end method

.method public restart(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 110
    invoke-direct {p0}, Lc8/dZn;->checkIfExecutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string/jumbo v0, "DownloadManager==>restart()"

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lc8/dZn;->getIntent(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public resume(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 130
    invoke-direct {p0}, Lc8/dZn;->checkIfExecutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string/jumbo v0, "DownloadManager==>resume()"

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lc8/dZn;->getIntent(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public setExtendExecuters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/nZn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "extendExecuters":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseframework/download/extend/ExtendExecuter;>;"
    iput-object p1, p0, Lc8/dZn;->extendExecuters:Ljava/util/List;

    .line 197
    return-void
.end method

.method public start(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 91
    const-string/jumbo v0, "DownloadManager==>start()"

    invoke-static {v0}, Lc8/sZn;->d(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lc8/dZn;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lc8/dZn;->getIntent(Lcom/youku/us/baseframework/download/entity/DownloadEntry;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    return-void
.end method
