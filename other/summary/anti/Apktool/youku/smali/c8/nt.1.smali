.class public Lc8/nt;
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

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lc8/xt;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xt;

    .prologue
    .line 141
    iput-object p1, p0, Lc8/nt;->this$0:Lc8/xt;

    iput-object p2, p0, Lc8/nt;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lc8/nt;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ut;

    .line 145
    .local v0, "change":Lc8/ut;
    iget-object v2, p0, Lc8/nt;->this$0:Lc8/xt;

    invoke-virtual {v2, v0}, Lc8/xt;->animateChangeImpl(Lc8/ut;)V

    goto :goto_0

    .line 147
    .end local v0    # "change":Lc8/ut;
    :cond_0
    iget-object v1, p0, Lc8/nt;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v1, p0, Lc8/nt;->this$0:Lc8/xt;

    iget-object v1, v1, Lc8/xt;->mChangesList:Ljava/util/ArrayList;

    iget-object v2, p0, Lc8/nt;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method
