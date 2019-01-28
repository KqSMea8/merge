.class public Lc8/EBq;
.super Ljava/lang/Object;
.source "SerializedSubject.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/FBq;-><init>(Lc8/GBq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$actual:Lc8/GBq;


# direct methods
.method constructor <init>(Lc8/GBq;)V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lc8/EBq;, "Lrx/subjects/SerializedSubject.1;"
    iput-object p1, p0, Lc8/EBq;->val$actual:Lc8/GBq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lc8/EBq;, "Lrx/subjects/SerializedSubject.1;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    iget-object v0, p0, Lc8/EBq;->val$actual:Lc8/GBq;

    invoke-virtual {v0, p1}, Lc8/GBq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 48
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lc8/EBq;, "Lrx/subjects/SerializedSubject.1;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/EBq;->call(Lc8/Omq;)V

    return-void
.end method
