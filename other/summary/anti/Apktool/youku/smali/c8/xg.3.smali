.class public Lc8/xg;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBoundsPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yg;->createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yg;

.field final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$sceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/yg;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lc8/yg;

    .prologue
    .line 339
    iput-object p1, p0, Lc8/xg;->this$0:Lc8/yg;

    iput-object p2, p0, Lc8/xg;->val$sceneRoot:Landroid/view/ViewGroup;

    iput-object p3, p0, Lc8/xg;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lc8/xg;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 342
    iget-object v0, p0, Lc8/xg;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Lc8/Hh;->createFrom(Landroid/view/View;)Lc8/Hh;

    move-result-object v0

    iget-object v1, p0, Lc8/xg;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lc8/Hh;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 344
    iget-object v0, p0, Lc8/xg;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    return-void
.end method
