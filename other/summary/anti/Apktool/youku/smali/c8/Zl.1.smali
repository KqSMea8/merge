.class public Lc8/Zl;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/em;


# direct methods
.method constructor <init>(Lc8/em;)V
    .locals 0
    .param p1, "this$0"    # Lc8/em;

    .prologue
    .line 94
    iput-object p1, p0, Lc8/Zl;->this$0:Lc8/em;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc8/bm;

    .line 98
    .local v0, "request":Lc8/bm;
    iget-object v1, v0, Lc8/bm;->view:Landroid/view/View;

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lc8/Zl;->this$0:Lc8/em;

    iget-object v1, v1, Lc8/em;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v0, Lc8/bm;->resid:I

    iget-object v3, v0, Lc8/bm;->parent:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lc8/bm;->view:Landroid/view/View;

    .line 102
    :cond_0
    iget-object v1, v0, Lc8/bm;->callback:Lc8/dm;

    iget-object v2, v0, Lc8/bm;->view:Landroid/view/View;

    iget v3, v0, Lc8/bm;->resid:I

    iget-object v4, v0, Lc8/bm;->parent:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v3, v4}, Lc8/dm;->onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V

    .line 104
    iget-object v1, p0, Lc8/Zl;->this$0:Lc8/em;

    iget-object v1, v1, Lc8/em;->mInflateThread:Lc8/cm;

    invoke-virtual {v1, v0}, Lc8/cm;->releaseRequest(Lc8/bm;)V

    .line 105
    const/4 v1, 0x1

    return v1
.end method
