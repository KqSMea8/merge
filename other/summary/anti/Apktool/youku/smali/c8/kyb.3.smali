.class public final Lc8/kyb;
.super Ljava/lang/Object;
.source "WorkFlow.java"

# interfaces
.implements Lc8/Hxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lyb;->make(Ljava/lang/Object;)Lc8/dyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Hxb",
        "<",
        "Ljava/lang/Void;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$r:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lc8/kyb;->val$r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/kyb;->call(Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lc8/kyb;->val$r:Ljava/lang/Object;

    return-object v0
.end method
