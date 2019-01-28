.class public Lc8/rtq;
.super Lc8/Omq;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/stq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/stq;

.field final synthetic val$child:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/stq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 100
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/rtq;->this$0:Lc8/stq;

    iput-object p3, p0, Lc8/rtq;->val$child:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lc8/rtq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 112
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    iget-object v0, p0, Lc8/rtq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/rtq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 104
    return-void
.end method
