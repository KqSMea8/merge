.class public Lc8/Jqq;
.super Lc8/Omq;
.source "OnSubscribeSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Kqq;->call(Lc8/Nmq;)V
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
.field private emission:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private emittedTooMany:Z

.field private itemEmitted:Z

.field final synthetic this$0:Lc8/Kqq;

.field final synthetic val$child:Lc8/Nmq;


# direct methods
.method constructor <init>(Lc8/Kqq;Lc8/Nmq;)V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lc8/Jqq;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    iput-object p1, p0, Lc8/Jqq;->this$0:Lc8/Kqq;

    iput-object p2, p0, Lc8/Jqq;->val$child:Lc8/Nmq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 51
    .local p0, "this":Lc8/Jqq;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    iget-boolean v0, p0, Lc8/Jqq;->emittedTooMany:Z

    if-nez v0, :cond_0

    .line 54
    iget-boolean v0, p0, Lc8/Jqq;->itemEmitted:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lc8/Jqq;->val$child:Lc8/Nmq;

    iget-object v1, p0, Lc8/Jqq;->emission:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lc8/Jqq;->val$child:Lc8/Nmq;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string/jumbo v2, "Observable emitted no items"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    .local p0, "this":Lc8/Jqq;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    iget-object v0, p0, Lc8/Jqq;->val$child:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {p0}, Lc8/Jqq;->unsubscribe()V

    .line 66
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Jqq;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 70
    iget-boolean v0, p0, Lc8/Jqq;->itemEmitted:Z

    if-eqz v0, :cond_0

    .line 71
    iput-boolean v1, p0, Lc8/Jqq;->emittedTooMany:Z

    .line 72
    iget-object v0, p0, Lc8/Jqq;->val$child:Lc8/Nmq;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Observable emitted too many elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {p0}, Lc8/Jqq;->unsubscribe()V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-boolean v1, p0, Lc8/Jqq;->itemEmitted:Z

    .line 76
    iput-object p1, p0, Lc8/Jqq;->emission:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Lc8/Jqq;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lc8/Jqq;->request(J)V

    .line 47
    return-void
.end method
