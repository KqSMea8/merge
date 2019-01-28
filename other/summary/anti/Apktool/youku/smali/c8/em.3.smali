.class public final Lc8/em;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cm;,
        Lc8/am;,
        Lc8/bm;,
        Lc8/dm;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncLayoutInflater"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field mInflateThread:Lc8/cm;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lc8/Zl;

    invoke-direct {v0, p0}, Lc8/Zl;-><init>(Lc8/em;)V

    iput-object v0, p0, Lc8/em;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 75
    new-instance v0, Lc8/am;

    invoke-direct {v0, p1}, Lc8/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/em;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lc8/em;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/em;->mHandler:Landroid/os/Handler;

    .line 77
    invoke-static {}, Lc8/cm;->getInstance()Lc8/cm;

    move-result-object v0

    iput-object v0, p0, Lc8/em;->mInflateThread:Lc8/cm;

    .line 78
    return-void
.end method


# virtual methods
.method public inflate(ILandroid/view/ViewGroup;Lc8/dm;)V
    .locals 3
    .param p1, "resid"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "callback"    # Lc8/dm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 83
    if-nez p3, :cond_0

    .line 84
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "callback argument may not be null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    iget-object v1, p0, Lc8/em;->mInflateThread:Lc8/cm;

    invoke-virtual {v1}, Lc8/cm;->obtainRequest()Lc8/bm;

    move-result-object v0

    .line 87
    .local v0, "request":Lc8/bm;
    iput-object p0, v0, Lc8/bm;->inflater:Lc8/em;

    .line 88
    iput p1, v0, Lc8/bm;->resid:I

    .line 89
    iput-object p2, v0, Lc8/bm;->parent:Landroid/view/ViewGroup;

    .line 90
    iput-object p3, v0, Lc8/bm;->callback:Lc8/dm;

    .line 91
    iget-object v1, p0, Lc8/em;->mInflateThread:Lc8/cm;

    invoke-virtual {v1, v0}, Lc8/cm;->enqueue(Lc8/bm;)V

    .line 92
    return-void
.end method
