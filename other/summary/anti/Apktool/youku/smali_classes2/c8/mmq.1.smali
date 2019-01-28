.class public Lc8/mmq;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nmq;->call(Lc8/Nmq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/nmq;

.field final synthetic val$t:Lc8/Nmq;

.field final synthetic val$w:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/nmq;Lc8/Nmq;Lc8/Zlq;)V
    .locals 0

    .prologue
    .line 1923
    .local p0, "this":Lc8/mmq;, "Lrx/Single$19.1;"
    iput-object p1, p0, Lc8/mmq;->this$1:Lc8/nmq;

    iput-object p2, p0, Lc8/mmq;->val$t:Lc8/Nmq;

    iput-object p3, p0, Lc8/mmq;->val$w:Lc8/Zlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 1926
    .local p0, "this":Lc8/mmq;, "Lrx/Single$19.1;"
    new-instance v0, Lc8/lmq;

    invoke-direct {v0, p0}, Lc8/lmq;-><init>(Lc8/mmq;)V

    .line 1946
    .local v0, "ssub":Lc8/Nmq;, "Lrx/SingleSubscriber<TT;>;"
    iget-object v1, p0, Lc8/mmq;->val$t:Lc8/Nmq;

    invoke-virtual {v1, v0}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 1948
    iget-object v1, p0, Lc8/mmq;->this$1:Lc8/nmq;

    iget-object v1, v1, Lc8/nmq;->this$0:Lc8/Mmq;

    invoke-virtual {v1, v0}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    .line 1949
    return-void
.end method
