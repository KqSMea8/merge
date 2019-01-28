.class public Lc8/Bpb;
.super Lc8/tbg;
.source "WXLatestVisitView.java"


# instance fields
.field private mNearlyAround:Lc8/Svb;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    new-instance v0, Lc8/Svb;

    invoke-direct {v0, p1}, Lc8/Svb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Bpb;->mNearlyAround:Lc8/Svb;

    .line 27
    iget-object v0, p0, Lc8/Bpb;->mNearlyAround:Lc8/Svb;

    invoke-virtual {v0}, Lc8/Svb;->updataList()V

    .line 28
    iget-object v0, p0, Lc8/Bpb;->mNearlyAround:Lc8/Svb;

    new-instance v1, Lc8/Apb;

    invoke-direct {v1, p0}, Lc8/Apb;-><init>(Lc8/Bpb;)V

    invoke-virtual {v0, v1}, Lc8/Svb;->setOnNearlyItemClickListener(Lc8/Rvb;)V

    .line 41
    iget-object v0, p0, Lc8/Bpb;->mNearlyAround:Lc8/Svb;

    invoke-virtual {v0}, Lc8/Svb;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lc8/tbg;->onActivityResume()V

    .line 47
    iget-object v0, p0, Lc8/Bpb;->mNearlyAround:Lc8/Svb;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lc8/Bpb;->mNearlyAround:Lc8/Svb;

    invoke-virtual {v0}, Lc8/Svb;->updataList()V

    .line 50
    :cond_0
    return-void
.end method
