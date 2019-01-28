.class public Lc8/Bc;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lc8/Lc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nc;->showView()V
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
    .line 471
    .local p0, "this":Lc8/Bc;, "Landroid/support/design/widget/BaseTransientBottomBar$6;"
    iput-object p1, p0, Lc8/Bc;->this$0:Lc8/Nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 474
    .local p0, "this":Lc8/Bc;, "Landroid/support/design/widget/BaseTransientBottomBar$6;"
    iget-object v0, p0, Lc8/Bc;->this$0:Lc8/Nc;

    iget-object v0, v0, Lc8/Nc;->mView:Lc8/Mc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Mc;->setOnLayoutChangeListener(Lc8/Lc;)V

    .line 476
    iget-object v0, p0, Lc8/Bc;->this$0:Lc8/Nc;

    invoke-virtual {v0}, Lc8/Nc;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lc8/Bc;->this$0:Lc8/Nc;

    invoke-virtual {v0}, Lc8/Nc;->animateViewIn()V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lc8/Bc;->this$0:Lc8/Nc;

    invoke-virtual {v0}, Lc8/Nc;->onViewShown()V

    goto :goto_0
.end method
