.class public Lc8/wwq;
.super Lc8/Omq;
.source "SingleOnSubscribeDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xwq;->call(Lc8/Nmq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lc8/xwq;

.field final synthetic val$child:Lc8/Nmq;

.field final synthetic val$serial:Lc8/YBq;


# direct methods
.method constructor <init>(Lc8/xwq;Lc8/Nmq;Lc8/YBq;)V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Lc8/wwq;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.2;"
    iput-object p1, p0, Lc8/wwq;->this$0:Lc8/xwq;

    iput-object p2, p0, Lc8/wwq;->val$child:Lc8/Nmq;

    iput-object p3, p0, Lc8/wwq;->val$serial:Lc8/YBq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 75
    .local p0, "this":Lc8/wwq;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.2;"
    iget-boolean v0, p0, Lc8/wwq;->done:Z

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/wwq;->done:Z

    .line 79
    iget-object v0, p0, Lc8/wwq;->val$serial:Lc8/YBq;

    iget-object v1, p0, Lc8/wwq;->val$child:Lc8/Nmq;

    invoke-virtual {v0, v1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 81
    iget-object v0, p0, Lc8/wwq;->this$0:Lc8/xwq;

    iget-object v0, v0, Lc8/xwq;->main:Lc8/Mmq;

    iget-object v1, p0, Lc8/wwq;->val$child:Lc8/Nmq;

    invoke-virtual {v0, v1}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    .local p0, "this":Lc8/wwq;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.2;"
    iget-boolean v0, p0, Lc8/wwq;->done:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/wwq;->done:Z

    .line 70
    iget-object v0, p0, Lc8/wwq;->val$child:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 60
    .local p0, "this":Lc8/wwq;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.2;"
    invoke-virtual {p0}, Lc8/wwq;->onCompleted()V

    .line 61
    return-void
.end method
