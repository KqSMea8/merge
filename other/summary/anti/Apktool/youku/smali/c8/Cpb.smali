.class public Lc8/Cpb;
.super Lc8/scg;
.source "WXMarquee.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/scg",
        "<",
        "Lc8/Pvb;",
        ">;"
    }
.end annotation


# instance fields
.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Cpb;->mViews:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public addSubView(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lc8/Cpb;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public createViewImpl()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lc8/scg;->createViewImpl()V

    .line 37
    invoke-virtual {p0}, Lc8/Cpb;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Pvb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Pvb;->setClipChildren(Z)V

    .line 38
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lc8/scg;->destroy()V

    .line 114
    iget-object v0, p0, Lc8/Cpb;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    invoke-virtual {p0}, Lc8/Cpb;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Pvb;

    invoke-virtual {v0}, Lc8/Pvb;->destroy()V

    .line 116
    return-void
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lc8/Cpb;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lc8/Cpb;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Pvb;

    invoke-virtual {v0}, Lc8/Pvb;->getRealView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lc8/Cpb;->initComponentHostView(Landroid/content/Context;)Lc8/Pvb;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/Pvb;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    new-instance v0, Lc8/Pvb;

    invoke-direct {v0, p1}, Lc8/Pvb;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lc8/scg;->onActivityPause()V

    .line 98
    invoke-virtual {p0}, Lc8/Cpb;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lc8/Cpb;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Pvb;

    invoke-virtual {v0}, Lc8/Pvb;->stopScroll()V

    .line 101
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lc8/scg;->onActivityResume()V

    .line 106
    invoke-virtual {p0}, Lc8/Cpb;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lc8/Cpb;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Pvb;

    invoke-virtual {v0}, Lc8/Pvb;->startScroll()V

    .line 109
    :cond_0
    return-void
.end method

.method public remove(Lc8/tbg;Z)V
    .locals 1
    .param p1, "child"    # Lc8/tbg;
    .param p2, "destroy"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lc8/Cpb;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    invoke-super {p0, p1, p2}, Lc8/scg;->remove(Lc8/tbg;Z)V

    .line 93
    return-void
.end method

.method public setDelay(Ljava/lang/String;)V
    .locals 4
    .param p1, "delay"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "delay"
    .end annotation

    .prologue
    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 49
    .local v0, "lDelay":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 50
    invoke-virtual {p0}, Lc8/Cpb;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Pvb;

    invoke-virtual {v2, v0, v1}, Lc8/Pvb;->setDelayTime(J)V

    .line 53
    .end local v0    # "lDelay":J
    :cond_0
    return-void
.end method

.method public setInterval(Ljava/lang/String;)V
    .locals 4
    .param p1, "interval"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "interval"
    .end annotation

    .prologue
    .line 57
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 59
    .local v0, "lInterval":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 60
    invoke-virtual {p0}, Lc8/Cpb;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Pvb;

    invoke-virtual {v2, v0, v1}, Lc8/Pvb;->setIntervalTime(J)V

    .line 63
    .end local v0    # "lInterval":J
    :cond_0
    return-void
.end method

.method public setTransitionDuration(Ljava/lang/String;)V
    .locals 4
    .param p1, "transitionDuration"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "transitionDuration"
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 69
    .local v0, "lTransitionDuration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lc8/Cpb;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Pvb;

    invoke-virtual {v2, v0, v1}, Lc8/Pvb;->setDurationTime(J)V

    .line 73
    .end local v0    # "lTransitionDuration":J
    :cond_0
    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 3
    .param p1, "props"    # Ljava/util/Map;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lc8/scg;->updateProperties(Ljava/util/Map;)V

    .line 80
    invoke-virtual {p0}, Lc8/Cpb;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Pvb;

    iget-object v2, p0, Lc8/Cpb;->mViews:Ljava/util/List;

    invoke-virtual {p0}, Lc8/Cpb;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2, v1}, Lc8/Pvb;->setViewList(Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 81
    invoke-virtual {p0}, Lc8/Cpb;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Pvb;

    invoke-virtual {v0}, Lc8/Pvb;->startScrollA()V

    .line 82
    return-void
.end method
