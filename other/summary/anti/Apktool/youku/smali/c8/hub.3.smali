.class public final Lc8/hub;
.super Lc8/ZUf;
.source "WXExpressionBindingModule.java"

# interfaces
.implements Lc8/Jsb;


# instance fields
.field private mExpressionBindingCore:Lc8/Jrb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lc8/ZUf;-><init>()V

    return-void
.end method


# virtual methods
.method public createBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lc8/EWf;)V
    .locals 9
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exitExpression"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p4, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .line 40
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lc8/Jrb;

    invoke-direct {v0}, Lc8/Jrb;-><init>()V

    iput-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    .line 44
    :cond_0
    invoke-static {v2, p3}, Lc8/ysb;->create(Ljava/lang/String;Ljava/lang/String;)Lc8/ysb;

    move-result-object v5

    .line 45
    .local v5, "exitExpressionPair":Lc8/ysb;
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    iget-object v8, p0, Lc8/hub;->mWXSDKInstance:Lc8/nVf;

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lc8/Jrb;->doBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lc8/ysb;Ljava/util/List;Lc8/EWf;Lc8/nVf;)Ljava/lang/String;

    .line 46
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    invoke-virtual {v0}, Lc8/Jrb;->doRelease()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    .line 72
    :cond_0
    return-void
.end method

.method public disableAll()V
    .locals 1
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    invoke-virtual {v0}, Lc8/Jrb;->doRelease()V

    .line 64
    :cond_0
    return-void
.end method

.method public disableBinding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    invoke-virtual {v0, p1, p2}, Lc8/Jrb;->doUnbind(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public enableBinding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lc8/Jrb;

    invoke-direct {v0}, Lc8/Jrb;-><init>()V

    iput-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    .line 33
    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    invoke-virtual {v0}, Lc8/Jrb;->onActivityPause()V

    .line 81
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lc8/hub;->mExpressionBindingCore:Lc8/Jrb;

    invoke-virtual {v0}, Lc8/Jrb;->onActivityResume()V

    .line 88
    :cond_0
    return-void
.end method
