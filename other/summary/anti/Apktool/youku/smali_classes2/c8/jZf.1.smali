.class public Lc8/jZf;
.super Ljava/lang/Object;
.source "GetComponentRectAction.java"

# interfaces
.implements Lc8/rYf;


# instance fields
.field private final mCallback:Ljava/lang/String;

.field private final mRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lc8/jZf;->mRef:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lc8/jZf;->mCallback:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private callbackViewport(Lc8/sYf;Lc8/EWf;)V
    .locals 9
    .param p1, "context"    # Lc8/sYf;
    .param p2, "jsCallback"    # Lc8/EWf;

    .prologue
    const/4 v8, 0x0

    .line 85
    invoke-interface {p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v1

    .line 87
    .local v1, "instance":Lc8/nVf;
    invoke-virtual {v1}, Lc8/nVf;->getContainerView()Landroid/view/View;

    move-result-object v0

    .local v0, "container":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 88
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v4, "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 91
    .local v2, "location":[I
    invoke-virtual {v1}, Lc8/nVf;->getContainerView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 92
    invoke-virtual {v1}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v5

    .line 93
    .local v5, "viewport":I
    const-string/jumbo v6, "left"

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v6, "top"

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v6, "right"

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-direct {p0, v7, v5}, Lc8/jZf;->getWebPxValue(II)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v6, "bottom"

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {p0, v7, v5}, Lc8/jZf;->getWebPxValue(II)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v6, "width"

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-direct {p0, v7, v5}, Lc8/jZf;->getWebPxValue(II)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v6, "height"

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {p0, v7, v5}, Lc8/jZf;->getWebPxValue(II)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v6, "size"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v6, "result"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-interface {p2, v3}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 108
    .end local v2    # "location":[I
    .end local v4    # "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    .end local v5    # "viewport":I
    :goto_0
    return-void

    .line 103
    .end local v3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 104
    .restart local v3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "result"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v6, "errMsg"

    const-string/jumbo v7, "Component does not exist"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-interface {p2, v3}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getWebPxValue(II)F
    .locals 1
    .param p1, "value"    # I
    .param p2, "viewport"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 112
    int-to-float v0, p1

    invoke-static {v0, p2}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v0

    return v0
.end method


# virtual methods
.method public executeRender(Lc8/sYf;)V
    .locals 9
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 51
    invoke-interface {p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v1

    .line 52
    .local v1, "instance":Lc8/nVf;
    new-instance v2, Lc8/KWf;

    invoke-interface {p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lc8/jZf;->mCallback:Ljava/lang/String;

    invoke-direct {v2, v7, v8}, Lc8/KWf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v2, "jsCallback":Lc8/EWf;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc8/nVf;->isDestroy()Z

    move-result v7

    if-nez v7, :cond_0

    .line 55
    iget-object v7, p0, Lc8/jZf;->mRef:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 56
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "result"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v7, "errMsg"

    const-string/jumbo v8, "Illegal parameter"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-interface {v2, v3}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 82
    .end local v3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string/jumbo v7, "viewport"

    iget-object v8, p0, Lc8/jZf;->mRef:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 61
    invoke-direct {p0, p1, v2}, Lc8/jZf;->callbackViewport(Lc8/sYf;Lc8/EWf;)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v7, p0, Lc8/jZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v7}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 64
    .local v0, "component":Lc8/tbg;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 65
    .restart local v3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {v1}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v6

    .line 67
    .local v6, "viewPort":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v4, "size":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    invoke-virtual {v0}, Lc8/tbg;->getComponentSize()Landroid/graphics/Rect;

    move-result-object v5

    .line 69
    .local v5, "sizes":Landroid/graphics/Rect;
    const-string/jumbo v7, "width"

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-direct {p0, v8, v6}, Lc8/jZf;->getWebPxValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v7, "height"

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {p0, v8, v6}, Lc8/jZf;->getWebPxValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v7, "bottom"

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v8, v6}, Lc8/jZf;->getWebPxValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v7, "left"

    iget v8, v5, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v8, v6}, Lc8/jZf;->getWebPxValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v7, "right"

    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v8, v6}, Lc8/jZf;->getWebPxValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v7, "top"

    iget v8, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v8, v6}, Lc8/jZf;->getWebPxValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v7, "size"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v7, "result"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v4    # "size":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    .end local v5    # "sizes":Landroid/graphics/Rect;
    .end local v6    # "viewPort":I
    :goto_1
    invoke-interface {v2, v3}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 78
    :cond_3
    const-string/jumbo v7, "errMsg"

    const-string/jumbo v8, "Component does not exist"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
