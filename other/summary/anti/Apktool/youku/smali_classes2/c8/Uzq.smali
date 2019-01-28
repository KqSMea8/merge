.class public Lc8/Uzq;
.super Ljava/lang/Object;
.source "ConnectableObservable.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vzq;->connect()Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<",
        "Lc8/Pmq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Vzq;

.field final synthetic val$out:[Lc8/Pmq;


# direct methods
.method constructor <init>(Lc8/Vzq;[Lc8/Pmq;)V
    .locals 0

    .prologue
    .line 53
    .local p0, "this":Lc8/Uzq;, "Lrx/observables/ConnectableObservable.1;"
    iput-object p1, p0, Lc8/Uzq;->this$0:Lc8/Vzq;

    iput-object p2, p0, Lc8/Uzq;->val$out:[Lc8/Pmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Pmq;)V
    .locals 2
    .param p1, "t1"    # Lc8/Pmq;

    .prologue
    .line 56
    .local p0, "this":Lc8/Uzq;, "Lrx/observables/ConnectableObservable.1;"
    iget-object v0, p0, Lc8/Uzq;->val$out:[Lc8/Pmq;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 57
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    .local p0, "this":Lc8/Uzq;, "Lrx/observables/ConnectableObservable.1;"
    check-cast p1, Lc8/Pmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Uzq;->call(Lc8/Pmq;)V

    return-void
.end method
