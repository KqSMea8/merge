.class public Lc8/zr;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Er;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Er;


# direct methods
.method constructor <init>(Lc8/Er;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Er;

    .prologue
    .line 95
    iput-object p1, p0, Lc8/zr;->this$0:Lc8/Er;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lc8/zr;->this$0:Lc8/Er;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/Er;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 105
    iget-object v0, p0, Lc8/zr;->this$0:Lc8/Er;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/Er;->mAnimatingForFling:Z

    .line 106
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lc8/zr;->this$0:Lc8/Er;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/Er;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 99
    iget-object v0, p0, Lc8/zr;->this$0:Lc8/Er;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/Er;->mAnimatingForFling:Z

    .line 100
    return-void
.end method
