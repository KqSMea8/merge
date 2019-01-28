.class public Lc8/Woq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeTimeout.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xoq;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Xoq;


# direct methods
.method constructor <init>(Lc8/Xoq;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lc8/Woq;->this$1:Lc8/Xoq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lc8/Woq;->this$1:Lc8/Xoq;

    iget-object v0, v0, Lc8/Xoq;->val$set:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->unsubscribe()V

    .line 79
    iget-object v0, p0, Lc8/Woq;->this$1:Lc8/Xoq;

    iget-object v0, v0, Lc8/Xoq;->val$s:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V

    .line 80
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Woq;->this$1:Lc8/Xoq;

    iget-object v0, v0, Lc8/Xoq;->val$set:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->unsubscribe()V

    .line 73
    iget-object v0, p0, Lc8/Woq;->this$1:Lc8/Xoq;

    iget-object v0, v0, Lc8/Xoq;->val$s:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 67
    iget-object v0, p0, Lc8/Woq;->this$1:Lc8/Xoq;

    iget-object v0, v0, Lc8/Xoq;->val$set:Lc8/SBq;

    invoke-virtual {v0, p1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 68
    return-void
.end method
