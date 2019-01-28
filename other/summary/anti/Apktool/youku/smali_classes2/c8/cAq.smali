.class public final Lc8/cAq;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eAq;->createStateless(Lc8/inq;Lc8/hnq;)Lc8/eAq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$onUnsubscribe:Lc8/hnq;


# direct methods
.method constructor <init>(Lc8/hnq;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lc8/cAq;->val$onUnsubscribe:Lc8/hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 264
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/cAq;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public call(Ljava/lang/Void;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Void;

    .prologue
    .line 267
    iget-object v0, p0, Lc8/cAq;->val$onUnsubscribe:Lc8/hnq;

    invoke-interface {v0}, Lc8/hnq;->call()V

    .line 268
    return-void
.end method
