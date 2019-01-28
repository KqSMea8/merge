.class public Lc8/jcp;
.super Ljava/lang/Object;
.source "YoukuSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoSeek"
.end annotation


# instance fields
.field private alive:Z

.field final synthetic this$0:Lc8/kcp;


# direct methods
.method private constructor <init>(Lc8/kcp;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lc8/jcp;->this$0:Lc8/kcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/jcp;->alive:Z

    return-void
.end method

.method synthetic constructor <init>(Lc8/kcp;Lc8/icp;)V
    .locals 0
    .param p1, "x0"    # Lc8/kcp;
    .param p2, "x1"    # Lc8/icp;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lc8/jcp;-><init>(Lc8/kcp;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lc8/jcp;->this$0:Lc8/kcp;

    iget-object v1, p0, Lc8/jcp;->this$0:Lc8/kcp;

    invoke-static {v1}, Lc8/kcp;->access$100(Lc8/kcp;)I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/kcp;->setProgress(I)V

    .line 62
    iget-object v0, p0, Lc8/jcp;->this$0:Lc8/kcp;

    invoke-static {v0}, Lc8/kcp;->access$100(Lc8/kcp;)I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    .line 63
    iget-object v0, p0, Lc8/jcp;->this$0:Lc8/kcp;

    invoke-static {v0}, Lc8/kcp;->access$108(Lc8/kcp;)I

    .line 67
    :goto_0
    iget-boolean v0, p0, Lc8/jcp;->alive:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lc8/jcp;->this$0:Lc8/kcp;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Lc8/kcp;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lc8/jcp;->this$0:Lc8/kcp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/kcp;->access$102(Lc8/kcp;I)I

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/jcp;->alive:Z

    .line 76
    return-void
.end method
