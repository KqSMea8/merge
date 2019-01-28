.class public Lc8/sr;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lc8/tr;


# direct methods
.method protected constructor <init>(Lc8/tr;)V
    .locals 1
    .param p1, "this$0"    # Lc8/tr;

    .prologue
    .line 273
    iput-object p1, p0, Lc8/sr;->this$0:Lc8/tr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/sr;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/sr;->mCanceled:Z

    .line 301
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 292
    iget-boolean v0, p0, Lc8/sr;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lc8/sr;->this$0:Lc8/tr;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/tr;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 295
    iget-object v0, p0, Lc8/sr;->this$0:Lc8/tr;

    iget v1, p0, Lc8/sr;->mFinalVisibility:I

    invoke-static {v0, v1}, Lc8/tr;->access$101(Lc8/tr;I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lc8/sr;->this$0:Lc8/tr;

    invoke-static {v0, v1}, Lc8/tr;->access$001(Lc8/tr;I)V

    .line 287
    iput-boolean v1, p0, Lc8/sr;->mCanceled:Z

    .line 288
    return-void
.end method

.method public withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Lc8/sr;
    .locals 1
    .param p1, "animation"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "visibility"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lc8/sr;->this$0:Lc8/tr;

    iput-object p1, v0, Lc8/tr;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 280
    iput p2, p0, Lc8/sr;->mFinalVisibility:I

    .line 281
    return-object p0
.end method
