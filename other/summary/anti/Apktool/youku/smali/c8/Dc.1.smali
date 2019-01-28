.class public Lc8/Dc;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 513
    .local p0, "this":Lc8/Dc;, "Landroid/support/design/widget/BaseTransientBottomBar$8;"
    iput-object p1, p0, Lc8/Dc;->this$0:Lc8/Nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 516
    .local p0, "this":Lc8/Dc;, "Landroid/support/design/widget/BaseTransientBottomBar$8;"
    iget-object v0, p0, Lc8/Dc;->this$0:Lc8/Nc;

    invoke-virtual {v0}, Lc8/Nc;->onViewShown()V

    .line 517
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 523
    .local p0, "this":Lc8/Dc;, "Landroid/support/design/widget/BaseTransientBottomBar$8;"
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 520
    .local p0, "this":Lc8/Dc;, "Landroid/support/design/widget/BaseTransientBottomBar$8;"
    return-void
.end method
