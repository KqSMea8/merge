.class public Lc8/mt;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xt;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xt;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lc8/xt;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xt;

    .prologue
    .line 117
    iput-object p1, p0, Lc8/mt;->this$0:Lc8/xt;

    iput-object p2, p0, Lc8/mt;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 120
    iget-object v0, p0, Lc8/mt;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/vt;

    .line 121
    .local v6, "moveInfo":Lc8/vt;
    iget-object v0, p0, Lc8/mt;->this$0:Lc8/xt;

    iget-object v1, v6, Lc8/vt;->holder:Lc8/Qv;

    iget v2, v6, Lc8/vt;->fromX:I

    iget v3, v6, Lc8/vt;->fromY:I

    iget v4, v6, Lc8/vt;->toX:I

    iget v5, v6, Lc8/vt;->toY:I

    invoke-virtual/range {v0 .. v5}, Lc8/xt;->animateMoveImpl(Lc8/Qv;IIII)V

    goto :goto_0

    .line 124
    .end local v6    # "moveInfo":Lc8/vt;
    :cond_0
    iget-object v0, p0, Lc8/mt;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v0, p0, Lc8/mt;->this$0:Lc8/xt;

    iget-object v0, v0, Lc8/xt;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lc8/mt;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method
