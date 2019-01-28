.class public Lc8/Bmq;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->lift(Lc8/Tlq;)Lc8/Mmq;
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
.field final synthetic this$0:Lc8/Mmq;

.field final synthetic val$lift:Lc8/Tlq;


# direct methods
.method constructor <init>(Lc8/Mmq;Lc8/Tlq;)V
    .locals 0

    .prologue
    .line 163
    .local p0, "this":Lc8/Bmq;, "Lrx/Single.2;"
    iput-object p1, p0, Lc8/Bmq;->this$0:Lc8/Mmq;

    iput-object p2, p0, Lc8/Bmq;->val$lift:Lc8/Tlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lc8/Bmq;, "Lrx/Single.2;"
    .local p1, "o":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    iget-object v2, p0, Lc8/Bmq;->val$lift:Lc8/Tlq;

    invoke-static {v2}, Lc8/WAq;->onSingleLift(Lc8/Tlq;)Lc8/Tlq;

    move-result-object v2

    invoke-interface {v2, p1}, Lc8/Tlq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Omq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .local v1, "st":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :try_start_1
    invoke-virtual {v1}, Lc8/Omq;->onStart()V

    .line 171
    iget-object v2, p0, Lc8/Bmq;->this$0:Lc8/Mmq;

    iget-object v2, v2, Lc8/Mmq;->onSubscribe:Lc8/Rlq;

    invoke-interface {v2, v1}, Lc8/Rlq;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    .end local v1    # "st":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :goto_0
    return-void

    .line 172
    .restart local v1    # "st":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0, v1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "st":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :catch_1
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 163
    .local p0, "this":Lc8/Bmq;, "Lrx/Single.2;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Bmq;->call(Lc8/Omq;)V

    return-void
.end method
