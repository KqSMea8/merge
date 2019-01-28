.class public Lc8/Xd;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Yd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlingRunnable"
.end annotation


# instance fields
.field private final mLayout:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mParent:Lc8/yd;

.field final synthetic this$0:Lc8/Yd;


# direct methods
.method constructor <init>(Lc8/Yd;Lc8/yd;Landroid/view/View;)V
    .locals 0
    .param p2, "parent"    # Lc8/yd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/yd;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lc8/Xd;, "Landroid/support/design/widget/HeaderBehavior<TV;>.FlingRunnable;"
    .local p3, "layout":Landroid/view/View;, "TV;"
    iput-object p1, p0, Lc8/Xd;->this$0:Lc8/Yd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p2, p0, Lc8/Xd;->mParent:Lc8/yd;

    .line 293
    iput-object p3, p0, Lc8/Xd;->mLayout:Landroid/view/View;

    .line 294
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 298
    .local p0, "this":Lc8/Xd;, "Landroid/support/design/widget/HeaderBehavior<TV;>.FlingRunnable;"
    iget-object v0, p0, Lc8/Xd;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Xd;->this$0:Lc8/Yd;

    iget-object v0, v0, Lc8/Yd;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lc8/Xd;->this$0:Lc8/Yd;

    iget-object v0, v0, Lc8/Yd;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lc8/Xd;->this$0:Lc8/Yd;

    iget-object v1, p0, Lc8/Xd;->mParent:Lc8/yd;

    iget-object v2, p0, Lc8/Xd;->mLayout:Landroid/view/View;

    iget-object v3, p0, Lc8/Xd;->this$0:Lc8/Yd;

    iget-object v3, v3, Lc8/Yd;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lc8/Yd;->setHeaderTopBottomOffset(Lc8/yd;Landroid/view/View;I)I

    .line 302
    iget-object v0, p0, Lc8/Xd;->mLayout:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lc8/Xd;->this$0:Lc8/Yd;

    iget-object v1, p0, Lc8/Xd;->mParent:Lc8/yd;

    iget-object v2, p0, Lc8/Xd;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lc8/Yd;->onFlingFinished(Lc8/yd;Landroid/view/View;)V

    goto :goto_0
.end method
