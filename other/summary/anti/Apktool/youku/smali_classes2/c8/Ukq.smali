.class public Lc8/Ukq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vkq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Vkq;

.field final synthetic val$s:Lc8/Nlq;

.field final synthetic val$set:Lc8/SBq;

.field final synthetic val$w:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/Vkq;Lc8/SBq;Lc8/Zlq;Lc8/Nlq;)V
    .locals 0

    .prologue
    .line 1225
    iput-object p1, p0, Lc8/Ukq;->this$1:Lc8/Vkq;

    iput-object p2, p0, Lc8/Ukq;->val$set:Lc8/SBq;

    iput-object p3, p0, Lc8/Ukq;->val$w:Lc8/Zlq;

    iput-object p4, p0, Lc8/Ukq;->val$s:Lc8/Nlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 6

    .prologue
    .line 1230
    iget-object v0, p0, Lc8/Ukq;->val$set:Lc8/SBq;

    iget-object v1, p0, Lc8/Ukq;->val$w:Lc8/Zlq;

    new-instance v2, Lc8/Skq;

    invoke-direct {v2, p0}, Lc8/Skq;-><init>(Lc8/Ukq;)V

    iget-object v3, p0, Lc8/Ukq;->this$1:Lc8/Vkq;

    iget-wide v4, v3, Lc8/Vkq;->val$delay:J

    iget-object v3, p0, Lc8/Ukq;->this$1:Lc8/Vkq;

    iget-object v3, v3, Lc8/Vkq;->val$unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 1240
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1244
    iget-object v0, p0, Lc8/Ukq;->this$1:Lc8/Vkq;

    iget-boolean v0, v0, Lc8/Vkq;->val$delayError:Z

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lc8/Ukq;->val$set:Lc8/SBq;

    iget-object v1, p0, Lc8/Ukq;->val$w:Lc8/Zlq;

    new-instance v2, Lc8/Tkq;

    invoke-direct {v2, p0, p1}, Lc8/Tkq;-><init>(Lc8/Ukq;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lc8/Ukq;->this$1:Lc8/Vkq;

    iget-wide v4, v3, Lc8/Vkq;->val$delay:J

    iget-object v3, p0, Lc8/Ukq;->this$1:Lc8/Vkq;

    iget-object v3, v3, Lc8/Vkq;->val$unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 1258
    :goto_0
    return-void

    .line 1256
    :cond_0
    iget-object v0, p0, Lc8/Ukq;->val$s:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 2
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 1262
    iget-object v0, p0, Lc8/Ukq;->val$set:Lc8/SBq;

    invoke-virtual {v0, p1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 1263
    iget-object v0, p0, Lc8/Ukq;->val$s:Lc8/Nlq;

    iget-object v1, p0, Lc8/Ukq;->val$set:Lc8/SBq;

    invoke-interface {v0, v1}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 1264
    return-void
.end method
