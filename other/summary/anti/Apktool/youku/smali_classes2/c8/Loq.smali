.class public Lc8/Loq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMerge.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Moq;->onNext(Lc8/Plq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field d:Lc8/Pmq;

.field innerDone:Z

.field final synthetic this$0:Lc8/Moq;


# direct methods
.method constructor <init>(Lc8/Moq;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lc8/Loq;->this$0:Lc8/Moq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 130
    iget-boolean v0, p0, Lc8/Loq;->innerDone:Z

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Loq;->innerDone:Z

    .line 134
    iget-object v0, p0, Lc8/Loq;->this$0:Lc8/Moq;

    iget-object v0, v0, Lc8/Moq;->set:Lc8/SBq;

    iget-object v1, p0, Lc8/Loq;->d:Lc8/Pmq;

    invoke-virtual {v0, v1}, Lc8/SBq;->remove(Lc8/Pmq;)V

    .line 136
    iget-object v0, p0, Lc8/Loq;->this$0:Lc8/Moq;

    invoke-virtual {v0}, Lc8/Moq;->terminate()V

    .line 138
    iget-object v0, p0, Lc8/Loq;->this$0:Lc8/Moq;

    iget-boolean v0, v0, Lc8/Moq;->done:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lc8/Loq;->this$0:Lc8/Moq;

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lc8/Moq;->access$100(Lc8/Moq;J)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    iget-boolean v0, p0, Lc8/Loq;->innerDone:Z

    if-eqz v0, :cond_1

    .line 113
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Loq;->innerDone:Z

    .line 117
    iget-object v0, p0, Lc8/Loq;->this$0:Lc8/Moq;

    iget-object v0, v0, Lc8/Moq;->set:Lc8/SBq;

    iget-object v1, p0, Lc8/Loq;->d:Lc8/Pmq;

    invoke-virtual {v0, v1}, Lc8/SBq;->remove(Lc8/Pmq;)V

    .line 119
    iget-object v0, p0, Lc8/Loq;->this$0:Lc8/Moq;

    invoke-virtual {v0}, Lc8/Moq;->getOrCreateErrors()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lc8/Loq;->this$0:Lc8/Moq;

    invoke-virtual {v0}, Lc8/Moq;->terminate()V

    .line 123
    iget-object v0, p0, Lc8/Loq;->this$0:Lc8/Moq;

    iget-boolean v0, v0, Lc8/Moq;->delayErrors:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Loq;->this$0:Lc8/Moq;

    iget-boolean v0, v0, Lc8/Moq;->done:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lc8/Loq;->this$0:Lc8/Moq;

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lc8/Moq;->access$000(Lc8/Moq;J)V

    goto :goto_0
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 106
    iput-object p1, p0, Lc8/Loq;->d:Lc8/Pmq;

    .line 107
    iget-object v0, p0, Lc8/Loq;->this$0:Lc8/Moq;

    iget-object v0, v0, Lc8/Moq;->set:Lc8/SBq;

    invoke-virtual {v0, p1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 108
    return-void
.end method
