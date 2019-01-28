.class public Lc8/uc;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 551
    .local p0, "this":Lc8/uc;, "Landroid/support/design/widget/BaseTransientBottomBar$10;"
    iput-object p1, p0, Lc8/uc;->this$0:Lc8/Nc;

    iput p2, p0, Lc8/uc;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 554
    .local p0, "this":Lc8/uc;, "Landroid/support/design/widget/BaseTransientBottomBar$10;"
    iget-object v0, p0, Lc8/uc;->this$0:Lc8/Nc;

    iget v1, p0, Lc8/uc;->val$event:I

    invoke-virtual {v0, v1}, Lc8/Nc;->onViewHidden(I)V

    .line 555
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 561
    .local p0, "this":Lc8/uc;, "Landroid/support/design/widget/BaseTransientBottomBar$10;"
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 558
    .local p0, "this":Lc8/uc;, "Landroid/support/design/widget/BaseTransientBottomBar$10;"
    return-void
.end method
