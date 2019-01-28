.class public abstract Lc8/Txb;
.super Ljava/lang/Object;
.source "WorkFlow.java"

# interfaces
.implements Lc8/Hxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EndAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Hxb",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 634
    .local p0, "this":Lc8/Txb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$EndAction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 634
    .local p0, "this":Lc8/Txb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$EndAction<TT;>;"
    invoke-virtual {p0, p1}, Lc8/Txb;->call(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lc8/Txb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$EndAction<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lc8/Txb;->end(Ljava/lang/Object;)V

    .line 639
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract end(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
