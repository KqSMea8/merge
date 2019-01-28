.class public final Lc8/SUb;
.super Ljava/lang/Object;
.source "ThreadMsg.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/motu/watch/stack/ThreadMsg;->New(Ljava/lang/String;Z)Lcom/alibaba/motu/watch/stack/ThreadMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$mainThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lc8/SUb;->val$mainThread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Thread;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Thread;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/SUb;->compare(Ljava/lang/Thread;Ljava/lang/Thread;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Thread;Ljava/lang/Thread;)I
    .locals 2
    .param p1, "lhs"    # Ljava/lang/Thread;
    .param p2, "rhs"    # Ljava/lang/Thread;

    .prologue
    .line 64
    if-ne p1, p2, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lc8/SUb;->val$mainThread:Ljava/lang/Thread;

    if-ne p1, v0, :cond_1

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lc8/SUb;->val$mainThread:Ljava/lang/Thread;

    if-ne p2, v0, :cond_2

    .line 69
    const/4 v0, -0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
