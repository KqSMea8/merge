.class public Lc8/Ecg;
.super Ljava/lang/Object;
.source "Layouts.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doLayout(Lc8/tbg;Lc8/AZf;)V
    .locals 6
    .param p0, "component"    # Lc8/tbg;
    .param p1, "layoutContext"    # Lc8/AZf;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    check-cast v0, Lc8/HYf;

    .line 104
    .local v0, "domObject":Lc8/HYf;
    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v1

    .line 105
    .local v1, "instance":Lc8/nVf;
    new-array v2, v5, [Lc8/GYf;

    new-instance v3, Lc8/Ccg;

    invoke-direct {v3, v1}, Lc8/Ccg;-><init>(Lc8/nVf;)V

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lc8/HYf;->traverseTree([Lc8/GYf;)V

    .line 117
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc8/nVf;->isDestroy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Lc8/HYf;->calculateLayout(Lc8/AZf;)V

    .line 120
    :cond_0
    new-array v2, v5, [Lc8/GYf;

    new-instance v3, Lc8/Dcg;

    invoke-direct {v3, v1}, Lc8/Dcg;-><init>(Lc8/nVf;)V

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lc8/HYf;->traverseTree([Lc8/GYf;)V

    .line 131
    return-void
.end method

.method public static doLayoutAsync(Lc8/sdg;Z)V
    .locals 5
    .param p0, "templateViewHolder"    # Lc8/sdg;
    .param p1, "async"    # Z

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-virtual {p0}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v1

    .line 48
    .local v1, "component":Lc8/tbg;
    invoke-virtual {p0}, Lc8/sdg;->getHolderPosition()I

    move-result v2

    .line 49
    .local v2, "position":I
    iget-object v3, p0, Lc8/sdg;->asyncTask:Landroid/os/AsyncTask;

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Lc8/sdg;->asyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 51
    const/4 v3, 0x0

    iput-object v3, p0, Lc8/sdg;->asyncTask:Landroid/os/AsyncTask;

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 54
    new-instance v0, Lc8/Bcg;

    invoke-direct {v0, p0, v2, v1}, Lc8/Bcg;-><init>(Lc8/sdg;ILc8/tbg;)V

    .line 74
    .local v0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iput-object v0, p0, Lc8/sdg;->asyncTask:Landroid/os/AsyncTask;

    .line 75
    sget-object v3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    .end local v0    # "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lc8/sdg;->getLayoutContext()Lc8/AZf;

    move-result-object v3

    invoke-static {v1, v3}, Lc8/Ecg;->doSafeLayout(Lc8/tbg;Lc8/AZf;)V

    .line 78
    invoke-static {v1, v4}, Lc8/Ecg;->setLayout(Lc8/tbg;Z)V

    goto :goto_0
.end method

.method public static doSafeLayout(Lc8/tbg;Lc8/AZf;)V
    .locals 8
    .param p0, "component"    # Lc8/tbg;
    .param p1, "layoutContext"    # Lc8/AZf;

    .prologue
    .line 88
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 89
    .local v2, "start":J
    invoke-static {p0, p1}, Lc8/Ecg;->doLayout(Lc8/tbg;Lc8/AZf;)V

    .line 90
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string/jumbo v1, "WXRecyclerTemplateList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WXTemplateList doSafeLayout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v5

    invoke-interface {v5}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v5

    const-string/jumbo v6, "templateType"

    invoke-virtual {v5, v6}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " doSafeLayout  used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "start":J
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string/jumbo v1, "WXRecyclerTemplateList"

    invoke-static {v1, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final setLayout(Lc8/tbg;Z)V
    .locals 6
    .param p0, "component"    # Lc8/tbg;
    .param p1, "force"    # Z

    .prologue
    .line 142
    invoke-virtual {p0}, Lc8/tbg;->isWaste()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    invoke-static {p0, p1}, Lc8/Ecg;->setLayoutWaste(Lc8/tbg;Z)V

    .line 167
    :cond_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    check-cast v3, Lc8/HYf;

    .line 147
    .local v3, "domObject":Lc8/HYf;
    invoke-virtual {v3}, Lc8/HYf;->hasUpdate()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    .line 148
    :cond_2
    invoke-virtual {v3}, Lc8/HYf;->markUpdateSeen()V

    .line 149
    invoke-virtual {v3}, Lc8/HYf;->hasUpdate()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    invoke-virtual {v3}, Lc8/HYf;->markLayoutStateUpdated()V

    .line 152
    :cond_3
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v5

    invoke-virtual {p0, v5}, Lc8/tbg;->setLayout(Lc8/qYf;)V

    .line 153
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v5

    invoke-interface {v5}, Lc8/qYf;->getExtra()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 154
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v5

    invoke-interface {v5}, Lc8/qYf;->getExtra()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lc8/tbg;->updateExtra(Ljava/lang/Object;)V

    .line 157
    :cond_4
    instance-of v5, p0, Lc8/scg;

    if-eqz v5, :cond_0

    move-object v1, p0

    .line 158
    check-cast v1, Lc8/scg;

    .line 159
    .local v1, "container":Lc8/scg;
    invoke-virtual {v1}, Lc8/scg;->getChildCount()I

    move-result v2

    .line 160
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 161
    invoke-virtual {v1, v4}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 162
    .local v0, "child":Lc8/tbg;
    if-eqz v0, :cond_5

    .line 163
    invoke-static {v0, p1}, Lc8/Ecg;->setLayout(Lc8/tbg;Z)V

    .line 160
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static final setLayoutWaste(Lc8/tbg;Z)V
    .locals 6
    .param p0, "component"    # Lc8/tbg;
    .param p1, "force"    # Z

    .prologue
    .line 170
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    check-cast v3, Lc8/HYf;

    .line 171
    .local v3, "domObject":Lc8/HYf;
    invoke-virtual {v3}, Lc8/HYf;->hasUpdate()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_1

    .line 172
    :cond_0
    invoke-virtual {v3}, Lc8/HYf;->markUpdateSeen()V

    .line 173
    invoke-virtual {v3}, Lc8/HYf;->hasUpdate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    invoke-virtual {v3}, Lc8/HYf;->markLayoutStateUpdated()V

    .line 177
    :cond_1
    instance-of v5, p0, Lc8/scg;

    if-eqz v5, :cond_3

    move-object v1, p0

    .line 178
    check-cast v1, Lc8/scg;

    .line 179
    .local v1, "container":Lc8/scg;
    invoke-virtual {v1}, Lc8/scg;->getChildCount()I

    move-result v2

    .line 180
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 181
    invoke-virtual {v1, v4}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 182
    .local v0, "child":Lc8/tbg;
    if-eqz v0, :cond_2

    .line 183
    invoke-static {v0, p1}, Lc8/Ecg;->setLayoutWaste(Lc8/tbg;Z)V

    .line 180
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "child":Lc8/tbg;
    .end local v1    # "container":Lc8/scg;
    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_3
    return-void
.end method
