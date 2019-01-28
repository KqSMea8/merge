.class public Lc8/rv;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lc8/ov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Rv;


# direct methods
.method constructor <init>(Lc8/Rv;)V
    .locals 0

    .prologue
    .line 11765
    iput-object p1, p0, Lc8/rv;->this$0:Lc8/Rv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11766
    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lc8/Qv;)V
    .locals 3
    .param p1, "item"    # Lc8/Qv;

    .prologue
    const/4 v1, 0x0

    .line 11770
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc8/Qv;->setIsRecyclable(Z)V

    .line 11771
    iget-object v0, p1, Lc8/Qv;->mShadowedHolder:Lc8/Qv;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lc8/Qv;->mShadowingHolder:Lc8/Qv;

    if-nez v0, :cond_0

    .line 11772
    iput-object v1, p1, Lc8/Qv;->mShadowedHolder:Lc8/Qv;

    .line 11776
    :cond_0
    iput-object v1, p1, Lc8/Qv;->mShadowingHolder:Lc8/Qv;

    .line 11777
    invoke-static {p1}, Lc8/Qv;->access$1300(Lc8/Qv;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11778
    iget-object v0, p0, Lc8/rv;->this$0:Lc8/Rv;

    iget-object v1, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lc8/Rv;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lc8/Qv;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11779
    iget-object v0, p0, Lc8/rv;->this$0:Lc8/Rv;

    iget-object v1, p1, Lc8/Qv;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc8/Rv;->removeDetachedView(Landroid/view/View;Z)V

    .line 11782
    :cond_1
    return-void
.end method
