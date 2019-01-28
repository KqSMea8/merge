.class public Lc8/Gdg;
.super Ljava/lang/Object;
.source "FlatGUIContext.java"

# interfaces
.implements Lc8/uXf;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mViewWidgetRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/tbg;",
            "Lc8/Idg;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/tbg;",
            "Lc8/Hdg;",
            ">;"
        }
    .end annotation
.end field

.field private widgetToComponent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/Ldg;",
            "Lc8/tbg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/Gdg;->mWidgetRegistry:Ljava/util/Map;

    .line 47
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/Gdg;->mViewWidgetRegistry:Ljava/util/Map;

    .line 48
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/Gdg;->widgetToComponent:Ljava/util/Map;

    return-void
.end method

.method private checkComponent(Lc8/tbg;)Z
    .locals 5
    .param p1, "component"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "ret":Z
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v1

    .line 126
    .local v1, "domObject":Lc8/qYf;
    if-eqz v1, :cond_1

    .line 127
    invoke-interface {v1}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v3

    .line 128
    .local v3, "style":Lc8/PYf;
    invoke-interface {v1}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    .line 129
    .local v0, "attr":Lc8/xYf;
    const-string/jumbo v4, "opacity"

    invoke-virtual {v3, v4}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "transform"

    invoke-virtual {v3, v4}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "visibility"

    invoke-virtual {v3, v4}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "elevation"

    invoke-virtual {v0, v4}, Lc8/xYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ariaHidden"

    invoke-virtual {v0, v4}, Lc8/xYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ariaLabel"

    invoke-virtual {v0, v4}, Lc8/xYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "fixedSize"

    invoke-virtual {v0, v4}, Lc8/xYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "disabled"

    invoke-virtual {v0, v4}, Lc8/xYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lc8/PYf;->isFixed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lc8/PYf;->isSticky()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lc8/PYf;->getPesudoStyles()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 141
    :cond_0
    const/4 v2, 0x1

    .line 144
    .end local v0    # "attr":Lc8/xYf;
    .end local v3    # "style":Lc8/PYf;
    :cond_1
    return v2
.end method

.method private getComponent(Lc8/Ldg;)Lc8/tbg;
    .locals 1
    .param p1, "widget"    # Lc8/Ldg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lc8/Gdg;->widgetToComponent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 4
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v3, p0, Lc8/Gdg;->widgetToComponent:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 108
    iget-object v3, p0, Lc8/Gdg;->mViewWidgetRegistry:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Idg;

    invoke-virtual {v3}, Lc8/Idg;->destroy()V

    goto :goto_0

    .line 111
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;>;"
    :cond_0
    iget-object v3, p0, Lc8/Gdg;->mViewWidgetRegistry:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 113
    iget-object v3, p0, Lc8/Gdg;->mWidgetRegistry:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/WidgetContainer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Hdg;

    invoke-virtual {v3}, Lc8/Hdg;->unmountFlatGUI()V

    goto :goto_1

    .line 116
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/WidgetContainer;>;"
    :cond_1
    iget-object v3, p0, Lc8/Gdg;->mWidgetRegistry:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 117
    return-void
.end method

.method public getAndroidViewWidget(Lc8/tbg;)Lc8/Idg;
    .locals 1
    .param p1, "component"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lc8/Gdg;->mViewWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Idg;

    return-object v0
.end method

.method public getFlatComponentAncestor(Lc8/tbg;)Lc8/Hdg;
    .locals 1
    .param p1, "flatWidget"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Gdg;->mWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Hdg;

    return-object v0
.end method

.method public getWidgetContainerView(Lc8/Ldg;)Landroid/view/View;
    .locals 3
    .param p1, "widget"    # Lc8/Ldg;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, "ret":Landroid/view/View;
    invoke-direct {p0, p1}, Lc8/Gdg;->getComponent(Lc8/Ldg;)Lc8/tbg;

    move-result-object v1

    .local v1, "component":Lc8/tbg;
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0, v1}, Lc8/Gdg;->getFlatComponentAncestor(Lc8/tbg;)Lc8/Hdg;

    move-result-object v0

    .local v0, "ancestor":Lc8/tbg;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v2

    .line 100
    .end local v0    # "ancestor":Lc8/tbg;
    :cond_0
    return-object v2
.end method

.method public isFlatUIEnabled(Lc8/tbg;)Z
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 51
    invoke-virtual {p1}, Lc8/tbg;->isFlatUIEnabled()Z

    move-result v0

    return v0
.end method

.method public promoteToView(Lc8/tbg;ZLjava/lang/Class;)Z
    .locals 2
    .param p1, "component"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkAncestor"    # Z
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            "Z",
            "Ljava/lang/Class",
            "<+",
            "Lc8/tbg",
            "<*>;>;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p3, "expectedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent<*>;>;"
    invoke-virtual {p0, p1}, Lc8/Gdg;->isFlatUIEnabled(Lc8/tbg;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "_root"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lc8/Gdg;->getFlatComponentAncestor(Lc8/tbg;)Lc8/Hdg;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lc8/Gdg;->checkComponent(Lc8/tbg;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register(Lc8/Ldg;Lc8/tbg;)V
    .locals 1
    .param p1, "widget"    # Lc8/Ldg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "component"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    iget-object v0, p0, Lc8/Gdg;->widgetToComponent:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public register(Lc8/tbg;Lc8/Hdg;)V
    .locals 2
    .param p1, "descendant"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ancestor"    # Lc8/Hdg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    instance-of v0, p2, Lc8/Fdg;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc8/Fdg;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lc8/Fdg;->promoteToView(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lc8/Gdg;->mWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    return-void
.end method

.method public register(Lc8/tbg;Lc8/Idg;)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewWidget"    # Lc8/Idg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    iget-object v0, p0, Lc8/Gdg;->mViewWidgetRegistry:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method
