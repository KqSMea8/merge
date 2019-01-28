.class public Lc8/ot;
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

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lc8/xt;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xt;

    .prologue
    .line 164
    iput-object p1, p0, Lc8/ot;->this$0:Lc8/xt;

    iput-object p2, p0, Lc8/ot;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lc8/ot;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Qv;

    .line 168
    .local v0, "holder":Lc8/Qv;
    iget-object v2, p0, Lc8/ot;->this$0:Lc8/xt;

    invoke-virtual {v2, v0}, Lc8/xt;->animateAddImpl(Lc8/Qv;)V

    goto :goto_0

    .line 170
    .end local v0    # "holder":Lc8/Qv;
    :cond_0
    iget-object v1, p0, Lc8/ot;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 171
    iget-object v1, p0, Lc8/ot;->this$0:Lc8/xt;

    iget-object v1, v1, Lc8/xt;->mAdditionsList:Ljava/util/ArrayList;

    iget-object v2, p0, Lc8/ot;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method
