.class public Lc8/xWf;
.super Lc8/ZUf;
.source "WXStorageModule.java"

# interfaces
.implements Lc8/mWf;


# instance fields
.field mStorageAdapter:Lc8/oWf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lc8/ZUf;-><init>()V

    return-void
.end method

.method private ability()Lc8/oWf;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lc8/xWf;->mStorageAdapter:Lc8/oWf;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lc8/xWf;->mStorageAdapter:Lc8/oWf;

    .line 39
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {}, Lc8/bVf;->getIWXStorageAdapter()Lc8/oWf;

    move-result-object v0

    iput-object v0, p0, Lc8/xWf;->mStorageAdapter:Lc8/oWf;

    .line 39
    iget-object v0, p0, Lc8/xWf;->mStorageAdapter:Lc8/oWf;

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lc8/xWf;->ability()Lc8/oWf;

    move-result-object v0

    .line 176
    .local v0, "adapter":Lc8/oWf;
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lc8/oWf;->close()V

    .line 179
    :cond_0
    return-void
.end method

.method public getAllKeys(Lc8/EWf;)V
    .locals 2
    .param p1, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lc8/xWf;->ability()Lc8/oWf;

    move-result-object v0

    .line 136
    .local v0, "adapter":Lc8/oWf;
    if-nez v0, :cond_0

    .line 137
    invoke-static {p1}, Lc8/pWf;->handleNoHandlerError(Lc8/EWf;)V

    .line 148
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v1, Lc8/vWf;

    invoke-direct {v1, p0, p1}, Lc8/vWf;-><init>(Lc8/xWf;Lc8/EWf;)V

    invoke-interface {v0, v1}, Lc8/oWf;->getAllKeys(Lc8/nWf;)V

    goto :goto_0
.end method

.method public getItem(Ljava/lang/String;Lc8/EWf;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p2}, Lc8/pWf;->handleInvalidParam(Lc8/EWf;)V

    .line 89
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lc8/xWf;->ability()Lc8/oWf;

    move-result-object v0

    .line 77
    .local v0, "adapter":Lc8/oWf;
    if-nez v0, :cond_1

    .line 78
    invoke-static {p2}, Lc8/pWf;->handleNoHandlerError(Lc8/EWf;)V

    goto :goto_0

    .line 81
    :cond_1
    new-instance v1, Lc8/sWf;

    invoke-direct {v1, p0, p2}, Lc8/sWf;-><init>(Lc8/xWf;Lc8/EWf;)V

    invoke-interface {v0, p1, v1}, Lc8/oWf;->getItem(Ljava/lang/String;Lc8/nWf;)V

    goto :goto_0
.end method

.method public length(Lc8/EWf;)V
    .locals 2
    .param p1, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lc8/xWf;->ability()Lc8/oWf;

    move-result-object v0

    .line 118
    .local v0, "adapter":Lc8/oWf;
    if-nez v0, :cond_0

    .line 119
    invoke-static {p1}, Lc8/pWf;->handleNoHandlerError(Lc8/EWf;)V

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v1, Lc8/uWf;

    invoke-direct {v1, p0, p1}, Lc8/uWf;-><init>(Lc8/xWf;Lc8/EWf;)V

    invoke-interface {v0, v1}, Lc8/oWf;->length(Lc8/nWf;)V

    goto :goto_0
.end method

.method public removeItem(Ljava/lang/String;Lc8/EWf;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {p2}, Lc8/pWf;->handleInvalidParam(Lc8/EWf;)V

    .line 112
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-direct {p0}, Lc8/xWf;->ability()Lc8/oWf;

    move-result-object v0

    .line 100
    .local v0, "adapter":Lc8/oWf;
    if-nez v0, :cond_1

    .line 101
    invoke-static {p2}, Lc8/pWf;->handleNoHandlerError(Lc8/EWf;)V

    goto :goto_0

    .line 104
    :cond_1
    new-instance v1, Lc8/tWf;

    invoke-direct {v1, p0, p2}, Lc8/tWf;-><init>(Lc8/xWf;Lc8/EWf;)V

    invoke-interface {v0, p1, v1}, Lc8/oWf;->removeItem(Ljava/lang/String;Lc8/nWf;)V

    goto :goto_0
.end method

.method public setItem(Ljava/lang/String;Ljava/lang/String;Lc8/EWf;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 47
    :cond_0
    invoke-static {p3}, Lc8/pWf;->handleInvalidParam(Lc8/EWf;)V

    .line 66
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-direct {p0}, Lc8/xWf;->ability()Lc8/oWf;

    move-result-object v0

    .line 52
    .local v0, "adapter":Lc8/oWf;
    if-nez v0, :cond_2

    .line 53
    invoke-static {p3}, Lc8/pWf;->handleNoHandlerError(Lc8/EWf;)V

    goto :goto_0

    .line 56
    :cond_2
    new-instance v1, Lc8/rWf;

    invoke-direct {v1, p0, p3}, Lc8/rWf;-><init>(Lc8/xWf;Lc8/EWf;)V

    invoke-interface {v0, p1, p2, v1}, Lc8/oWf;->setItem(Ljava/lang/String;Ljava/lang/String;Lc8/nWf;)V

    goto :goto_0
.end method

.method public setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lc8/EWf;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 154
    :cond_0
    invoke-static {p3}, Lc8/pWf;->handleInvalidParam(Lc8/EWf;)V

    .line 171
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-direct {p0}, Lc8/xWf;->ability()Lc8/oWf;

    move-result-object v0

    .line 159
    .local v0, "adapter":Lc8/oWf;
    if-nez v0, :cond_2

    .line 160
    invoke-static {p3}, Lc8/pWf;->handleNoHandlerError(Lc8/EWf;)V

    goto :goto_0

    .line 163
    :cond_2
    new-instance v1, Lc8/wWf;

    invoke-direct {v1, p0, p3}, Lc8/wWf;-><init>(Lc8/xWf;Lc8/EWf;)V

    invoke-interface {v0, p1, p2, v1}, Lc8/oWf;->setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lc8/nWf;)V

    goto :goto_0
.end method
