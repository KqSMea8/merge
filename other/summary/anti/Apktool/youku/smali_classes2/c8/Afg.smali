.class public Lc8/Afg;
.super Lc8/Ffg;
.source "WXSwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gfg;->startLoadmore(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gfg;


# direct methods
.method constructor <init>(Lc8/Gfg;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lc8/Afg;->this$0:Lc8/Gfg;

    invoke-direct {p0}, Lc8/Ffg;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 620
    iget-object v0, p0, Lc8/Afg;->this$0:Lc8/Gfg;

    invoke-static {v0}, Lc8/Gfg;->access$400(Lc8/Gfg;)Lc8/ufg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ufg;->startAnimation()V

    .line 622
    iget-object v0, p0, Lc8/Afg;->this$0:Lc8/Gfg;

    invoke-static {v0}, Lc8/Gfg;->access$500(Lc8/Gfg;)Lc8/Dfg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lc8/Afg;->this$0:Lc8/Gfg;

    invoke-static {v0}, Lc8/Gfg;->access$500(Lc8/Gfg;)Lc8/Dfg;

    move-result-object v0

    invoke-interface {v0}, Lc8/Dfg;->onLoading()V

    .line 625
    :cond_0
    return-void
.end method
