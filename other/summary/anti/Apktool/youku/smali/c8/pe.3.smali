.class public Lc8/pe;
.super Lc8/Ye;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/re;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/re;


# direct methods
.method constructor <init>(Lc8/re;)V
    .locals 0
    .param p1, "this$0"    # Lc8/re;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/pe;->this$0:Lc8/re;

    invoke-direct {p0}, Lc8/Ye;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lc8/ef;)V
    .locals 2
    .param p1, "animator"    # Lc8/ef;

    .prologue
    .line 34
    iget-object v0, p0, Lc8/pe;->this$0:Lc8/re;

    iget-object v0, v0, Lc8/re;->mRunningAnimator:Lc8/ef;

    if-ne v0, p1, :cond_0

    .line 35
    iget-object v0, p0, Lc8/pe;->this$0:Lc8/re;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/re;->mRunningAnimator:Lc8/ef;

    .line 37
    :cond_0
    return-void
.end method
