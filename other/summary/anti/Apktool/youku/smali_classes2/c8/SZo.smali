.class public Lc8/SZo;
.super Ljava/lang/Object;
.source "HomeToolbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/WZo;->changeRightBarWithAnim(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/WZo;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$filters:Ljava/util/List;

.field final synthetic val$inAnim:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lc8/WZo;Ljava/util/List;Ljava/lang/String;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "this$0"    # Lc8/WZo;

    .prologue
    .line 136
    iput-object p1, p0, Lc8/SZo;->this$0:Lc8/WZo;

    iput-object p2, p0, Lc8/SZo;->val$filters:Ljava/util/List;

    iput-object p3, p0, Lc8/SZo;->val$cid:Ljava/lang/String;

    iput-object p4, p0, Lc8/SZo;->val$inAnim:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 143
    iget-object v1, p0, Lc8/SZo;->this$0:Lc8/WZo;

    invoke-static {v1}, Lc8/WZo;->access$000(Lc8/WZo;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 144
    iget-object v1, p0, Lc8/SZo;->val$filters:Ljava/util/List;

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lc8/SZo;->this$0:Lc8/WZo;

    invoke-static {v1}, Lc8/WZo;->access$100(Lc8/WZo;)V

    .line 153
    :goto_0
    iget-object v1, p0, Lc8/SZo;->this$0:Lc8/WZo;

    invoke-static {v1}, Lc8/WZo;->access$000(Lc8/WZo;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lc8/SZo;->val$inAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    return-void

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tool bar filter tabs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/SZo;->val$filters:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lc8/SZo;->this$0:Lc8/WZo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/WZo;->access$202(Lc8/WZo;Z)Z

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc8/SZo;->val$filters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/FilterWrapper;>;"
    iget-object v1, p0, Lc8/SZo;->this$0:Lc8/WZo;

    iget-object v2, p0, Lc8/SZo;->val$cid:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lc8/WZo;->access$300(Lc8/WZo;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 159
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 139
    return-void
.end method
