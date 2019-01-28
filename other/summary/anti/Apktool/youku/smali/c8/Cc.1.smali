.class public Lc8/Cc;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nc;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nc;


# direct methods
.method constructor <init>(Lc8/Nc;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Nc;

    .prologue
    .line 495
    .local p0, "this":Lc8/Cc;, "Landroid/support/design/widget/BaseTransientBottomBar$7;"
    iput-object p1, p0, Lc8/Cc;->this$0:Lc8/Nc;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 505
    .local p0, "this":Lc8/Cc;, "Landroid/support/design/widget/BaseTransientBottomBar$7;"
    iget-object v0, p0, Lc8/Cc;->this$0:Lc8/Nc;

    invoke-virtual {v0}, Lc8/Nc;->onViewShown()V

    .line 506
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 498
    .local p0, "this":Lc8/Cc;, "Landroid/support/design/widget/BaseTransientBottomBar$7;"
    iget-object v0, p0, Lc8/Cc;->this$0:Lc8/Nc;

    invoke-static {v0}, Lc8/Nc;->access$000(Lc8/Nc;)Lc8/Ic;

    move-result-object v0

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Lc8/Ic;->animateContentIn(II)V

    .line 501
    return-void
.end method
