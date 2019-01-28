.class public Lc8/Cf;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ff;->registerAnimationCallback(Lc8/zf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ff;


# direct methods
.method constructor <init>(Lc8/Ff;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ff;

    .prologue
    .line 693
    iput-object p1, p0, Lc8/Cf;->this$0:Lc8/Ff;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 706
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/Cf;->this$0:Lc8/Ff;

    .line 707
    invoke-static {v3}, Lc8/Ff;->access$100(Lc8/Ff;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 708
    .local v2, "tmpCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 709
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 710
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/zf;

    iget-object v4, p0, Lc8/Cf;->this$0:Lc8/Ff;

    invoke-virtual {v3, v4}, Lc8/zf;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 696
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/Cf;->this$0:Lc8/Ff;

    .line 697
    invoke-static {v3}, Lc8/Ff;->access$100(Lc8/Ff;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 698
    .local v2, "tmpCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 699
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 700
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/zf;

    iget-object v4, p0, Lc8/Cf;->this$0:Lc8/Ff;

    invoke-virtual {v3, v4}, Lc8/zf;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    :cond_0
    return-void
.end method
