.class public Lc8/Nwq;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Owq;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Owq;


# direct methods
.method constructor <init>(Lc8/Owq;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lc8/Nwq;->this$0:Lc8/Owq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc8/Nwq;->this$0:Lc8/Owq;

    invoke-virtual {v0}, Lc8/Owq;->evictExpiredWorkers()V

    .line 76
    return-void
.end method
