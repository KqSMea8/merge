.class public Lc8/zh;
.super Lc8/th;
.source "TransitionSetPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bh;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bh;

.field final synthetic val$nextTransition:Lc8/uh;


# direct methods
.method constructor <init>(Lc8/Bh;Lc8/uh;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Bh;

    .prologue
    .line 199
    iput-object p1, p0, Lc8/zh;->this$0:Lc8/Bh;

    iput-object p2, p0, Lc8/zh;->val$nextTransition:Lc8/uh;

    invoke-direct {p0}, Lc8/th;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lc8/uh;)V
    .locals 1
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 202
    iget-object v0, p0, Lc8/zh;->val$nextTransition:Lc8/uh;

    invoke-virtual {v0}, Lc8/uh;->runAnimators()V

    .line 203
    invoke-virtual {p1, p0}, Lc8/uh;->removeListener(Lc8/sh;)Lc8/uh;

    .line 204
    return-void
.end method
