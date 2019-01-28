.class public Lc8/bfg;
.super Ljava/lang/Object;
.source "WXRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/cfg;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/cfg;


# direct methods
.method constructor <init>(Lc8/cfg;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lc8/bfg;->this$1:Lc8/cfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lc8/bfg;->this$1:Lc8/cfg;

    iget v0, v0, Lc8/cfg;->val$orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lc8/bfg;->this$1:Lc8/cfg;

    iget-object v0, v0, Lc8/cfg;->this$0:Lc8/efg;

    iget-object v1, p0, Lc8/bfg;->this$1:Lc8/cfg;

    iget v1, v1, Lc8/cfg;->val$offset:I

    invoke-virtual {v0, v2, v1}, Lc8/efg;->smoothScrollBy(II)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lc8/bfg;->this$1:Lc8/cfg;

    iget-object v0, v0, Lc8/cfg;->this$0:Lc8/efg;

    iget-object v1, p0, Lc8/bfg;->this$1:Lc8/cfg;

    iget v1, v1, Lc8/cfg;->val$offset:I

    invoke-virtual {v0, v1, v2}, Lc8/efg;->smoothScrollBy(II)V

    goto :goto_0
.end method
