.class public Lc8/Vp;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Lc8/fq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/aq;->getMainThreadProxy(Lc8/fq;)Lc8/fq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/fq",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final ADD_TILE:I = 0x2

.field static final REMOVE_TILE:I = 0x3

.field static final UPDATE_ITEM_COUNT:I = 0x1


# instance fields
.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMainThreadRunnable:Ljava/lang/Runnable;

.field final mQueue:Lc8/Yp;

.field final synthetic this$0:Lc8/aq;

.field final synthetic val$callback:Lc8/fq;


# direct methods
.method constructor <init>(Lc8/aq;Lc8/fq;)V
    .locals 2
    .param p1, "this$0"    # Lc8/aq;

    .prologue
    .line 31
    .local p0, "this":Lc8/Vp;, "Landroid/support/v7/util/MessageThreadUtil$1;"
    iput-object p1, p0, Lc8/Vp;->this$0:Lc8/aq;

    iput-object p2, p0, Lc8/Vp;->val$callback:Lc8/fq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lc8/Yp;

    invoke-direct {v0}, Lc8/Yp;-><init>()V

    iput-object v0, p0, Lc8/Vp;->mQueue:Lc8/Yp;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/Vp;->mMainThreadHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lc8/Up;

    invoke-direct {v0, p0}, Lc8/Up;-><init>(Lc8/Vp;)V

    iput-object v0, p0, Lc8/Vp;->mMainThreadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private sendMessage(Lc8/Zp;)V
    .locals 2
    .param p1, "msg"    # Lc8/Zp;

    .prologue
    .line 55
    .local p0, "this":Lc8/Vp;, "Landroid/support/v7/util/MessageThreadUtil$1;"
    iget-object v0, p0, Lc8/Vp;->mQueue:Lc8/Yp;

    invoke-virtual {v0, p1}, Lc8/Yp;->sendMessage(Lc8/Zp;)V

    .line 56
    iget-object v0, p0, Lc8/Vp;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/Vp;->mMainThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method


# virtual methods
.method public addTile(ILc8/hq;)V
    .locals 1
    .param p1, "generation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc8/hq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lc8/Vp;, "Landroid/support/v7/util/MessageThreadUtil$1;"
    .local p2, "tile":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    const/4 v0, 0x2

    invoke-static {v0, p1, p2}, Lc8/Zp;->obtainMessage(IILjava/lang/Object;)Lc8/Zp;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Vp;->sendMessage(Lc8/Zp;)V

    .line 47
    return-void
.end method

.method public removeTile(II)V
    .locals 1
    .param p1, "generation"    # I
    .param p2, "position"    # I

    .prologue
    .line 51
    .local p0, "this":Lc8/Vp;, "Landroid/support/v7/util/MessageThreadUtil$1;"
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Lc8/Zp;->obtainMessage(III)Lc8/Zp;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Vp;->sendMessage(Lc8/Zp;)V

    .line 52
    return-void
.end method

.method public updateItemCount(II)V
    .locals 1
    .param p1, "generation"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 41
    .local p0, "this":Lc8/Vp;, "Landroid/support/v7/util/MessageThreadUtil$1;"
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lc8/Zp;->obtainMessage(III)Lc8/Zp;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Vp;->sendMessage(Lc8/Zp;)V

    .line 42
    return-void
.end method
