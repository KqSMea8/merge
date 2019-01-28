.class public Lc8/zlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Alq;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lc8/Alq;

.field final synthetic val$w:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/Alq;Lc8/Zlq;)V
    .locals 0

    .prologue
    .line 2346
    iput-object p1, p0, Lc8/zlq;->this$3:Lc8/Alq;

    iput-object p2, p0, Lc8/zlq;->val$w:Lc8/Zlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 2350
    :try_start_0
    iget-object v0, p0, Lc8/zlq;->this$3:Lc8/Alq;

    iget-object v0, v0, Lc8/Alq;->val$d:Lc8/Pmq;

    invoke-interface {v0}, Lc8/Pmq;->unsubscribe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2352
    iget-object v0, p0, Lc8/zlq;->val$w:Lc8/Zlq;

    invoke-virtual {v0}, Lc8/Zlq;->unsubscribe()V

    .line 2353
    return-void

    .line 2352
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/zlq;->val$w:Lc8/Zlq;

    invoke-virtual {v1}, Lc8/Zlq;->unsubscribe()V

    throw v0
.end method
