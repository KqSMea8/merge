.class public Lc8/klq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/llq;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lc8/llq;


# direct methods
.method constructor <init>(Lc8/llq;)V
    .locals 0

    .prologue
    .line 1749
    iput-object p1, p0, Lc8/klq;->this$2:Lc8/llq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Lc8/klq;->this$2:Lc8/llq;

    iget-object v0, v0, Lc8/llq;->val$s:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V

    .line 1754
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1758
    iget-object v0, p0, Lc8/klq;->this$2:Lc8/llq;

    iget-object v0, v0, Lc8/llq;->val$s:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 1759
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 1763
    iget-object v0, p0, Lc8/klq;->this$2:Lc8/llq;

    iget-object v0, v0, Lc8/llq;->val$sd:Lc8/YBq;

    invoke-virtual {v0, p1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 1764
    return-void
.end method
