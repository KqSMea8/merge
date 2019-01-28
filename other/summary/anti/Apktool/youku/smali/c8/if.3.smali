.class public Lc8/if;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ValueAnimatorCompatImplHoneycombMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jf;->addListener(Lc8/bf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jf;

.field final synthetic val$listener:Lc8/bf;


# direct methods
.method constructor <init>(Lc8/jf;Lc8/bf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jf;

    .prologue
    .line 63
    iput-object p1, p0, Lc8/if;->this$0:Lc8/jf;

    iput-object p2, p0, Lc8/if;->val$listener:Lc8/bf;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 76
    iget-object v0, p0, Lc8/if;->val$listener:Lc8/bf;

    invoke-interface {v0}, Lc8/bf;->onAnimationCancel()V

    .line 77
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 71
    iget-object v0, p0, Lc8/if;->val$listener:Lc8/bf;

    invoke-interface {v0}, Lc8/bf;->onAnimationEnd()V

    .line 72
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 66
    iget-object v0, p0, Lc8/if;->val$listener:Lc8/bf;

    invoke-interface {v0}, Lc8/bf;->onAnimationStart()V

    .line 67
    return-void
.end method
