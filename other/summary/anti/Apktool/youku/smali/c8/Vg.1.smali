.class public Lc8/Vg;
.super Ljava/lang/Object;
.source "TransitionIcs.java"

# interfaces
.implements Lc8/sh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompatListener"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/ah;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/Xg;


# direct methods
.method constructor <init>(Lc8/Xg;)V
    .locals 1

    .prologue
    .line 241
    iput-object p1, p0, Lc8/Vg;->this$0:Lc8/Xg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Vg;->mListeners:Ljava/util/ArrayList;

    .line 242
    return-void
.end method


# virtual methods
.method public addListener(Lc8/ah;)V
    .locals 1
    .param p1, "listener"    # Lc8/ah;

    .prologue
    .line 245
    iget-object v0, p0, Lc8/Vg;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lc8/Vg;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onTransitionCancel(Lc8/uh;)V
    .locals 3
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 272
    iget-object v1, p0, Lc8/Vg;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ah;

    .line 273
    .local v0, "listener":Lc8/ah;
    iget-object v2, p0, Lc8/Vg;->this$0:Lc8/Xg;

    iget-object v2, v2, Lc8/Xg;->mExternalTransition:Lc8/Zg;

    invoke-interface {v0, v2}, Lc8/ah;->onTransitionCancel(Lc8/Zg;)V

    goto :goto_0

    .line 275
    .end local v0    # "listener":Lc8/ah;
    :cond_0
    return-void
.end method

.method public onTransitionEnd(Lc8/uh;)V
    .locals 3
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 265
    iget-object v1, p0, Lc8/Vg;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ah;

    .line 266
    .local v0, "listener":Lc8/ah;
    iget-object v2, p0, Lc8/Vg;->this$0:Lc8/Xg;

    iget-object v2, v2, Lc8/Xg;->mExternalTransition:Lc8/Zg;

    invoke-interface {v0, v2}, Lc8/ah;->onTransitionEnd(Lc8/Zg;)V

    goto :goto_0

    .line 268
    .end local v0    # "listener":Lc8/ah;
    :cond_0
    return-void
.end method

.method public onTransitionPause(Lc8/uh;)V
    .locals 3
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 279
    iget-object v1, p0, Lc8/Vg;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ah;

    .line 280
    .local v0, "listener":Lc8/ah;
    iget-object v2, p0, Lc8/Vg;->this$0:Lc8/Xg;

    iget-object v2, v2, Lc8/Xg;->mExternalTransition:Lc8/Zg;

    invoke-interface {v0, v2}, Lc8/ah;->onTransitionPause(Lc8/Zg;)V

    goto :goto_0

    .line 282
    .end local v0    # "listener":Lc8/ah;
    :cond_0
    return-void
.end method

.method public onTransitionResume(Lc8/uh;)V
    .locals 3
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 286
    iget-object v1, p0, Lc8/Vg;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ah;

    .line 287
    .local v0, "listener":Lc8/ah;
    iget-object v2, p0, Lc8/Vg;->this$0:Lc8/Xg;

    iget-object v2, v2, Lc8/Xg;->mExternalTransition:Lc8/Zg;

    invoke-interface {v0, v2}, Lc8/ah;->onTransitionResume(Lc8/Zg;)V

    goto :goto_0

    .line 289
    .end local v0    # "listener":Lc8/ah;
    :cond_0
    return-void
.end method

.method public onTransitionStart(Lc8/uh;)V
    .locals 3
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 258
    iget-object v1, p0, Lc8/Vg;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ah;

    .line 259
    .local v0, "listener":Lc8/ah;
    iget-object v2, p0, Lc8/Vg;->this$0:Lc8/Xg;

    iget-object v2, v2, Lc8/Xg;->mExternalTransition:Lc8/Zg;

    invoke-interface {v0, v2}, Lc8/ah;->onTransitionStart(Lc8/Zg;)V

    goto :goto_0

    .line 261
    .end local v0    # "listener":Lc8/ah;
    :cond_0
    return-void
.end method

.method public removeListener(Lc8/ah;)V
    .locals 1
    .param p1, "listener"    # Lc8/ah;

    .prologue
    .line 249
    iget-object v0, p0, Lc8/Vg;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method
