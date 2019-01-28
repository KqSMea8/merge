.class public Lc8/Ar;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 109
    iput-object p1, p0, Lc8/Ar;->this$0:Lc8/Er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lc8/Ar;->this$0:Lc8/Er;

    invoke-virtual {v0}, Lc8/Er;->haltActionBarHideOffsetAnimations()V

    .line 112
    iget-object v0, p0, Lc8/Ar;->this$0:Lc8/Er;

    iget-object v1, p0, Lc8/Ar;->this$0:Lc8/Er;

    iget-object v1, v1, Lc8/Er;->mActionBarTop:Lc8/wr;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lc8/Ar;->this$0:Lc8/Er;

    iget-object v2, v2, Lc8/Er;->mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 113
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Lc8/Er;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 114
    return-void
.end method
