.class public Lc8/vwq;
.super Lc8/Nmq;
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
        "Lc8/Nmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xwq;

.field final synthetic val$subscriber:Lc8/Nmq;


# direct methods
.method constructor <init>(Lc8/xwq;Lc8/Nmq;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lc8/vwq;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.1;"
    iput-object p1, p0, Lc8/vwq;->this$0:Lc8/xwq;

    iput-object p2, p0, Lc8/vwq;->val$subscriber:Lc8/Nmq;

    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    .local p0, "this":Lc8/vwq;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.1;"
    iget-object v0, p0, Lc8/vwq;->val$subscriber:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lc8/vwq;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/vwq;->val$subscriber:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
