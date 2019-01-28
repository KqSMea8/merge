.class public Lc8/xbg;
.super Lc8/Hdg;
.source "WXDiv.java"

# interfaces
.implements Lc8/Fdg;


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wbg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Hdg",
        "<",
        "Lc8/qeg;",
        ">;",
        "Lc8/Fdg",
        "<",
        "Lc8/Mdg;",
        ">;"
    }
.end annotation


# instance fields
.field private mWidgetGroup:Lc8/Mdg;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lc8/Hdg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 57
    return-void
.end method

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
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lc8/xbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 53
    return-void
.end method


# virtual methods
.method public bridge synthetic getOrCreateFlatWidget()Lc8/Ldg;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lc8/xbg;->getOrCreateFlatWidget()Lc8/Mdg;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateFlatWidget()Lc8/Mdg;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lc8/xbg;->mWidgetGroup:Lc8/Mdg;

    if-nez v1, :cond_1

    .line 81
    new-instance v1, Lc8/Mdg;

    invoke-virtual {p0}, Lc8/xbg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getFlatUIContext()Lc8/Gdg;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/Mdg;-><init>(Lc8/Gdg;)V

    iput-object v1, p0, Lc8/xbg;->mWidgetGroup:Lc8/Mdg;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lc8/xbg;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Lc8/xbg;->createChildViewAt(I)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lc8/xbg;->mountFlatGUI()V

    .line 87
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lc8/xbg;->mWidgetGroup:Lc8/Mdg;

    return-object v1
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lc8/xbg;->initComponentHostView(Landroid/content/Context;)Lc8/qeg;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/qeg;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    new-instance v0, Lc8/qeg;

    invoke-direct {v0, p1}, Lc8/qeg;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "frameLayout":Lc8/qeg;
    invoke-virtual {v0, p0}, Lc8/qeg;->holdComponent(Lc8/xbg;)V

    .line 64
    return-object v0
.end method

.method public intendToBeFlatContainer()Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lc8/xbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getFlatUIContext()Lc8/Gdg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Gdg;->isFlatUIEnabled(Lc8/tbg;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lc8/xbg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVirtualComponent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-virtual {p0, v0}, Lc8/xbg;->promoteToView(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mountFlatGUI()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/xbg;->promoteToView(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lc8/xbg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lc8/xbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/qeg;

    iget-object v1, p0, Lc8/xbg;->widgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lc8/qeg;->mountFlatGUI(Ljava/util/List;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lc8/xbg;->mWidgetGroup:Lc8/Mdg;

    iget-object v1, p0, Lc8/xbg;->widgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lc8/Mdg;->replaceAll(Ljava/util/List;)V

    goto :goto_0
.end method

.method public promoteToView(Z)Z
    .locals 2
    .param p1, "checkAncestor"    # Z

    .prologue
    .line 69
    invoke-virtual {p0}, Lc8/xbg;->intendToBeFlatContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/xbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getFlatUIContext()Lc8/Gdg;

    move-result-object v0

    const-class v1, Lc8/xbg;

    invoke-virtual {v0, p0, p1, v1}, Lc8/Gdg;->promoteToView(Lc8/tbg;ZLjava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unmountFlatGUI()V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lc8/xbg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lc8/xbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/qeg;

    invoke-virtual {v0}, Lc8/qeg;->unmountFlatGUI()V

    .line 106
    :cond_0
    return-void
.end method
