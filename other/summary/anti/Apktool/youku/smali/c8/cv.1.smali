.class public Lc8/cv;
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
    .line 327
    iput-object p1, p0, Lc8/cv;->this$0:Lc8/Rv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lc8/cv;->this$0:Lc8/Rv;

    iget-boolean v0, v0, Lc8/Rv;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/cv;->this$0:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lc8/cv;->this$0:Lc8/Rv;

    iget-boolean v0, v0, Lc8/Rv;->mIsAttached:Z

    if-nez v0, :cond_2

    .line 335
    iget-object v0, p0, Lc8/cv;->this$0:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->requestLayout()V

    goto :goto_0

    .line 339
    :cond_2
    iget-object v0, p0, Lc8/cv;->this$0:Lc8/Rv;

    iget-boolean v0, v0, Lc8/Rv;->mLayoutFrozen:Z

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lc8/cv;->this$0:Lc8/Rv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/Rv;->mLayoutRequestEaten:Z

    goto :goto_0

    .line 343
    :cond_3
    iget-object v0, p0, Lc8/cv;->this$0:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->consumePendingUpdateOperations()V

    goto :goto_0
.end method
