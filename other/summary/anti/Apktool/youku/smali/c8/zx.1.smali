.class public Lc8/zx;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mx;


# direct methods
.method constructor <init>(Lc8/Mx;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Mx;

    .prologue
    .line 254
    iput-object p1, p0, Lc8/zx;->this$0:Lc8/Mx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lc8/zx;->this$0:Lc8/Mx;

    iget-object v0, v0, Lc8/Mx;->mSelected:Lc8/Qv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/zx;->this$0:Lc8/Mx;

    invoke-virtual {v0}, Lc8/Mx;->scrollIfNecessary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lc8/zx;->this$0:Lc8/Mx;

    iget-object v0, v0, Lc8/Mx;->mSelected:Lc8/Qv;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lc8/zx;->this$0:Lc8/Mx;

    iget-object v1, p0, Lc8/zx;->this$0:Lc8/Mx;

    iget-object v1, v1, Lc8/Mx;->mSelected:Lc8/Qv;

    invoke-virtual {v0, v1}, Lc8/Mx;->moveIfNecessary(Lc8/Qv;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lc8/zx;->this$0:Lc8/Mx;

    iget-object v0, v0, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    iget-object v1, p0, Lc8/zx;->this$0:Lc8/Mx;

    iget-object v1, v1, Lc8/Mx;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lc8/Rv;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 262
    iget-object v0, p0, Lc8/zx;->this$0:Lc8/Mx;

    iget-object v0, v0, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 264
    :cond_1
    return-void
.end method
