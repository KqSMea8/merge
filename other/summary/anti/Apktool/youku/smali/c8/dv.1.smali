.class public Lc8/dv;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Rv;


# direct methods
.method constructor <init>(Lc8/Rv;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Rv;

    .prologue
    .line 489
    iput-object p1, p0, Lc8/dv;->this$0:Lc8/Rv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lc8/dv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lc8/dv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    invoke-virtual {v0}, Lc8/qv;->runPendingAnimations()V

    .line 495
    :cond_0
    iget-object v0, p0, Lc8/dv;->this$0:Lc8/Rv;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/Rv;->mPostedAnimatorRunner:Z

    .line 496
    return-void
.end method
