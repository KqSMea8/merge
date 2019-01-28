.class public Lc8/Nkq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Okq;->onSubscribe(Lc8/Pmq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Okq;


# direct methods
.method constructor <init>(Lc8/Okq;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lc8/Nkq;->this$1:Lc8/Okq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lc8/Nkq;->this$1:Lc8/Okq;

    invoke-virtual {v0}, Lc8/Okq;->dispose()V

    .line 970
    return-void
.end method
