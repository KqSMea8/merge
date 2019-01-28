.class public Lc8/aw;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fw;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fw;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/fw;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fw;

    .prologue
    .line 264
    iput-object p1, p0, Lc8/aw;->this$0:Lc8/fw;

    iput-object p2, p0, Lc8/aw;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 267
    iget-object v1, p0, Lc8/aw;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lc8/aw;->this$0:Lc8/fw;

    invoke-virtual {v2}, Lc8/fw;->getWidth()I

    move-result v2

    iget-object v3, p0, Lc8/aw;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 268
    .local v0, "scrollPos":I
    iget-object v1, p0, Lc8/aw;->this$0:Lc8/fw;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lc8/fw;->smoothScrollTo(II)V

    .line 269
    iget-object v1, p0, Lc8/aw;->this$0:Lc8/fw;

    const/4 v2, 0x0

    iput-object v2, v1, Lc8/fw;->mTabSelector:Ljava/lang/Runnable;

    .line 270
    return-void
.end method
