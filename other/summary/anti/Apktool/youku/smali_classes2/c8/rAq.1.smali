.class public final Lc8/rAq;
.super Lc8/Omq;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wAq;->from(Lc8/Wlq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$o:Lc8/Wlq;


# direct methods
.method constructor <init>(Lc8/Wlq;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lc8/rAq;->val$o:Lc8/Wlq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/rAq;->val$o:Lc8/Wlq;

    invoke-interface {v0}, Lc8/Wlq;->onCompleted()V

    .line 56
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    iget-object v0, p0, Lc8/rAq;->val$o:Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    .line 61
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
    .line 65
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/rAq;->val$o:Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
