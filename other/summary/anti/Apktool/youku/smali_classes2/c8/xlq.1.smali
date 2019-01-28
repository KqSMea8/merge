.class public Lc8/xlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->toSingle(Lc8/Hnq;)Lc8/Mmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$completionValueFunc0:Lc8/Hnq;


# direct methods
.method constructor <init>(Lc8/Plq;Lc8/Hnq;)V
    .locals 0

    .prologue
    .line 2260
    iput-object p1, p0, Lc8/xlq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/xlq;->val$completionValueFunc0:Lc8/Hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2263
    .local p1, "s":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v0, p0, Lc8/xlq;->this$0:Lc8/Plq;

    new-instance v1, Lc8/wlq;

    invoke-direct {v1, p0, p1}, Lc8/wlq;-><init>(Lc8/xlq;Lc8/Nmq;)V

    invoke-virtual {v0, v1}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 2294
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2260
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/xlq;->call(Lc8/Nmq;)V

    return-void
.end method
