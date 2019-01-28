.class public Lc8/Ieo;
.super Ljava/lang/Object;
.source "IconPageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jeo;->animateToIcon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jeo;

.field final synthetic val$iconView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/Jeo;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jeo;

    .prologue
    .line 62
    iput-object p1, p0, Lc8/Ieo;->this$0:Lc8/Jeo;

    iput-object p2, p0, Lc8/Ieo;->val$iconView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lc8/Ieo;->val$iconView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lc8/Ieo;->this$0:Lc8/Jeo;

    invoke-virtual {v2}, Lc8/Jeo;->getWidth()I

    move-result v2

    iget-object v3, p0, Lc8/Ieo;->val$iconView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 65
    .local v0, "scrollPos":I
    iget-object v1, p0, Lc8/Ieo;->this$0:Lc8/Jeo;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lc8/Jeo;->smoothScrollTo(II)V

    .line 66
    iget-object v1, p0, Lc8/Ieo;->this$0:Lc8/Jeo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Jeo;->access$002(Lc8/Jeo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 67
    return-void
.end method
