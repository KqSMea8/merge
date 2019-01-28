.class public Lc8/Ec;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nc;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nc;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lc8/Nc;I)V
    .locals 0
    .param p1, "this$0"    # Lc8/Nc;

    .prologue
    .line 535
    .local p0, "this":Lc8/Ec;, "Landroid/support/design/widget/BaseTransientBottomBar$9;"
    iput-object p1, p0, Lc8/Ec;->this$0:Lc8/Nc;

    iput p2, p0, Lc8/Ec;->val$event:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 543
    .local p0, "this":Lc8/Ec;, "Landroid/support/design/widget/BaseTransientBottomBar$9;"
    iget-object v0, p0, Lc8/Ec;->this$0:Lc8/Nc;

    iget v1, p0, Lc8/Ec;->val$event:I

    invoke-virtual {v0, v1}, Lc8/Nc;->onViewHidden(I)V

    .line 544
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 538
    .local p0, "this":Lc8/Ec;, "Landroid/support/design/widget/BaseTransientBottomBar$9;"
    iget-object v0, p0, Lc8/Ec;->this$0:Lc8/Nc;

    invoke-static {v0}, Lc8/Nc;->access$000(Lc8/Nc;)Lc8/Ic;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Lc8/Ic;->animateContentOut(II)V

    .line 539
    return-void
.end method
