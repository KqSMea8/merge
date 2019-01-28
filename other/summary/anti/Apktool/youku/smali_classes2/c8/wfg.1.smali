.class public Lc8/wfg;
.super Lc8/Ffg;
.source "WXSwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gfg;->startRefresh(I)V
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
    .line 552
    iput-object p1, p0, Lc8/wfg;->this$0:Lc8/Gfg;

    invoke-direct {p0}, Lc8/Ffg;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 555
    iget-object v0, p0, Lc8/wfg;->this$0:Lc8/Gfg;

    invoke-static {v0}, Lc8/Gfg;->access$000(Lc8/Gfg;)Lc8/ufg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ufg;->startAnimation()V

    .line 557
    iget-object v0, p0, Lc8/wfg;->this$0:Lc8/Gfg;

    invoke-static {v0}, Lc8/Gfg;->access$200(Lc8/Gfg;)Lc8/Efg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lc8/wfg;->this$0:Lc8/Gfg;

    invoke-static {v0}, Lc8/Gfg;->access$200(Lc8/Gfg;)Lc8/Efg;

    move-result-object v0

    invoke-interface {v0}, Lc8/Efg;->onRefresh()V

    .line 560
    :cond_0
    return-void
.end method
