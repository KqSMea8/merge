.class public Lc8/jlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->onErrorComplete(Lc8/Inq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$predicate:Lc8/Inq;


# direct methods
.method constructor <init>(Lc8/Plq;Lc8/Inq;)V
    .locals 0

    .prologue
    .line 1670
    iput-object p1, p0, Lc8/jlq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/jlq;->val$predicate:Lc8/Inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 2
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 1673
    iget-object v0, p0, Lc8/jlq;->this$0:Lc8/Plq;

    new-instance v1, Lc8/ilq;

    invoke-direct {v1, p0, p1}, Lc8/ilq;-><init>(Lc8/jlq;Lc8/Nlq;)V

    invoke-virtual {v0, v1}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 1705
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1670
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/jlq;->call(Lc8/Nlq;)V

    return-void
.end method
