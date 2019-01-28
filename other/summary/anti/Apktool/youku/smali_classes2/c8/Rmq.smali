.class public Lc8/Rmq;
.super Ljava/lang/Object;
.source "MainThreadSubscription.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Smq;->unsubscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Smq;


# direct methods
.method constructor <init>(Lc8/Smq;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lc8/Rmq;->this$0:Lc8/Smq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lc8/Rmq;->this$0:Lc8/Smq;

    invoke-virtual {v0}, Lc8/Smq;->onUnsubscribe()V

    .line 77
    return-void
.end method
