.class public Lc8/lub;
.super Lc8/ZUf;
.source "WXExpressionBindingV2Module.java"

# interfaces
.implements Lc8/Ksb;


# instance fields
.field private mExpressionBindingCore:Lc8/Jrb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/ZUf;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/lub;)Lc8/Jrb;
    .locals 1
    .param p0, "x0"    # Lc8/lub;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/lub;->mExpressionBindingCore:Lc8/Jrb;

    return-object v0
.end method

.method static synthetic access$002(Lc8/lub;Lc8/Jrb;)Lc8/Jrb;
    .locals 0
    .param p0, "x0"    # Lc8/lub;
    .param p1, "x1"    # Lc8/Jrb;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/lub;->mExpressionBindingCore:Lc8/Jrb;

    return-object p1
.end method


# virtual methods
.method public bind(Ljava/util/Map;Lc8/EWf;)Ljava/util/Map;
    .locals 4
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/EWf;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lc8/lub;->mExpressionBindingCore:Lc8/Jrb;

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Lc8/Jrb;

    invoke-direct {v2}, Lc8/Jrb;-><init>()V

    iput-object v2, p0, Lc8/lub;->mExpressionBindingCore:Lc8/Jrb;

    .line 48
    :cond_0
    iget-object v2, p0, Lc8/lub;->mExpressionBindingCore:Lc8/Jrb;

    iget-object v3, p0, Lc8/lub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2, p1, p2, v3}, Lc8/Jrb;->doBind(Ljava/util/Map;Lc8/EWf;Lc8/nVf;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "token":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 50
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    new-instance v1, Lc8/iub;

    invoke-direct {v1, p0}, Lc8/iub;-><init>(Lc8/lub;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc8/ZWf;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public getComputedStyle(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v2, p0, Lc8/lub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lc8/Cyb;->findViewByRef(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "sourceView":Landroid/view/View;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const-string/jumbo v2, "translateX"

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    sget v4, Lc8/UUf;->sDefaultWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v2, "translateY"

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sget v4, Lc8/UUf;->sDefaultWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v2, "rotateX"

    invoke-virtual {v1}, Landroid/view/View;->getRotationX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v2, "rotateY"

    invoke-virtual {v1}, Landroid/view/View;->getRotationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v2, "rotateZ"

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v2, "scaleX"

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v2, "scaleY"

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v2, "opacity"

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public onActivityPause()V
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    new-instance v1, Lc8/jub;

    invoke-direct {v1, p0}, Lc8/jub;-><init>(Lc8/lub;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc8/ZWf;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public onActivityResume()V
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    new-instance v1, Lc8/kub;

    invoke-direct {v1, p0}, Lc8/kub;-><init>(Lc8/lub;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc8/ZWf;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public prepare(Ljava/util/Map;)V
    .locals 1
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/lub;->mExpressionBindingCore:Lc8/Jrb;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lc8/Jrb;

    invoke-direct {v0}, Lc8/Jrb;-><init>()V

    iput-object v0, p0, Lc8/lub;->mExpressionBindingCore:Lc8/Jrb;

    .line 39
    :cond_0
    return-void
.end method

.method public supportFeatures()Ljava/util/List;
    .locals 3
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "timing"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "scroll"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public unbind(Ljava/util/Map;)V
    .locals 1
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/lub;->mExpressionBindingCore:Lc8/Jrb;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lc8/lub;->mExpressionBindingCore:Lc8/Jrb;

    invoke-virtual {v0, p1}, Lc8/Jrb;->doUnbind(Ljava/util/Map;)V

    .line 60
    :cond_0
    return-void
.end method

.method public unbindAll()V
    .locals 1
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lc8/lub;->mExpressionBindingCore:Lc8/Jrb;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lc8/lub;->mExpressionBindingCore:Lc8/Jrb;

    invoke-virtual {v0}, Lc8/Jrb;->doRelease()V

    .line 68
    :cond_0
    return-void
.end method
