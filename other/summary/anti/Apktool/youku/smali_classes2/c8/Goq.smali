.class public final Lc8/Goq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeConcat.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hoq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConcatInnerSubscriber"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hoq;


# direct methods
.method constructor <init>(Lc8/Hoq;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lc8/Goq;->this$0:Lc8/Hoq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lc8/Goq;->this$0:Lc8/Hoq;

    invoke-virtual {v0}, Lc8/Hoq;->innerComplete()V

    .line 149
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 143
    iget-object v0, p0, Lc8/Goq;->this$0:Lc8/Hoq;

    invoke-virtual {v0, p1}, Lc8/Hoq;->innerError(Ljava/lang/Throwable;)V

    .line 144
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 138
    iget-object v0, p0, Lc8/Goq;->this$0:Lc8/Hoq;

    iget-object v0, v0, Lc8/Hoq;->sr:Lc8/YBq;

    invoke-virtual {v0, p1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 139
    return-void
.end method
