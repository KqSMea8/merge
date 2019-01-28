.class public Lc8/Mbg;
.super Lc8/tbg;
.source "WXIndicator.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Lbg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/tbg",
        "<",
        "Lc8/keg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p5}, Lc8/Mbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 56
    return-void
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lc8/Mbg;->initComponentHostView(Landroid/content/Context;)Lc8/keg;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/keg;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    new-instance v0, Lc8/keg;

    invoke-direct {v0, p1}, Lc8/keg;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "view":Lc8/keg;
    invoke-virtual {p0}, Lc8/Mbg;->getParent()Lc8/scg;

    move-result-object v1

    instance-of v1, v1, Lc8/gcg;

    if-eqz v1, :cond_0

    .line 75
    .end local v0    # "view":Lc8/keg;
    :goto_0
    return-object v0

    .line 71
    .restart local v0    # "view":Lc8/keg;
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    new-instance v1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v2, "WXIndicator initView error."

    invoke-direct {v1, v2}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 46
    check-cast p1, Lc8/keg;

    .end local p1    # "x0":Landroid/view/View;
    invoke-virtual {p0, p1}, Lc8/Mbg;->onHostViewInitialized(Lc8/keg;)V

    return-void
.end method

.method protected onHostViewInitialized(Lc8/keg;)V
    .locals 1
    .param p1, "host"    # Lc8/keg;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lc8/tbg;->onHostViewInitialized(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0}, Lc8/Mbg;->getParent()Lc8/scg;

    move-result-object v0

    instance-of v0, v0, Lc8/gcg;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lc8/Mbg;->getParent()Lc8/scg;

    move-result-object v0

    check-cast v0, Lc8/gcg;

    invoke-virtual {v0, p0}, Lc8/gcg;->addIndicator(Lc8/Mbg;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 8
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .prologue
    .line 46
    move-object v1, p1

    check-cast v1, Lc8/keg;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lc8/Mbg;->setHostLayoutParams(Lc8/keg;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lc8/keg;IIIIII)V
    .locals 1
    .param p1, "host"    # Lc8/keg;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I

    .prologue
    .line 60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p4, p6, p5, p7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 62
    invoke-virtual {p1, v0}, Lc8/keg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    return-void
.end method

.method public setItemColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemColor"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "itemColor"
    .end annotation

    .prologue
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-static {p1}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "colorInt":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/keg;

    invoke-virtual {v1, v0}, Lc8/keg;->setPageColor(I)V

    .line 115
    invoke-virtual {p0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/keg;

    invoke-virtual {v1}, Lc8/keg;->forceLayout()V

    .line 116
    invoke-virtual {p0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/keg;

    invoke-virtual {v1}, Lc8/keg;->requestLayout()V

    .line 119
    .end local v0    # "colorInt":I
    :cond_0
    return-void
.end method

.method public setItemSelectedColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemSelectedColor"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "itemSelectedColor"
    .end annotation

    .prologue
    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-static {p1}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "colorInt":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/keg;

    invoke-virtual {v1, v0}, Lc8/keg;->setFillColor(I)V

    .line 127
    invoke-virtual {p0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/keg;

    invoke-virtual {v1}, Lc8/keg;->forceLayout()V

    .line 128
    invoke-virtual {p0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/keg;

    invoke-virtual {v1}, Lc8/keg;->requestLayout()V

    .line 131
    .end local v0    # "colorInt":I
    :cond_0
    return-void
.end method

.method public setItemSize(I)V
    .locals 3
    .param p1, "itemSize"    # I
    .annotation runtime Lc8/vbg;
        name = "itemSize"
    .end annotation

    .prologue
    .line 135
    if-gez p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/keg;

    int-to-float v1, p1

    invoke-virtual {p0}, Lc8/Mbg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lc8/keg;->setRadius(F)V

    .line 139
    invoke-virtual {p0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/keg;

    invoke-virtual {v0}, Lc8/keg;->forceLayout()V

    .line 140
    invoke-virtual {p0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/keg;

    invoke-virtual {v0}, Lc8/keg;->requestLayout()V

    goto :goto_0
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 88
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 105
    invoke-super {p0, p1, p2}, Lc8/tbg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    :cond_1
    :goto_1
    return v3

    .line 88
    :sswitch_0
    const-string/jumbo v5, "itemColor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "itemSelectedColor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "itemSize"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-static {p2, v6}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "item_color":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0, v0}, Lc8/Mbg;->setItemColor(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    .end local v0    # "item_color":Ljava/lang/String;
    :pswitch_1
    invoke-static {p2, v6}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "selected_color":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {p0, v2}, Lc8/Mbg;->setItemSelectedColor(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    .end local v2    # "selected_color":Ljava/lang/String;
    :pswitch_2
    invoke-static {p2, v6}, Lc8/Dgg;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    .line 101
    .local v1, "item_size":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lc8/Mbg;->setItemSize(I)V

    goto :goto_1

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x462f0db4 -> :sswitch_2
        0x6fa84135 -> :sswitch_1
        0x7ed3b810 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setShowIndicators(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 144
    invoke-virtual {p0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/keg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/keg;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/keg;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lc8/keg;->setVisibility(I)V

    goto :goto_0
.end method
