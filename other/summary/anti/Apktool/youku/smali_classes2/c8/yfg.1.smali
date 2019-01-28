.class public Lc8/yfg;
.super Lc8/Ffg;
.source "WXSwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gfg;->resetHeaderView(I)V
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
    .line 583
    iput-object p1, p0, Lc8/yfg;->this$0:Lc8/Gfg;

    invoke-direct {p0}, Lc8/Ffg;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 586
    iget-object v0, p0, Lc8/yfg;->this$0:Lc8/Gfg;

    invoke-static {v0}, Lc8/Gfg;->access$300(Lc8/Gfg;)V

    .line 588
    return-void
.end method
