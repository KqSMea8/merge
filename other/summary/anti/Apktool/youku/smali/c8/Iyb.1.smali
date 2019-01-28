.class public Lc8/Iyb;
.super Ljava/lang/Object;
.source "WXUIModel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jyb;->showNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jyb;

.field final synthetic val$animator2:Landroid/animation/ObjectAnimator;

.field final synthetic val$set:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lc8/Jyb;Landroid/animation/AnimatorSet;Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jyb;

    .prologue
    .line 278
    iput-object p1, p0, Lc8/Iyb;->this$0:Lc8/Jyb;

    iput-object p2, p0, Lc8/Iyb;->val$set:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lc8/Iyb;->val$animator2:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v1, p0, Lc8/Iyb;->this$0:Lc8/Jyb;

    invoke-static {v1}, Lc8/Jyb;->access$100(Lc8/Jyb;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lc8/Iyb;->val$set:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 283
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 284
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lc8/Iyb;->val$animator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 285
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 286
    iget-object v1, p0, Lc8/Iyb;->this$0:Lc8/Jyb;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Jyb;->access$102(Lc8/Jyb;Z)Z

    .line 288
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method
