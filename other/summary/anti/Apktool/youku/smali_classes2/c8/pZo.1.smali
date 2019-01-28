.class public Lc8/pZo;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sZo;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sZo;


# direct methods
.method constructor <init>(Lc8/sZo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/sZo;

    .prologue
    .line 133
    iput-object p1, p0, Lc8/pZo;->this$0:Lc8/sZo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 143
    iget-object v0, p0, Lc8/pZo;->this$0:Lc8/sZo;

    invoke-virtual {v0}, Lc8/sZo;->clearAnimation()V

    .line 145
    iget-object v0, p0, Lc8/pZo;->this$0:Lc8/sZo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/sZo;->access$202(Lc8/sZo;Z)Z

    .line 146
    iget-object v0, p0, Lc8/pZo;->this$0:Lc8/sZo;

    invoke-static {v0}, Lc8/sZo;->access$300(Lc8/sZo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lc8/pZo;->this$0:Lc8/sZo;

    iget-object v0, v0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/pZo;->this$0:Lc8/sZo;

    invoke-static {v1}, Lc8/sZo;->access$400(Lc8/sZo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 153
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 136
    iget-object v0, p0, Lc8/pZo;->this$0:Lc8/sZo;

    iget-object v0, v0, Lc8/sZo;->mTv:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/pZo;->this$0:Lc8/sZo;

    invoke-static {v1}, Lc8/sZo;->access$000(Lc8/sZo;)F

    move-result v1

    invoke-static {v0, v1}, Lc8/sZo;->access$100(Landroid/view/View;F)V

    .line 137
    return-void
.end method
