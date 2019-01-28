.class public Lc8/jmf;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TBThreadFactory"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lc8/kmf;


# direct methods
.method constructor <init>(Lc8/kmf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lc8/jmf;->b:Lc8/kmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lc8/jmf;->a:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lc8/jmf;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 60
    return-object v0
.end method
