.class public Lc8/qOf;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImageLoadFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rOf;->applyEvent(Lc8/wxf;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/rOf;

.field final synthetic val$hostView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lc8/rOf;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$1"    # Lc8/rOf;

    .prologue
    .line 663
    iput-object p1, p0, Lc8/qOf;->this$1:Lc8/rOf;

    iput-object p2, p0, Lc8/qOf;->val$hostView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 666
    iget-object v0, p0, Lc8/qOf;->this$1:Lc8/rOf;

    iget-object v0, v0, Lc8/rOf;->this$0:Lc8/tOf;

    invoke-static {v0}, Lc8/tOf;->access$600(Lc8/tOf;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lc8/qOf;->this$1:Lc8/rOf;

    iget-object v0, v0, Lc8/rOf;->this$0:Lc8/tOf;

    invoke-static {v0}, Lc8/tOf;->access$600(Lc8/tOf;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/qOf;->this$1:Lc8/rOf;

    iget-object v0, v0, Lc8/rOf;->this$0:Lc8/tOf;

    iget v0, v0, Lc8/tOf;->mPlaceHoldResourceId:I

    if-eqz v0, :cond_1

    .line 667
    :cond_0
    iget-object v0, p0, Lc8/qOf;->val$hostView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 669
    :cond_1
    return-void
.end method
