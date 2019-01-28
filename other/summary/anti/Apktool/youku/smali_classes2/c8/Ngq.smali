.class public Lc8/Ngq;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ogq;->defaultHttpExecutor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ogq;


# direct methods
.method constructor <init>(Lc8/Ogq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ogq;

    .prologue
    .line 137
    iput-object p1, p0, Lc8/Ngq;->this$0:Lc8/Ogq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/Mgq;

    invoke-direct {v1, p0, p1}, Lc8/Mgq;-><init>(Lc8/Ngq;Ljava/lang/Runnable;)V

    const-string/jumbo v2, "Retrofit-Idle"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
