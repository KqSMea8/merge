.class public Lc8/ibg;
.super Lc8/scg;
.source "WXBaseRefresh.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/scg",
        "<",
        "Lc8/qeg;",
        ">;"
    }
.end annotation


# instance fields
.field private mLoadingIndicator:Lc8/Pbg;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "lazy"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 39
    return-void
.end method

.method private checkLoadingIndicator(Lc8/tbg;)V
    .locals 1
    .param p1, "child"    # Lc8/tbg;

    .prologue
    .line 59
    instance-of v0, p1, Lc8/Pbg;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lc8/Pbg;

    .end local p1    # "child":Lc8/tbg;
    iput-object p1, p0, Lc8/ibg;->mLoadingIndicator:Lc8/Pbg;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public addChild(Lc8/tbg;)V
    .locals 0
    .param p1, "child"    # Lc8/tbg;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lc8/scg;->addChild(Lc8/tbg;)V

    .line 44
    invoke-direct {p0, p1}, Lc8/ibg;->checkLoadingIndicator(Lc8/tbg;)V

    .line 45
    return-void
.end method

.method public addChild(Lc8/tbg;I)V
    .locals 0
    .param p1, "child"    # Lc8/tbg;
    .param p2, "index"    # I

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lc8/scg;->addChild(Lc8/tbg;I)V

    .line 55
    invoke-direct {p0, p1}, Lc8/ibg;->checkLoadingIndicator(Lc8/tbg;)V

    .line 56
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/ibg;->initComponentHostView(Landroid/content/Context;)Lc8/qeg;

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
    .line 49
    new-instance v0, Lc8/qeg;

    invoke-direct {v0, p1}, Lc8/qeg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
