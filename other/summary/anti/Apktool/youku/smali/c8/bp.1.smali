.class public Lc8/bp;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fp;


# direct methods
.method constructor <init>(Lc8/fp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fp;

    .prologue
    .line 155
    iput-object p1, p0, Lc8/bp;->this$0:Lc8/fp;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lc8/bp;->this$0:Lc8/fp;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    .line 159
    iget-object v0, p0, Lc8/bp;->this$0:Lc8/fp;

    iget-object v0, v0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-virtual {v0}, Lc8/wr;->requestLayout()V

    .line 160
    return-void
.end method
