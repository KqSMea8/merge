.class public Lc8/ph;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TransitionPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uh;->animate(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uh;


# direct methods
.method constructor <init>(Lc8/uh;)V
    .locals 0
    .param p1, "this$0"    # Lc8/uh;

    .prologue
    .line 947
    iput-object p1, p0, Lc8/ph;->this$0:Lc8/uh;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 950
    iget-object v0, p0, Lc8/ph;->this$0:Lc8/uh;

    invoke-virtual {v0}, Lc8/uh;->end()V

    .line 951
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 952
    return-void
.end method
