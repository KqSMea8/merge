.class public Lc8/CXo;
.super Lc8/Rpb;
.source "YKWXWVWeb.java"


# static fields
.field public static final NO_FOCUS:Ljava/lang/String; = "noFocus"


# instance fields
.field private runnable:Ljava/lang/Runnable;

.field protected wvucWebView:Lc8/DD;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/Rpb;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 29
    new-instance v0, Lc8/AXo;

    invoke-direct {v0, p0}, Lc8/AXo;-><init>(Lc8/CXo;)V

    iput-object v0, p0, Lc8/CXo;->runnable:Ljava/lang/Runnable;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lc8/CXo;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lc8/CXo;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/CXo;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected createViewImpl()V
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Lc8/HTh;->initWindVane()V

    .line 48
    invoke-super {p0}, Lc8/Rpb;->createViewImpl()V

    .line 49
    invoke-virtual {p0}, Lc8/CXo;->getHostView()Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "host":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 51
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "host":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lc8/DD;

    if-eqz v2, :cond_0

    .line 53
    check-cast v0, Lc8/DD;

    .end local v0    # "child":Landroid/view/View;
    iput-object v0, p0, Lc8/CXo;->wvucWebView:Lc8/DD;

    .line 56
    :cond_0
    iget-object v2, p0, Lc8/CXo;->mWebView:Lc8/geg;

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lc8/CXo;->mWebView:Lc8/geg;

    new-instance v3, Lc8/BXo;

    invoke-direct {v3, p0}, Lc8/BXo;-><init>(Lc8/CXo;)V

    invoke-interface {v2, v3}, Lc8/geg;->setOnPageListener(Lc8/feg;)V

    .line 92
    :cond_1
    return-void
.end method

.method public getContentSize(Lc8/EWf;)V
    .locals 3
    .param p1, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lc8/CXo;->wvucWebView:Lc8/DD;

    if-eqz v1, :cond_0

    .line 119
    const-string/jumbo v1, "height"

    iget-object v2, p0, Lc8/CXo;->wvucWebView:Lc8/DD;

    invoke-virtual {v2}, Lc8/DD;->getContentHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    .line 122
    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 124
    :cond_1
    return-void
.end method

.method public setNoFocus(Z)V
    .locals 2
    .param p1, "noFocus"    # Z
    .annotation runtime Lc8/vbg;
        name = "noFocus"
    .end annotation

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lc8/CXo;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "host":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "host":Landroid/view/View;
    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 113
    :cond_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 96
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 102
    invoke-super {p0, p1, p2}, Lc8/Rpb;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    .line 96
    :pswitch_0
    const-string/jumbo v2, "noFocus"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 98
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 99
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lc8/CXo;->setNoFocus(Z)V

    .line 100
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x7c65c797
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
