.class public Lc8/wg;
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


# direct methods
.method constructor <init>(Lc8/yg;)V
    .locals 0
    .param p1, "this$0"    # Lc8/yg;

    .prologue
    .line 306
    iput-object p1, p0, Lc8/wg;->this$0:Lc8/yg;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 310
    return-void
.end method
